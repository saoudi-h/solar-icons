import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import pc from 'picocolors';

// Determine the directory of the current file
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Paths for svgs, definitions, and index
export const SVGS_PATH = path.join(__dirname, '../../core/svgs');
export const ICONS_PATH = path.join(__dirname, '../src/icons');
export const INDEX_PATH = path.join(__dirname, '../src/public-api.ts');

export type WeightType =
    | 'Bold'
    | 'BoldDuotone'
    | 'Broken'
    | 'LineDuotone'
    | 'Linear'
    | 'Outline';

// Define supported icon styles (weights)
export const WEIGHTS: WeightType[] = [
    'Bold',
    'BoldDuotone',
    'Broken',
    'LineDuotone',
    'Linear',
    'Outline',
] as const;

// Type definition for svgs where each icon is mapped to its styles and associated data
export type SvgMap = Record<
    string, // Category
    Record<
        string, // Style
        Record<
            string, // Icon name
            { preview: string; node: string }
        >
    >
>;

/**
 * Reads SVG files from the disk and maps them to their respective categories, styles, and associated data.
 */
export function readSvgsFromDisk(): SvgMap {
    const categories = fs.readdirSync(SVGS_PATH, 'utf-8');

    const icons: SvgMap = {};

    for (const category of categories) {
        const categoryDir = path.join(SVGS_PATH, category);

        if (!fs.lstatSync(categoryDir).isDirectory()) continue;

        if (!icons[category]) {
            icons[category] = {};
        }

        const styles = fs.readdirSync(categoryDir, 'utf-8');
        for (const style of styles) {
            const styleDir = path.join(categoryDir, style);

            if (!fs.lstatSync(styleDir).isDirectory()) continue;

            if (!WEIGHTS.includes(style as WeightType)) {
                console.error(`${pc.inverse(pc.red(' ERR '))} Bad folder name ${style}`);
                process.exit(1);
            }

            if (!icons[category][style]) {
                icons[category][style] = {};
            }

            const files = fs.readdirSync(styleDir);
            for (const filename of files) {
                if (!filename.endsWith('.svg')) continue;

                const name = filename.replace('.svg', '');

                const filepath = path.join(styleDir, filename);
                const file = fs.readFileSync(filepath, 'utf-8');

                icons[category][style][name] = {
                    preview: generatePreview(file),
                    node: transformToIconNodeString(file),
                };
            }
        }
    }

    return icons;
}

/**
 * Generates a base64-encoded preview image of the SVG.
 */
function generatePreview(contents: string) {
    const preview = contents.replace(
        /<svg.*?>/g,
        `<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"><rect width="24" height="24" fill="#FFF" />`
    );
    return Buffer.from(preview).toString('base64');
}

/**
 * Transforms SVG content to a string format for Angular.
 * Removes XML declaration, svg wrapper tags, empty rect, and title elements.
 * Replaces hardcoded colors with currentColor.
 * Preserves the nested structure of the SVG.
 */
function transformToSvgString(contents: string): string {
    // Remove XML declaration, svg tags, empty rect, and title elements
    let innerContent = contents
        .replace(/^.*<\?xml.*?>/g, '')
        .replace(/<svg[^>]*>/g, '')
        .replace(/<\/svg>/g, '')
        .replace(/<rect width="24[\d,.]+" height="24[\d,.]+" fill="none".*?\/>/g, '')
        .replace(/<title.*?<\/title>/g, '')
        .trim();

    // Replace hardcoded colors with currentColor
    innerContent = innerContent.replace(/#[0-9a-f]{6}/gi, 'currentColor');

    return innerContent;
}

/**
 * Transforms SVG content to IconNode array format as a TypeScript string.
 * Parses the SVG and converts it to nested tuple structure: [tagName, attributes, children?]
 */
function transformToIconNodeString(contents: string): string {
    // First get the cleaned SVG content
    const svgContent = transformToSvgString(contents);
    
    // Parse the SVG using DOMParser (Node.js environment)
    const { DOMParser } = require('@xmldom/xmldom');
    const parser = new DOMParser();
    const doc = parser.parseFromString(
        `<svg xmlns="http://www.w3.org/2000/svg">${svgContent}</svg>`,
        'text/xml'
    );
    
    const svgEl = doc.documentElement;
    if (!svgEl || svgEl.tagName === 'parsererror') {
        console.error('Failed to parse SVG:', svgContent.substring(0, 200));
        return '[]';
    }
    
    // Convert children to IconNode array
    const nodes: string[] = [];
    Array.from(svgEl.childNodes).forEach((child: any) => {
        if (child.nodeType === 1) { // Element node
            const nodeStr = elementToIconNode(child);
            if (nodeStr) {
                nodes.push(nodeStr);
            }
        }
    });
    
    return `[${nodes.join(', ')}]`;
}

/**
 * Converts a DOM element to IconNode tuple string representation.
 * Returns: "[tagName, {attrs}, [children]]" or "[tagName, {attrs}]"
 */
function elementToIconNode(element: any): string | null {
    const tagName = element.tagName;
    
    // Build attributes object
    const attrs: Record<string, string> = {};
    if (element.attributes) {
        Array.from(element.attributes).forEach((attr: any) => {
            attrs[attr.name] = attr.value;
        });
    }
    
    // Convert attributes to string representation
    const attrsStr = Object.entries(attrs)
        .map(([key, value]) => {
            // Escape special characters in attribute values
            const escapedValue = value
                .replace(/\\/g, '\\\\')
                .replace(/"/g, '\\"')
                .replace(/\n/g, '\\n');
            return `'${key}': '${escapedValue}'`;
        })
        .join(', ');
    
    // Process children
    const children: string[] = [];
    Array.from(element.childNodes).forEach((child: any) => {
        if (child.nodeType === 1) { // Element node
            const childStr = elementToIconNode(child);
            if (childStr) {
                children.push(childStr);
            }
        }
    });
    
    // Build the tuple string
    if (children.length > 0) {
        return `['${tagName}', {${attrsStr}}, [${children.join(', ')}]]`;
    } else {
        return `['${tagName}', {${attrsStr}}]`;
    }
}

/**
 * Verify that all icons in the provided SvgMap contain all the required weights.
 */
export function verifyIcons(icons: SvgMap): boolean {
    let fails = 0;

    Object.entries(icons).forEach(([category, styles]) => {
        Object.entries(styles).forEach(([_style, iconsInStyle]) => {
            Object.entries(iconsInStyle).forEach(([name, _]) => {
                const weightsPresent = Object.keys(icons[category]!);

                if (
                    !(
                        weightsPresent.length === WEIGHTS.length &&
                        weightsPresent.every(
                            (w) => WEIGHTS.includes(w as WeightType) && !!icons[category]?.[w]
                        )
                    )
                ) {
                    fails++;

                    console.error(
                        `${pc.inverse(pc.green(' FAIL '))} ${name} in category "${category}" is missing weights`
                    );
                    console.group();
                    console.error(
                        'Missing weights:',
                        WEIGHTS.filter((w) => !weightsPresent.includes(w))
                    );
                    console.groupEnd();
                }
            });
        });
    });

    return fails === 0;
}

/**
 * Converts a string from kebab case to PascalCase.
 */
export function toPascalCase(str: string): string {
    return str
        .split('-')
        .map((substr) => substr.replace(/^\w/, (c) => c.toUpperCase()))
        .join('');
}

/**
 * Converts IconNode array to Angular template string.
 * This generates the compiled template that Angular will use at runtime.
 * 
 * The title element is NOT included here - it's managed by SolarTitleDirective.
 * 
 * @param nodes - Array of IconNode tuples
 * @returns HTML template string with svg: namespace prefix
 */
export function nodesToTemplate(nodes: IconNode[]): string {
    return nodes.map(nodeToTemplate).join('');
}

/**
 * Converts a single IconNode to template string recursively.
 * IconNode format: [tagName, attributes, children?]
 */
function nodeToTemplate(node: IconNode): string {
    const [tagName, attributes, children] = node;
    
    // Build attributes string - use double quotes for Angular templates
    const attrsStr = Object.entries(attributes)
        .map(([key, value]) => {
            const stringValue = String(value);
            // No escaping needed - Angular handles it
            return `${key}="${stringValue}"`;
        })
        .join(' ');
    
    // Build opening tag with svg: namespace prefix
    const openTag = attrsStr 
        ? `<svg:${tagName} ${attrsStr}>`
        : `<svg:${tagName}>`;
    
    // Process children recursively
    const innerContent = children && children.length > 0
        ? children.map(nodeToTemplate).join('')
        : '';
    
    // Return complete element
    return `${openTag}${innerContent}</svg:${tagName}>`;
}

/**
 * Type definition for IconNode (must match types.ts)
 */
type IconNode = readonly [string, Record<string, string | number>, IconNode[]?];
