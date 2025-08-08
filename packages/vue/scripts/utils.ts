import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import pc from 'picocolors'

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)

export const SVGS_PATH = path.join(__dirname, '../../core/svgs')
export const ICONS_PATH = path.join(__dirname, '../src/icons')

export const WEIGHTS = [
    'Broken',
    'LineDuotone',
    'Linear',
    'Outline',
    'Bold',
    'BoldDuotone',
] as const

export type IconWeight = (typeof WEIGHTS)[number]

type SVGNodeFlat = [string, Record<string, any>]
type SVGNodeWithChildren = [string, Record<string, any>, SVGNodeFlat[]]
type SVGNode = SVGNodeFlat | SVGNodeWithChildren

export interface IconData {
    preview: string
    iconNodes: SVGNode[]
}

export interface IconByStyle {
    [style: string]: IconData
}

export interface IconsByName {
    [iconName: string]: IconByStyle
}

export interface IconsByCategory {
    [category: string]: IconsByName
}

export interface StyleIcons {
    [iconName: string]: IconData
}

export interface CategoryStyles {
    [style: string]: StyleIcons
}

export interface SvgMap {
    [category: string]: CategoryStyles
}

export interface SvgByName {
    [category: string]: IconsByName
}

export interface IconStyleData {
    preview: string
    iconNodes: SVGNode[]
}

/**
 * Parses SVG content and extracts icon nodes.
 * @param svgContent - The SVG content to parse
 * @returns An array of SVG nodes
 */
function parseIconNodes(svgContent: string): SVGNode[] {
    const nodes: SVGNode[] = []

    const cleanContent = svgContent
        .replace(/^.*<\?xml.*\?>/g, '')
        .replace(/<svg[^>]*>/g, '')
        .replace(/<\/svg>/g, '')
        .replace(/<rect width="24[\d,.]+" height="24[\d,.]+" fill="none".*?\/>/g, '')
        .replace(/<title>.*?<\/title>/g, '')
        .trim()

    function parseAttributes(attributesStr: string): Record<string, any> {
        const attributes: Record<string, any> = {}
        const attrRegex = /(\w+(?:-\w+)*)=["']([^"']*)["']/g
        let attrMatch
        while ((attrMatch = attrRegex.exec(attributesStr)) !== null) {
            let value: any = attrMatch[2]
            if (attrMatch[1] === 'fill' || attrMatch[1] === 'stroke') {
                value = value.replace(/#[0-9a-f]{6}/gi, 'currentColor')
            }
            attributes[attrMatch[1] as string] = value
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
            if (nextCloseIndex === -1) {
                return -1
            }
            if (nextOpenIndex !== -1 && nextOpenIndex < nextCloseIndex) {
                const charAfterTag = content.charAt(nextOpenIndex + openTag.length)
                if (charAfterTag === ' ' || charAfterTag === '>' || charAfterTag === '/') {
                    depth++
                }
                searchIndex = nextOpenIndex + openTag.length
            } else {
                depth--
                if (depth === 0) {
                    return nextCloseIndex
                }
                searchIndex = nextCloseIndex + closeTag.length
            }
        }
        return -1
    }

    function parseElement(
        content: string,
        startIndex: number = 0
    ): { node: SVGNode | null; nextIndex: number } {
        // eslint-disable-next-line regexp/no-super-linear-backtracking
        const elementRegex = /<(\w+)([^>]*?)(\/>|>)/g
        elementRegex.lastIndex = startIndex
        const match = elementRegex.exec(content)
        if (!match) {
            return { node: null, nextIndex: content.length }
        }
        const tagName = match[1]
        const attributesStr = match[2]
        const isAutoClosing = match[3] === '/>'
        const tagEndIndex = elementRegex.lastIndex

        const attributes = parseAttributes(attributesStr)

        if (isAutoClosing) {
            return {
                node: [tagName, attributes],
                nextIndex: tagEndIndex,
            }
        }

        const closeTagIndex = findMatchingCloseTag(content, tagName, tagEndIndex)

        if (closeTagIndex === -1) {
            return {
                node: [tagName, attributes],
                nextIndex: tagEndIndex,
            }
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
                    if (nextElementIndex === -1) {
                        break
                    }
                    childIndex = nextElementIndex
                }
            }
            if (children.length > 0) {
                return {
                    node: [tagName, attributes, children] as SVGNodeWithChildren,
                    nextIndex: closeTagIndex + `</${tagName}>`.length,
                }
            }
        }
        return {
            node: [tagName, attributes],
            nextIndex: closeTagIndex + `</${tagName}>`.length,
        }
    }

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
            if (nextElementIndex === -1) {
                break
            }
            currentIndex = nextElementIndex
        }
    }
    return nodes
}

/**
 * Reads SVG files from the disk and maps them to their respective categories, styles, and associated data.
 * @returns A map of SVG icons organized by category and style
 */
export function readSvgsFromDisk(): SvgMap {
    const categories = fs.readdirSync(SVGS_PATH, 'utf-8')
    const icons: SvgMap = {}
    for (const category of categories) {
        const categoryDir = path.join(SVGS_PATH, category)
        if (!isDirectory(categoryDir)) continue
        icons[category] = {}
        const styles = fs.readdirSync(categoryDir, 'utf-8')
        for (const style of styles) {
            const styleDir = path.join(categoryDir, style)
            if (!isDirectory(styleDir)) continue
            validateStyleName(style)
            const weight = style as IconWeight
            icons[category][weight] = {}
            const files = fs.readdirSync(styleDir)
            for (const filename of files) {
                if (!isSvgFile(filename)) continue
                const iconName = getIconName(filename)
                const filepath = path.join(styleDir, filename)
                const fileContent = fs.readFileSync(filepath, 'utf-8')
                icons[category][weight][iconName] = {
                    preview: generatePreview(fileContent),
                    iconNodes: parseIconNodes(fileContent),
                }
            }
        }
    }
    return icons
}

function isDirectory(path: string): boolean {
    try {
        return fs.lstatSync(path).isDirectory()
    } catch {
        return false
    }
}

function isSvgFile(filename: string): boolean {
    return filename.endsWith('.svg')
}

function getIconName(filename: string): string {
    return filename.replace('.svg', '')
}

/**
 * Validates the style name against the supported weights.
 * @param style - The style name to validate
 * @throws Will exit the process if the style name is invalid
 */
function validateStyleName(style: string): void {
    if (!WEIGHTS.includes(style as IconWeight)) {
        console.error(`${pc.inverse(pc.red(' ERR '))} Bad folder name ${style}`)
        process.exit(1)
    }
}

/**
 * Generates a preview of the SVG content.
 * @param contents - The SVG content to generate a preview for
 * @returns A base64 encoded string of the preview
 */
function generatePreview(contents: string): string {
    const preview = contents.replace(
        /<svg.*?>/g,
        `<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"><rect width="24" height="24" fill="#FFF" />`
    )
    return Buffer.from(preview).toString('base64')
}

/**
 * Converts a string to PascalCase.
 * @param str - The string to convert
 * @returns The PascalCase version of the string
 */
export function toPascalCase(str: string): string {
    const trimmed = str.replace(/[-\s]+$/, '')
    return trimmed.replace(/(^|-|\s+)(\w)/g, (_, __, c) => c.toUpperCase())
}
