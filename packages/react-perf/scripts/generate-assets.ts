#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import type { SvgMap } from './utils'
import {
    ICONS_PATH,
    INDEX_PATH,
    readSvgsFromDisk,
    toPascalCase,
    verifyIcons,
    WEIGHTS,
} from './utils'

// --- Types ---

interface Icon {
    category: string
    style: string
    name: string // kebab-case (e.g. arrow-left)
    pascalName: string // PascalCase (e.g. ArrowLeft)
    globalName: string // Disambiguated Name (e.g. ArrowLeftBold)
    jsx: string
    preview: string
}

interface FileDefinition {
    path: string
    content: string
}

// --- Helpers ---

/**
 * Flattens the nested SvgMap into a list of Icon objects for easier processing.
 */
function getIcons(map: SvgMap): Icon[] {
    const icons: Icon[] = []
    for (const [category, styles] of Object.entries(map)) {
        for (const [style, names] of Object.entries(styles)) {
            for (const [name, data] of Object.entries(names)) {
                icons.push({
                    category,
                    style,
                    name,
                    pascalName: toPascalCase(name),
                    globalName: toPascalCase(`${name}-${style}`),
                    jsx: data.jsx,
                    preview: data.preview,
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
    /**
     * Generates the React component for a single icon.
     */
    component: (icon: Icon): FileDefinition => {
        const content = `/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,${icon.preview})
 */
export const ${icon.pascalName}: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        ${icon.jsx.trim()}
    </IconBase>
))

${icon.pascalName}.displayName = "${icon.pascalName}"
`
        return {
            path: path.join(ICONS_PATH, icon.category, icon.style, `${icon.pascalName}.tsx`),
            content,
        }
    },

    /**
     * Generates the index.ts for a specific style (e.g. icons/essentials/bold.ts).
     * Uses named exports instead of `export *`.
     * NOTE: Placed as a sibling to the style folder to support "clean" imports.
     */
    styleIndex: (style: string, icons: Icon[], folderPath: string): FileDefinition => {
        // folderPath is .../category/style
        // We want .../category/style.ts
        const parentDir = path.dirname(folderPath)

        const exports = icons
            .map(icon => `export { ${icon.pascalName} } from './${style}/${icon.pascalName}';`)
            .sort()
            .join('\n')

        return {
            path: path.join(parentDir, `${style}.ts`),
            content: `${exports}\n`,
        }
    },

    /**
     * Generates the styled.ts for a specific style (e.g. icons/essentials/bold/styled.ts).
     * Exports icons with their global unique names.
     */
    styleGlobalIndex: (style: string, icons: Icon[], folderPath: string): FileDefinition => {
        const exports = icons
            .map(
                icon =>
                    `export { ${icon.pascalName} as ${icon.globalName} } from './${icon.pascalName}';`
            )
            .sort()
            .join('\n')

        return {
            path: path.join(folderPath, 'styled.ts'),
            content: `${exports}\n`,
        }
    },

    /**
     * Generates the index.ts for a category (e.g. icons/essentials.ts).
     * Exports styles as namespaces.
     * NOTE: Placed as a sibling to the category folder.
     */
    categoryIndex: (category: string, styles: string[], folderPath: string): FileDefinition => {
        // folderPath is .../icons/category
        // We want .../icons/category.ts
        const parentDir = path.dirname(folderPath)

        const exports = styles
            .map(style => `export * as ${style} from './${category}/${style}';`)
            .sort()
            .join('\n')

        return {
            path: path.join(parentDir, `${category}.ts`),
            content: `${exports}\n`,
        }
    },

    /**
     * Generates the styled.ts for a category (e.g. icons/essentials/styled.ts).
     * Exports everything from each style's styled.ts.
     */
    categoryGlobalIndex: (
        category: string,
        styles: string[],
        folderPath: string
    ): FileDefinition => {
        const exports = styles
            .map(style => `export * from './${style}/styled';`)
            .sort()
            .join('\n')

        return {
            path: path.join(folderPath, 'styled.ts'),
            content: `${exports}\n`,
        }
    },

    /**
     * Generates the root index.ts (src/icons/index.ts).
     */
    rootIndex: (categories: string[]): FileDefinition => {
        const exports = categories
            .map(category => `export * as ${toPascalCase(category)} from './${category}';`)
            .sort()
            .join('\n')

        return {
            path: path.join(ICONS_PATH, 'index.ts'),
            content: `${exports}\n`,
        }
    },

    /**
     * Generates the root styled.ts (src/icons/styled.ts).
     */
    rootGlobalIndex: (categories: string[]): FileDefinition => {
        const exports = categories
            .map(category => `export * from './${category}/styled';`)
            .sort()
            .join('\n')

        return {
            path: path.join(ICONS_PATH, 'styled.ts'),
            content: `${exports}\n`,
        }
    },

    /**
     * Generates grouped indexes by weight (e.g. src/icons/style/Bold.ts).
     */
    weightIndexes: (icons: Icon[]): FileDefinition[] => {
        const files: FileDefinition[] = []
        const byStyle = groupBy(icons, i => i.style)

        for (const weight of WEIGHTS) {
            const iconsForWeight = byStyle[weight] || []

            // Explicitly export each icon found in this weight to avoid "export *"
            // We export directly from the component file to be tree-shake friendly
            const content = iconsForWeight
                .sort((a, b) => a.pascalName.localeCompare(b.pascalName))
                .map(
                    icon =>
                        `export { ${icon.pascalName} } from '../${icon.category}/${icon.style}/${icon.pascalName}';`
                )
                .join('\n')

            files.push({
                path: path.join(ICONS_PATH, 'style', `${weight}.ts`),
                content: content ? `${content}\n` : '',
            })
        }
        return files
    },

    /**
     * Generates the index for styles directory (src/icons/style/index.ts).
     */
    stylesIndex: (): FileDefinition => {
        const content = WEIGHTS.map(weight => `export * as ${weight} from './${weight}';`).join(
            '\n'
        )

        return {
            path: path.join(ICONS_PATH, 'style', 'index.ts'),
            content: `${content}\n`,
        }
    },

    /**
     * Generates the main entry point (src/index.ts).
     */
    mainEntry: (): FileDefinition => {
        const content = `/* GENERATED FILE */
export type { IconProps } from "./lib"
export { IconBase } from "./lib"
export * from "./icons/styled"
import * as solar from "./icons"
export { solar }
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

    // 1. Icon Components & Style Indexes
    const byCategory = groupBy(icons, i => i.category)

    for (const [category, catIcons] of Object.entries(byCategory)) {
        const byStyle = groupBy(catIcons, i => i.style)

        for (const [style, styleIcons] of Object.entries(byStyle)) {
            const stylePath = path.join(ICONS_PATH, category, style)

            // Components
            styleIcons.forEach(icon => {
                files.push(Generators.component(icon))
            })

            // Style Indexes
            files.push(Generators.styleIndex(style, styleIcons, stylePath))
            files.push(Generators.styleGlobalIndex(style, styleIcons, stylePath))
        }

        // Category Indexes
        const styles = Object.keys(byStyle)
        const categoryPath = path.join(ICONS_PATH, category)
        files.push(Generators.categoryIndex(category, styles, categoryPath))
        files.push(Generators.categoryGlobalIndex(category, styles, categoryPath))
    }

    // 2. Root Indexes
    const categories = Object.keys(byCategory)
    files.push(Generators.rootIndex(categories))
    files.push(Generators.rootGlobalIndex(categories))

    // 3. Weight/Style Indexes
    files.push(...Generators.weightIndexes(icons))
    files.push(Generators.stylesIndex())

    // 4. Main Entry
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

const main = async () => {
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
}

await main()
