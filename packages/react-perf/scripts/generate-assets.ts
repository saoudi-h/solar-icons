#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import type { SvgMap } from './utils'
import {
    ICONS_PATH,
    INDEX_PATH,
    toPascalCase,
    readSvgsFromDisk,
    verifyIcons,
    WEIGHTS,
} from './utils'

/**
 * Clean generated directories and files to ensure a clean build.
 *
 * The following directories and files are removed:
 * - src/icons
 * - src/index.ts
 */
function cleanGeneratedDirectoriesAndFiles() {
    const pathsToClean = [ICONS_PATH, INDEX_PATH]

    pathsToClean.forEach(pathToClean => {
        if (fs.existsSync(pathToClean)) {
            fs.rmSync(pathToClean, { recursive: true, force: true })
            console.log(pc.blue(`Removed ${pathToClean}`))
        }
    })
}

/**
 * Generates React icon components and index files for each icon category and style.
 *
 * This function iterates over an SvgMap of icons organized by category and style,
 * creating a React component file for each icon. Each component is a forwardRef
 * component that renders an SVG element using the IconBase component and the icon's
 * JSX representation. The function also constructs index files for each style, category,
 * and a styled index file to facilitate easy imports of the generated icon components.
 * @param icons - The SvgMap containing icons organized by category and style.
 * Each category contains styles, and each style contains icons with their JSX
 * representation and a preview image.
 */
function generateIcons(icons: SvgMap) {
    const styledStylesIndexContent = Object.fromEntries(WEIGHTS.map(key => [key, '']))
    let styledIndex = ''
    const styledStylesPath = path.join(ICONS_PATH, 'style')
    fs.mkdirSync(styledStylesPath, { recursive: true })
    let iconsIndexContent = ''
    let iconsGlobalIndexContent = ''
    for (const category in icons) {
        const categoryPascalCase = toPascalCase(category)
        const categoryPath = path.join(ICONS_PATH, category)
        fs.mkdirSync(categoryPath, { recursive: true })

        const styleInCategory = icons[category]
        let categoryIndexContent = ''
        let categoryGlobalIndexContent = ''

        for (const style in styleInCategory) {
            const stylePath = path.join(categoryPath, style)
            fs.mkdirSync(stylePath, { recursive: true })
            const iconsInStyle = styleInCategory[style]
            let styleIndexContent = ''
            let styleGlobalIndexContent = ''

            for (const icon in iconsInStyle) {
                const iconName = toPascalCase(icon)
                const iconNameGlobal = toPascalCase(`${icon}-${style}`)
                const iconData = iconsInStyle[icon]
                if (!iconData) {
                    throw new Error(`Missing icon data for ${icon}`)
                }
                const { preview, jsx } = iconData

                const iconContent = `/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,${preview})
 */
export const ${iconName}:Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        ${jsx.trim()}
    </IconBase>
))

${iconName}.displayName = "${iconName}"
`

                fs.writeFileSync(path.join(stylePath, `${iconName}.tsx`), iconContent, {
                    flag: 'w',
                })

                styleIndexContent += `export * from './${iconName}';\n`

                styleGlobalIndexContent += `export { ${iconName} as ${iconNameGlobal} } from './${iconName}';\n`
            }
            categoryGlobalIndexContent += `export * from './${style}/styled';\n`

            fs.writeFileSync(path.join(stylePath, 'styled.ts'), styleGlobalIndexContent, {
                flag: 'w',
            })

            fs.writeFileSync(path.join(stylePath, 'index.ts'), styleIndexContent, { flag: 'w' })
            categoryIndexContent += `export * as ${style} from './${style}';\n`
        }

        fs.writeFileSync(path.join(categoryPath, 'styled.ts'), categoryGlobalIndexContent, {
            flag: 'w',
        })

        fs.writeFileSync(path.join(categoryPath, 'index.ts'), categoryIndexContent, { flag: 'w' })
        iconsIndexContent += `export * as ${categoryPascalCase} from './${category}';\n`
        iconsGlobalIndexContent += `export * from './${category}/styled';\n`
        for (const weight of WEIGHTS) {
            styledStylesIndexContent[weight] += `export * from '../${category}/${weight}';\n`
        }
    }
    fs.writeFileSync(path.join(ICONS_PATH, 'index.ts'), iconsIndexContent, { flag: 'w' })
    fs.writeFileSync(path.join(ICONS_PATH, 'styled.ts'), iconsGlobalIndexContent, { flag: 'w' })
    for (const weight of WEIGHTS) {
        if (!styledStylesIndexContent[weight]) {
            throw new Error(`Missing styled index content for ${weight}`)
        }
        fs.writeFileSync(
            path.join(styledStylesPath, `${weight}.ts`),
            styledStylesIndexContent[weight],
            {
                flag: 'w',
            }
        )
        styledIndex += `export * as ${weight} from './${weight}';\n`
    }

    fs.writeFileSync(path.join(styledStylesPath, 'index.ts'), styledIndex, { flag: 'w' })
}

/**
 * Generates React components and TypeScript definitions for each icon.
 *
 * This function groups icons by name within each category and generates
 * React components and TypeScript definitions for each icon. It also generates
 * index files for each category and a styled index file.
 * @param icons - The SvgMap containing icons organized by category and style.
 */
function generateComponents(icons: SvgMap) {
    // Create directories if they don't exist
    fs.mkdirSync(ICONS_PATH, { recursive: true })

    // GenerateIcons
    generateIcons(icons)

    console.log('Generated assets successfully')
}

/**
 * Generates the main export index file for the library.
 *
 * This function creates a TypeScript index file that exports essential types,
 * contexts, and components from the library's source directories. It includes:
 * - Type exports for IconProps.
 * - Named exports IconBase.
 * - Namespace export for icons.
 * - All exports from styled icons.
 *
 * The generated file is written to the path specified by INDEX_PATH.
 * Logs the success or failure of the export operation.
 */
function generateMainExports() {
    const mainIndexContent = `\
/* GENERATED FILE */
export type { IconProps } from "./lib"
export { IconBase } from "./lib"
export * from "./icons/styled"
import * as solar from "./icons"
export { solar }
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
