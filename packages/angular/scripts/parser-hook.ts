import xmldom from '@xmldom/xmldom'
import type { IconContext, ParsedIcon } from '@solar-icons/core'

const DUOTONE_CSS_VARS_HTML =
    'style="color: var(--solar-duotone-color, currentColor); opacity: var(--solar-duotone-opacity, 0.5)"'

function applyDuotoneStyle(accent: string | null): string | null {
    if (!accent) return null
    let groupDepth = 0
    return accent
        .replace(/\s+opacity="0\.5"/g, '')
        .split('\n')
        .map(line => {
            const trimmed = line.trim()
            if (!trimmed) return line
            if (trimmed.startsWith('</')) {
                if (trimmed.startsWith('</g')) groupDepth--
                return line
            }
            if (groupDepth > 0) return line
            if (trimmed.startsWith('<g')) groupDepth++
            if (trimmed.endsWith('/>')) {
                return trimmed.slice(0, -2) + ` ${DUOTONE_CSS_VARS_HTML}/>`
            }
            return trimmed.replace('>', ` ${DUOTONE_CSS_VARS_HTML}>`)
        })
        .join('\n')
}

export interface FileDefinition {
    path: string
    content: string
}

type IconNode = readonly [string, Record<string, string | number>, IconNode[]?]

function toPascalCase(str: string): string {
    return str
        .split('-')
        .map(s => s.replace(/^\w/, c => c.toUpperCase()))
        .join('')
}

function nodeToTemplate(node: IconNode): string {
    const [tagName, attributes, children] = node
    const attrsStr = Object.entries(attributes)
        .map(([key, value]) => `${key}="${String(value)}"`)
        .join(' ')
    const openTag = attrsStr ? `<svg:${tagName} ${attrsStr}>` : `<svg:${tagName}>`
    const innerContent =
        children && children.length > 0 ? children.map(nodeToTemplate).join('') : ''
    return `${openTag}${innerContent}</svg:${tagName}>`
}

function nodesToTemplate(nodes: IconNode[]): string {
    return nodes.map(nodeToTemplate).join('')
}

function elementToIconNode(element: any, stripDefaultStroke: boolean): IconNode | null {
    const tagName = element.tagName
    const attrs: Record<string, string> = {}
    if (element.attributes) {
        for (const attr of Array.from(element.attributes) as any[]) {
            if (stripDefaultStroke && attr.name === 'stroke-width' && attr.value === '1.5') continue
            attrs[attr.name] = attr.value
        }
    }
    const children: IconNode[] = []
    for (const child of Array.from(element.childNodes) as any[]) {
        if (child.nodeType === 1) {
            const childNode = elementToIconNode(child, false)
            if (childNode) children.push(childNode)
        }
    }
    if (children.length > 0) {
        return [tagName, attrs, children]
    }
    return [tagName, attrs]
}

function iconToTemplate(inner: string, duotoneAccent: string | null): string {
    const body = duotoneAccent ? `${duotoneAccent}\n${inner.trim()}` : inner.trim()
    if (!body) return ''

    const { DOMParser } = xmldom
    const parser = new DOMParser()
    const doc = parser.parseFromString(
        `<svg xmlns="http://www.w3.org/2000/svg">${body}</svg>`,
        'text/xml'
    )
    const svgEl = doc.documentElement
    if (!svgEl || svgEl.tagName === 'parsererror') return ''

    const nodes: IconNode[] = []
    for (const child of Array.from(svgEl.childNodes) as any[]) {
        if (child.nodeType === 1) {
            const node = elementToIconNode(child, true)
            if (node) nodes.push(node)
        }
    }
    return nodesToTemplate(nodes)
}

const WEIGHT_KEBAB: Record<string, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

export function angularComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon
    const globalName = toPascalCase(`${icon.name}-${icon.style}`)
    const duotone = applyDuotoneStyle(icon.duotoneAccentInner)
    const template = iconToTemplate(icon.inner, duotone)

    const content = `/* GENERATED FILE */
import {
    ChangeDetectionStrategy,
    Component,
    ViewEncapsulation,
} from '@angular/core';
import { IconBase } from '../../lib/icon-base';

/**
 * ![img](data:image/svg+xml;base64,${icon.preview})
 *
 * @usage
 * \`<svg solar${globalName}></svg>\`
 *
 * @component ${globalName}
 * @style ${icon.style}
 */
@Component({
    selector: 'svg[solar${globalName}Icon]',
    template: \`@if (alt(); as title) { <title>{{ title }}</title> }${template}\`,
    standalone: true,
    encapsulation: ViewEncapsulation.None,
    changeDetection: ChangeDetectionStrategy.OnPush,
    host: {
        'class': 'solar-icon solar-${icon.kebabName}',
    },
})
export class ${globalName}Icon extends IconBase {}
`
    return {
        path: `src/icons/${WEIGHT_KEBAB[icon.style]}/${icon.name}-${WEIGHT_KEBAB[icon.style]}.ts`,
        content,
    }
}
