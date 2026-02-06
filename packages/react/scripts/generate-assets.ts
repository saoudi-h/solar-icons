#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import type { SvgMap } from './utils'
import {
    CSR_PATH,
    DEFS_PATH,
    INDEX_PATH,
    readSvgsFromDisk,
    SSR_PATH,
    toPascalCase,
    verifyIcons,
} from './utils'

/**
 * Clean generated directories and files to ensure a clean build.
 *
 * The following directories and files are removed:
 * - src/csr
 * - src/ssr
 * - src/defs
 * - src/index.ts
 */
function cleanGeneratedDirectoriesAndFiles() {
    const pathsToClean = [CSR_PATH, SSR_PATH, DEFS_PATH, INDEX_PATH]

    pathsToClean.forEach(pathToClean => {
        if (fs.existsSync(pathToClean)) {
            fs.rmSync(pathToClean, { recursive: true, force: true })
            console.log(pc.blue(`Removed ${pathToClean}`))
        }
    })
}

/**
 * Generates React components for icons based on the given grouping and type.
 * @param groupedIcons - An object representing icons grouped by category.
 * Each category contains icons with different styles.
 * @param type - The type of component to generate, either 'csr' (Client Side Rendering)
 * or 'ssr' (Server Side Rendering), which determines the base component and path used.
 *
 * The function creates TypeScript files for each icon, including a forwardRef
 * component for rendering the icon with different styles. It also generates index
 * files for each category and a global index file.
 */
function generateReactComponents(
    groupedIcons: ReturnType<typeof groupIconsByName>,
    type: 'csr' | 'ssr'
) {
    const BASE_PATH = type === 'csr' ? CSR_PATH : SSR_PATH
    const importBase = type === 'csr' ? 'IconBase' : 'SSRBase'
    const useClientDirective = type === 'csr' ? `'use client'\n\n` : ''

    for (const category in groupedIcons) {
        const categoryPath = path.join(BASE_PATH, category)
        fs.mkdirSync(categoryPath, { recursive: true })

        const iconsInCategory = groupedIcons[category]
        let categoryIndexContent = ''

        for (const iconName in iconsInCategory) {
            const name = toPascalCase(iconName)

            const doc = `/**
${Object.entries(iconsInCategory[iconName]!)
    .map(([style, { preview }]) => ` * ### ![img](data:image/svg+xml;base64,${preview}) ${style}`)
    .join('\n')}
 */`

            const componentContent = `${useClientDirective}/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import ${importBase} from "../../lib/${importBase}"
import weights from "../../defs/${category}/${name}"

${doc}
const ${name}: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <${importBase} ref={ref} {...props} weights={weights} />
))

${name}.displayName = "${name}"
export default ${name}
`

            fs.writeFileSync(path.join(categoryPath, `${name}.tsx`), componentContent, {
                flag: 'w',
            })

            categoryIndexContent += `export { default as ${name} } from './${name}'\n`
        }

        fs.writeFileSync(path.join(categoryPath, 'index.ts'), categoryIndexContent, { flag: 'w' })
    }

    // Generate global index
    let globalIndexContent = Object.keys(groupedIcons)
        .map(category => {
            return `export * from './${category}'`
        })
        .join('\n')

    globalIndexContent += '\nexport * as category from "./category"'

    fs.writeFileSync(path.join(BASE_PATH, 'index.ts'), globalIndexContent, { flag: 'w' })

    // Generate category index
    const globalCategoryIndexContent = Object.keys(groupedIcons)
        .map(category => {
            const categoryName = toPascalCase(category)
            return `export * as ${categoryName} from './${category}'`
        })
        .join('\n')

    fs.writeFileSync(path.join(BASE_PATH, 'category.ts'), globalCategoryIndexContent, { flag: 'w' })
}

/**
 * Generates TypeScript definition files for icons based on the given grouping.
 *
 * This function iterates over grouped icons by category and creates TypeScript
 * files for each icon, storing their style-specific JSX representations in a Map.
 * It also generates index files for each category and a global index file.
 * @param groupedIcons - An object with icons grouped by category and name,
 * each containing style-specific properties, including JSX representation.
 */
function generateIconDefinitions(groupedIcons: ReturnType<typeof groupIconsByName>) {
    for (const category in groupedIcons) {
        const categoryDefsPath = path.join(DEFS_PATH, category)
        fs.mkdirSync(categoryDefsPath, { recursive: true })

        const iconsInCategory = groupedIcons[category]
        let categoryIndexContent = ''

        for (const iconName in iconsInCategory) {
            const iconStyles = iconsInCategory[iconName]
            const name = toPascalCase(iconName)

            const defContent = `/* GENERATED FILE */
import React, { ReactElement } from "react"
import type { IconWeight } from '../../lib'

export default new Map<IconWeight, ReactElement>([
${Object.entries(iconStyles!)
    .map(([style, { jsx }]) => `  ["${style}", <>${jsx.trim()}</>]`)
    .join(',\n')}
]);
`

            fs.writeFileSync(path.join(categoryDefsPath, `${name}.tsx`), defContent, { flag: 'w' })

            categoryIndexContent += `export { default as ${name} } from './${name}';\n`
        }

        fs.writeFileSync(path.join(categoryDefsPath, 'index.ts'), categoryIndexContent, {
            flag: 'w',
        })
    }

    // Generate global index
    const globalIndexContent = Object.keys(groupedIcons)
        .map(category => {
            return `export * from './${category}';`
        })
        .join('\n')

    fs.writeFileSync(path.join(DEFS_PATH, 'index.ts'), globalIndexContent, { flag: 'w' })
}

/**
 * Groups icons by their name within each category and style.
 *
 * This function takes an SvgMap of icons organized by category and style,
 * and reorganizes it into a nested structure where icons are grouped by their
 * names within each category. Each icon retains its style-specific properties,
 * including a preview and jsx representation.
 * @param icons - The SvgMap containing icons organized by category and style.
 * @returns A nested object where icons are grouped by name within each category,
 *          with style-specific properties for each icon.
 */
function groupIconsByName(icons: SvgMap) {
    const groupedIcons: Record<
        string, // Category
        Record<
            string, // Name
            Record<
                string, // Style
                { preview: string; jsx: string }
            >
        >
    > = {}

    for (const category in icons) {
        groupedIcons[category] = {}

        const styles = icons[category]
        for (const style in styles) {
            const iconsInStyle = styles[style]
            for (const iconName in iconsInStyle) {
                if (!groupedIcons[category][iconName]) {
                    groupedIcons[category][iconName] = {}
                }
                groupedIcons[category][iconName][style] = iconsInStyle[iconName]!
            }
        }
    }

    return groupedIcons
}

/**
 * Generates React components and TypeScript definitions for each icon.
 *
 * This function groups icons by name within each category and generates
 * React components and TypeScript definitions for each icon. It also generates
 * index files for each category and a global index file.
 * @param icons - The SvgMap containing icons organized by category and style.
 */
function generateComponents(icons: SvgMap) {
    // Create directories if they don't exist
    fs.mkdirSync(CSR_PATH, { recursive: true })
    fs.mkdirSync(SSR_PATH, { recursive: true })
    fs.mkdirSync(DEFS_PATH, { recursive: true })

    // Group icons by name
    const groupedIcons = groupIconsByName(icons)

    // Generate icon definitions
    generateIconDefinitions(groupedIcons)

    // Generate React components
    generateReactComponents(groupedIcons, 'csr')
    generateReactComponents(groupedIcons, 'ssr')

    console.log('Generated assets successfully')
}

/**
 * Generates the main export index file for the library.
 *
 * This function creates a TypeScript index file that exports essential types,
 * contexts, and components from the library's source directories. It includes:
 * - Type exports for IconProps and IconWeight.
 * - Named exports for IconContext and IconBase.
 * - Namespace export for server-side rendering components (SSR).
 * - All exports from client-side rendering components (CSR).
 *
 * The generated file is written to the path specified by INDEX_PATH.
 * Logs the success or failure of the export operation.
 */
function generateMainExports() {
    const mainIndexContent = `\
/* GENERATED FILE */
export type { IconProps, IconWeight } from "./lib"
export { SolarProvider, useSolar, IconBase } from "./lib"
export * as SSR from "./ssr"
export * from "./csr"
import * as solar from "./csr/category"
export { solar }
export default solar
`

    try {
        // Write the main export index
        fs.writeFileSync(INDEX_PATH, mainIndexContent, { flag: 'w' })
        console.log(pc.green('Main index export success'))
    } catch (err) {
        console.error(pc.red('Main index export failed'))
        console.group()
        console.error(err)
        console.groupEnd()
    }
}

/**
 * Main function to generate the entire library.
 *
 * This function does the following in order:
 * 1. Deletes old files and directories before starting the build.
 * 2. Reads icon data from disk and verifies integrity.
 * 3. Generates components for each icon.
 * 4. Generates main export index.
 *
 * Exits the process if icon integrity verification fails.
 */
const main = async () => {
    // Delete old files and directories before starting the build
    cleanGeneratedDirectoriesAndFiles()

    // Read icon data from disk and verify integrity
    const icons = readSvgsFromDisk()
    if (!verifyIcons(icons)) {
        process.exit(1)
    }

    generateComponents(icons) // Generate components for each icon
    generateMainExports() // Generate main export index
}

await main()
