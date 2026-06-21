import type { ParsedIcon, IconContext } from '../../core/src/parser.ts'

export interface FileDefinition {
    path: string
    content: string
}

const SVG_ATTR_MAP: [RegExp, string][] = [
    [/fill-rule/g, 'fillRule'],
    [/clip-rule/g, 'clipRule'],
    [/clip-path/g, 'clipPath'],
    [/stroke-linecap/g, 'strokeLinecap'],
    [/stroke-linejoin/g, 'strokeLinejoin'],
    [/stroke-width/g, 'strokeWidth'],
    [/stroke-miterlimit/g, 'strokeMiterlimit'],
    [/stroke-dasharray/g, 'strokeDasharray'],
]

function transformSvgAttrs(inner: string): string {
    return SVG_ATTR_MAP.reduce((s, [re, replacement]) => s.replace(re, replacement), inner)
}

const DUOTONE_CSS_VARS_JSX =
    'style={{ color: "var(--solar-duotone-color, currentColor)", opacity: "var(--solar-duotone-opacity, 0.5)" }}'

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
                return trimmed.slice(0, -2) + ` ${DUOTONE_CSS_VARS_JSX}/>`
            }
            return trimmed.replace('>', ` ${DUOTONE_CSS_VARS_JSX}>`)
        })
        .join('\n')
}

export function reactPerfComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon
    const duotone = applyDuotoneStyle(icon.duotoneAccentInner)
    const duotoneConverted = duotone ? transformSvgAttrs(duotone) : null
    const body = duotoneConverted
        ? `${duotoneConverted}\n        ${transformSvgAttrs(icon.inner.trim())}`
        : transformSvgAttrs(icon.inner.trim())
    const content = `/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,${icon.preview})
 */
export const ${icon.pascalName}: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} iconName="${icon.kebabName}">
        ${body}
    </IconBase>
))

${icon.pascalName}.displayName = "${icon.pascalName}"
`
    return {
        path: `src/icons/${icon.category}/${icon.styleKebab}/${icon.name}.tsx`,
        content,
    }
}
