#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

/**
 * Dictionary of icon name corrections (typos from Figma source)
 */
// cspell:disable - These are intentional typos that map to corrections
const ICON_RENAMES: Record<string, string> = {
    Magnifer: 'Magnifier',
    Infinity: 'Infinite',
    Condicioner: 'Conditioner',
    Siderbar: 'Sidebar',
    Plaaylist: 'Playlist',
    Pallete: 'Palette',
    Tuneing: 'Tuning',
    Minimlistic: 'Minimalistic',
    Spedometer: 'Speedometer',
    Happly: 'Happy',
    Clound: 'Cloud',
    Recive: 'Receive',
}
// cspell:enable

import type { SvgMap } from './utils'
import {
    ICONS_PATH,
    INDEX_PATH,
    nodesToTemplate,
    readSvgsFromDisk,
    toPascalCase,
    verifyIcons,
} from './utils'

// --- Types ---

interface Icon {
    category: string
    style: string
    name: string // kebab-case (e.g. arrow-left)
    pascalName: string // PascalCase (e.g. ArrowLeft)
    globalName: string // Disambiguated Name (e.g. ArrowLeftBold)
    preview: string // base64 preview
    template: string // Angular template string
}

interface FileDefinition {
    path: string
    content: string
}

// --- Helpers ---

/**
 * Applies name corrections to a string based on the ICON_RENAMES dictionary.
 */
function applyCorrections(name: string): string {
    let corrected = name;
    
    // Standard renames
    for (const [typo, correction] of Object.entries(ICON_RENAMES)) {
        const regex = new RegExp(typo, 'gi');
        corrected = corrected.replace(regex, correction);
    }
    
    // Special case for 'Horizonta' -> 'Horizontal' (only if not already followed by 'l')
    corrected = corrected.replace(/Horizonta(?!l)/gi, 'Horizontal');
    
    return corrected;
}

/**
 * Flattens the nested SvgMap into a list of Icon objects.
 * Applies name corrections early to avoid publishing typos.
 */
function getIcons(map: SvgMap): Icon[] {
    const icons: Icon[] = []
    for (const [category, styles] of Object.entries(map)) {
        for (const [style, names] of Object.entries(styles)) {
            for (const [name, data] of Object.entries(names)) {
                // Apply corrections to the icon name (kebab-case)
                const correctedName = applyCorrections(name);
                
                // Parse the node string back to IconNode array to generate template
                const nodeArray = eval(data.node) // Safe since we generated this ourselves
                const template = nodesToTemplate(nodeArray)

                icons.push({
                    category,
                    style,
                    name: correctedName,
                    pascalName: toPascalCase(correctedName),
                    globalName: toPascalCase(`${correctedName}-${style}`),
                    preview: data.preview,
                    template,
                })
            }
        }
    }
    return icons
}

/**
 * Utility to group icons by a specific key.
 */
function groupBy<T>(array: T[], keySelector: (item: T) => string): Record<string, T[]> {
    return array.reduce(
        (acc, item) => {
            const key = keySelector(item)
            if (!acc[key]) acc[key] = []
            acc[key].push(item)
            return acc
        },
        {} as Record<string, T[]>
    )
}

// --- Generators ---

const Generators = {
    component: (icon: Icon): FileDefinition => {
        const content = `/* GENERATED FILE */
import {
    ChangeDetectionStrategy,
    Component,
    ViewEncapsulation,
} from '@angular/core';
import { IconBase } from '../../../lib/icon-base';

/**
 * ![img](data:image/svg+xml;base64,${icon.preview})
 *
 * @usage
 * \`<svg solar${icon.globalName}></svg>\`
 *
 * @component ${icon.globalName}
 * @style ${icon.style}
 * @category ${icon.category}
 */
@Component({
    selector: 'svg[solar${icon.globalName}]',
    template: \`@if (alt(); as title) { <title>{{ title }}</title> }${icon.template}\`,
    standalone: true,
    encapsulation: ViewEncapsulation.None,
    changeDetection: ChangeDetectionStrategy.OnPush,
})
export class ${icon.globalName} extends IconBase {}
`
        return {
            path: path.join(ICONS_PATH, icon.category, icon.style, `${icon.globalName}.ts`),
            content,
        }
    },

    /**
     * Generates the index.ts for a category.
     */
    categoryIndex: (category: string, icons: Icon[], folderPath: string): FileDefinition => {
        const exports = icons
            .map(
                icon =>
                    `export { ${icon.globalName} } from './${icon.style}/${icon.globalName}';`
            )
            .sort()
            .join('\n')

        return {
            path: path.join(folderPath, 'index.ts'),
            content: `${exports}\n`,
        }
    },

    /**
     * Generates the root index.ts.
     */
    rootIndex: (categories: string[]): FileDefinition => {
        const exports = categories
            .map(category => `export * from './${category}';`)
            .sort()
            .join('\n')

        return {
            path: path.join(ICONS_PATH, 'index.ts'),
            content: `${exports}\n`,
        }
    },

    /**
     * Generates a union type of all icon names for autocompletion.
     */
    iconNamesType: (icons: Icon[]): FileDefinition => {
        const names = icons.map(i => `'${i.globalName}'`).sort().join(' | ');
        const content = `/* GENERATED FILE */
/**
 * Union of all available icon names for the dynamic SolarIcon component.
 * Provides IDE autocompletion without importing the actual components.
 */
export type SolarIconName = ${names};
`;
        return {
            path: path.join(path.dirname(INDEX_PATH), 'lib', 'all-icons.types.ts'),
            content,
        };
    },

    mainEntry: (): FileDefinition => {
        const content = `/* GENERATED FILE */
export * from './lib';
export * from './icons';
`
        return {
            path: INDEX_PATH,
            content,
        }
    },
}

// --- Stages ---

function clean() {
    const pathsToClean = [ICONS_PATH, INDEX_PATH]
    pathsToClean.forEach(p => {
        if (fs.existsSync(p)) {
            fs.rmSync(p, { recursive: true, force: true })
            console.log(pc.blue(`Removed ${p}`))
        }
    })
}

function generate(icons: Icon[]) {
    const files: FileDefinition[] = []

    const byCategory = groupBy(icons, i => i.category)

    for (const [category, catIcons] of Object.entries(byCategory)) {
        const byStyle = groupBy(catIcons, i => i.style)

        for (const [style, styleIcons] of Object.entries(byStyle)) {
            styleIcons.forEach(icon => {
                files.push(Generators.component(icon))
            })
        }

        const categoryPath = path.join(ICONS_PATH, category)
        files.push(Generators.categoryIndex(category, catIcons, categoryPath))
    }

    const categories = Object.keys(byCategory)
    files.push(Generators.rootIndex(categories))
    files.push(Generators.iconNamesType(icons))
    files.push(Generators.mainEntry())

    return files
}

function writeFiles(files: FileDefinition[]) {
    files.forEach(file => {
        fs.mkdirSync(path.dirname(file.path), { recursive: true })
        fs.writeFileSync(file.path, file.content, { flag: 'w' })
    })
    console.log(pc.green(`Successfully generated ${files.length} files.`))
}

// --- Main ---

void (async () => {
    try {
        clean()
        const svgMap = readSvgsFromDisk()
        if (!verifyIcons(svgMap)) {
            process.exit(1)
        }
        const icons = getIcons(svgMap)
        const files = generate(icons)
        writeFiles(files)
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
})()
