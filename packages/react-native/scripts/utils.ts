import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import pc from 'picocolors'
import { IconStyle } from '../src/lib/types'

// Determine the directory of the current file
const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)

// Paths for svgs, definitions, client-side and server-side renderings, and index
export const SVGS_PATH = path.join(__dirname, '../../core/svgs')
export const ICONS_PATH = path.join(__dirname, '../src/icons')
export const INDEX_PATH = path.join(__dirname, '../src/index.ts')

export type WeightType = IconStyle
// Define supported icon styles (weights)
export const WEIGHTS: WeightType[] = [
    IconStyle.BROKEN,
    IconStyle.LINE_DUOTONE,
    IconStyle.LINEAR,
    IconStyle.OUTLINE,
    IconStyle.BOLD,
    IconStyle.BOLD_DUOTONE,
] as const

// Type definition for svgs where each icon is mapped to its styles and associated data
export type SvgMap = Record<
    string, // Category
    Record<
        string, // Style
        Record<
            string, // Icon name
            { preview: string; jsx: string; svgElements: Set<string> }
        >
    >
>

/**
 * Reads SVG files from the disk and maps them to their respective categories, styles, and associated data.
 *
 * This function iterates over each category directory within the SVGS_PATH, then over each style directory within each category.
 * It validates the style folder names, and reads SVG files within each directory. It extracts icon names and generates preview
 * and JSX versions of each SVG file, storing the data in a SvgMap.
 * @returns A map where each icon is mapped to its categories, styles, and associated data.
 * Exits the process if an invalid folder name is encountered.
 */
export function readSvgsFromDisk(): SvgMap {
    const categories = fs.readdirSync(SVGS_PATH, 'utf-8')

    const icons: SvgMap = {}

    // Iterate over each category folder within the svgs directory
    for (const category of categories) {
        const categoryDir = path.join(SVGS_PATH, category)

        if (!fs.lstatSync(categoryDir).isDirectory()) continue

        // Initialize the category if it doesn't exist in the map
        if (!icons[category]) {
            icons[category] = {}
        }

        // Iterate over each style (weight) folder within the category directory
        const styles = fs.readdirSync(categoryDir, 'utf-8')
        for (const style of styles) {
            const styleDir = path.join(categoryDir, style)

            if (!fs.lstatSync(styleDir).isDirectory()) continue

            // Validate that the folder name matches a valid icon weight
            if (!WEIGHTS.includes(style as (typeof WEIGHTS)[number])) {
                console.error(`${pc.inverse(pc.red(' ERR '))} Bad folder name ${style}`)
                process.exit(1)
            }

            // Initialize the style if it doesn't exist in the category
            if (!icons[category][style]) {
                icons[category][style] = {}
            }

            // Read each SVG file within the style folder
            const files = fs.readdirSync(styleDir)
            for (const filename of files) {
                if (!filename.endsWith('.svg')) continue

                // Extract the icon name from the filename (since the style is no longer in the filename)
                const name = filename.replace('.svg', '')

                // Read the SVG file and generate preview and JSX versions
                const filepath = path.join(styleDir, filename)
                const file = fs.readFileSync(filepath, 'utf-8')

                const { jsx, svgElements } = transformJSX(file)

                // Store the icon data under its name for the specific category and style
                icons[category][style][name] = {
                    preview: generatePreview(file),
                    jsx,
                    svgElements,
                }
            }
        }
    }

    return icons
}

/**
 * Generates a base64-encoded preview image of the SVG with a fixed size and white background.
 *
 * This function takes the contents of an SVG file, modifies the `<svg>` tag to set a specific
 * width, height, and viewBox, and adds a white rectangle as background. The modified SVG
 * content is then encoded to a base64 string.
 * @param contents - The SVG string to generate a preview for.
 * @returns The base64-encoded string representation of the modified SVG.
 */
function generatePreview(contents: string) {
    const preview = contents.replace(
        /<svg.*?>/g,
        `<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"><rect width="24" height="24" fill="#FFF" />`
    )
    return Buffer.from(preview).toString('base64')
}

/**
 * Takes an SVG string and transforms it into a string of JSX for React Native
 * that can be used to render the icon in a React Native component.
 *
 * Specifically, this function:
 * 1. Removes the XML declaration if it exists.
 * 2. Removes the opening and closing `<svg>` tags.
 * 3. Removes any empty `<rect>` elements.
 * 4. Removes `<title>` tags.
 * 5. Replaces hardcoded colors with `currentColor`.
 * 6. Converts HTML SVG elements to React Native SVG components (capitalized).
 * 7. Replaces camelCase attributes with kebab-case attributes.
 * @param contents The SVG string to transform.
 * @returns The transformed JSX string and set of SVG elements used.
 */
function transformJSX(contents: string): { jsx: string; svgElements: Set<string> } {
    const svgElements = new Set<string>()

    let transformed = contents
        .replace(/^.*<\?xml.*?\>/g, '') // Remove XML declaration
        .replace(/<svg.*?>/g, '') // Remove opening <svg> tag
        .replace(/<\/svg>/g, '') // Remove closing </svg> tag
        .replace(/<rect width="24[\d,.]+\" height="24[\d,.]+\" fill="none".*?\/>/g, '') // Remove any empty <rect> elements
        .replace(/<title.*?<\/title>/g, '') // Remove <title> tags
        .replace(/"#[0-9a-f]{6}"/gi, '"currentColor"') // Replace hardcoded colors with currentColor
        .replace(/fill-rule/g, 'fillRule')
        .replace(/clip-rule/g, 'clipRule')
        .replace(/clip-path/g, 'clipPath')
        .replace(/stroke-linecap/g, 'strokeLinecap')
        .replace(/stroke-linejoin/g, 'strokeLinejoin')
        .replace(/stroke-width/g, 'strokeWidth')
        .replace(/stroke-miterlimit/g, 'strokeMiterlimit')
        .replace(/stroke-dasharray/g, 'strokeDasharray')

    // Convert HTML SVG elements to React Native SVG components
    // Track which elements are used for imports
    const elementMap: Record<string, string> = {
        path: 'Path',
        g: 'G',
        circle: 'Circle',
        rect: 'Rect',
        line: 'Line',
        polyline: 'Polyline',
        polygon: 'Polygon',
        ellipse: 'Ellipse',
        defs: 'Defs',
        clipPath: 'ClipPath',
        linearGradient: 'LinearGradient',
        radialGradient: 'RadialGradient',
        stop: 'Stop',
        mask: 'Mask',
    }

    for (const [htmlElement, rnElement] of Object.entries(elementMap)) {
        const openTagRegex = new RegExp(`<${htmlElement}([\\s>])`, 'g')
        const closeTagRegex = new RegExp(`</${htmlElement}>`, 'g')

        if (openTagRegex.test(transformed) || closeTagRegex.test(transformed)) {
            svgElements.add(rnElement)
            // Reset regex lastIndex
            openTagRegex.lastIndex = 0
            closeTagRegex.lastIndex = 0
            // Replace tags
            transformed = transformed
                .replace(openTagRegex, `<${rnElement}$1`)
                .replace(closeTagRegex, `</${rnElement}>`)
        }
    }

    return { jsx: transformed, svgElements }
}

/**
 * Verify that all icons in the provided SvgMap contain all the required weights for each category.
 * @param icons The SvgMap to verify.
 * @returns True if all icons are valid, otherwise false.
 */
export function verifyIcons(icons: SvgMap): boolean {
    let fails = 0

    // Iterate over each category in the SvgMap
    Object.entries(icons).forEach(([category, styles]) => {
        // Iterate over each style (weight) within the category
        Object.entries(styles).forEach(([_, iconsInStyle]) => {
            Object.entries(iconsInStyle).forEach(([name, _]) => {
                const weightsPresent = Object.keys(icons[category]!)

                if (
                    !(
                        weightsPresent.length === WEIGHTS.length &&
                        weightsPresent.every(
                            w => WEIGHTS.includes(w as WeightType) && !!icons[category]?.[w]
                        )
                    )
                ) {
                    fails++

                    console.error(
                        `${pc.inverse(pc.green(' FAIL '))} ${name} in category "${category}" is missing weights`
                    )
                    console.group()
                    console.error(
                        'Missing weights:',
                        WEIGHTS.filter(w => !weightsPresent.includes(w))
                    )
                    console.groupEnd()
                }
            })
        })
    })

    // Return true if all icons are valid, otherwise false
    return fails === 0
}

/**
 * Converts a string from kebab case to PascalCase.
 * @example
 * toPascalCase('string-with-dashes') // 'StringWithDashes'
 * @param str - The string to convert.
 * @returns The PascalCase representation of the string.
 */
export function toPascalCase(str: string): string {
    return str
        .split('-')
        .map(substr => substr.replace(/^\w/, c => c.toUpperCase()))
        .join('')
}
