import type { ParsedIconGroup, IconContext, ParsedIcon } from '../../core/src/parser.ts'
import type { IconWeight } from '../../core/src/types.ts'

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

type SVGNode = [string, Record<string, any>] | [string, Record<string, any>, SVGNode[]]

function parseIconNodes(svgContent: string): SVGNode[] {
    const cleanContent = svgContent.trim()
    if (!cleanContent) return []

    function parseAttributes(attributesStr: string): Record<string, any> {
        const attributes: Record<string, any> = {}
        const attrRegex = /(\w+(?:-\w+)*)=["']([^"']*)["']/g
        let attrMatch
        while ((attrMatch = attrRegex.exec(attributesStr)) !== null) {
            const name = attrMatch[1]!
            let value: any = attrMatch[2]
            if (name === 'fill' || name === 'stroke') {
                value = value.replace(/#[0-9a-f]{6}/gi, 'currentColor')
            }
            if (name === 'stroke-width' && value === '1.5') {
                continue
            }
            attributes[name] = value
        }
        return attributes
    }

    function findMatchingCloseTag(content: string, tagName: string, startIndex: number): number {
        const openTag = `<${tagName}`
        const closeTag = `</${tagName}>`
        let depth = 1
        let searchIndex = startIndex
        while (depth > 0 && searchIndex < content.length) {
            const nextOpenIndex = content.indexOf(openTag, searchIndex)
            const nextCloseIndex = content.indexOf(closeTag, searchIndex)
            if (nextCloseIndex === -1) return -1
            if (nextOpenIndex !== -1 && nextOpenIndex < nextCloseIndex) {
                const charAfterTag = content.charAt(nextOpenIndex + openTag.length)
                if (charAfterTag === ' ' || charAfterTag === '>' || charAfterTag === '/') {
                    depth++
                }
                searchIndex = nextOpenIndex + openTag.length
            } else {
                depth--
                if (depth === 0) return nextCloseIndex
                searchIndex = nextCloseIndex + closeTag.length
            }
        }
        return -1
    }

    function parseElement(
        content: string,
        startIndex = 0
    ): { node: SVGNode | null; nextIndex: number } {
        const elementRegex = /<(\w+)([^>]*?)(\/>|>)/g
        elementRegex.lastIndex = startIndex
        const match = elementRegex.exec(content)
        if (!match) return { node: null, nextIndex: content.length }

        const tagName = match[1]!
        const attributesStr = match[2]!
        const isAutoClosing = match[3] === '/>'
        const tagEndIndex = elementRegex.lastIndex

        const attributes = parseAttributes(attributesStr)

        if (isAutoClosing) {
            return { node: [tagName, attributes], nextIndex: tagEndIndex }
        }

        const closeTagIndex = findMatchingCloseTag(content, tagName, tagEndIndex)
        if (closeTagIndex === -1) {
            return { node: [tagName, attributes], nextIndex: tagEndIndex }
        }

        const innerContent = content.slice(tagEndIndex, closeTagIndex)
        if (innerContent.trim()) {
            const children: SVGNode[] = []
            let childIndex = 0
            while (childIndex < innerContent.length) {
                const { node: childNode, nextIndex } = parseElement(innerContent, childIndex)
                if (childNode) {
                    children.push(childNode)
                    childIndex = nextIndex
                } else {
                    const nextElementIndex = innerContent.indexOf('<', childIndex)
                    if (nextElementIndex === -1) break
                    childIndex = nextElementIndex
                }
            }
            if (children.length > 0) {
                return {
                    node: [tagName, attributes, children] as SVGNode,
                    nextIndex: closeTagIndex + `</${tagName}>`.length,
                }
            }
        }
        return {
            node: [tagName, attributes],
            nextIndex: closeTagIndex + `</${tagName}>`.length,
        }
    }

    const nodes: SVGNode[] = []
    let currentIndex = 0
    while (currentIndex < cleanContent.length) {
        const { node, nextIndex } = parseElement(cleanContent, currentIndex)
        if (node) {
            const [tagName] = node
            if (!['defs', 'title'].includes(tagName)) {
                nodes.push(node)
            }
            currentIndex = nextIndex
        } else {
            const nextElementIndex = cleanContent.indexOf('<', currentIndex)
            if (nextElementIndex === -1) break
            currentIndex = nextElementIndex
        }
    }
    return nodes
}

function getIconNodes(icon: ParsedIcon): SVGNode[] {
    const duotone = applyDuotoneStyle(icon.duotoneAccentInner)
    const body = duotone
        ? `${duotone}\n${icon.inner.trim()}`
        : icon.inner.trim()
    return parseIconNodes(body)
}

export function vueComponentFile(ctx: IconContext<ParsedIconGroup>): FileDefinition {
    const group = ctx.icon
    const iconNodesData: Record<string, SVGNode[]> = {}
    const styleDocs: string[] = []

    for (const [style, icon] of Object.entries(group.styles)) {
        iconNodesData[style] = getIconNodes(icon)
        styleDocs.push(` * ### ![img](data:image/svg+xml;base64,${icon.preview}) ${style}`)
    }

    const content = `import { createSolarIcon } from '../../lib/createSolarIcon'
/**
${styleDocs.join('\n')}
 */
const ${group.pascalName} = createSolarIcon('${group.name}', ${JSON.stringify(iconNodesData, null, 2)})
export default ${group.pascalName}
`
    return {
        path: `src/icons/${group.category}/${group.name}.ts`,
        content,
    }
}
