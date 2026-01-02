#!/usr/bin/env node
/**
 * Generates the icon-list.ts file from the core package SVGs
 */
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const CORE_SVGS_PATH = path.join(__dirname, '../../../packages/core/svgs');
const OUTPUT_PATH = path.join(__dirname, '../src/lib/icon-list.ts');

function toPascalCase(str: string): string {
    return str
        .split('-')
        .map((s) => s.charAt(0).toUpperCase() + s.slice(1))
        .join('');
}

function generateIconList() {
    const iconNames = new Set<string>();

    // Read all categories
    const categories = fs.readdirSync(CORE_SVGS_PATH);

    for (const category of categories) {
        const categoryPath = path.join(CORE_SVGS_PATH, category);
        if (!fs.statSync(categoryPath).isDirectory()) continue;

        // Read styles in category
        const styles = fs.readdirSync(categoryPath);

        for (const style of styles) {
            const stylePath = path.join(categoryPath, style);
            if (!fs.statSync(stylePath).isDirectory()) continue;

            // Read SVG files - only need one style since names are the same across styles
            if (style === 'Bold') {
                const files = fs.readdirSync(stylePath);
                for (const file of files) {
                    if (file.endsWith('.svg')) {
                        const name = file.replace('.svg', '');
                        iconNames.add(toPascalCase(name));
                    }
                }
            }
        }
    }

    const sortedNames = Array.from(iconNames).sort();

    const content = `// AUTO-GENERATED FILE - DO NOT EDIT
// Generated from @solar-icons/core SVGs
// Total icons: ${sortedNames.length}

export const ALL_ICONS = [
${sortedNames.map((name) => `    '${name}',`).join('\n')}
] as const;

export type IconName = (typeof ALL_ICONS)[number];

export const STYLES = ['Bold', 'Linear', 'BoldDuotone', 'LineDuotone', 'Broken', 'Outline'] as const;
export type IconStyle = (typeof STYLES)[number];
`;

    fs.writeFileSync(OUTPUT_PATH, content);
    console.log(`✅ Generated icon-list.ts with ${sortedNames.length} icons`);
}

generateIconList();
