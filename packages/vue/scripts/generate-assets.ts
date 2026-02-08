#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'
import { ICON_RENAMES } from '../../core/src/utils.ts'
import type { IconByStyle, IconsByName, SvgByName, SvgMap } from './utils'
import { ICONS_PATH, readSvgsFromDisk, toPascalCase } from './utils'

// Create a reverse mapping for aliases (Correction -> [Typos])
const ICON_ALIASES: Record<string, string[]> = {}
for (const [typo, correction] of Object.entries(ICON_RENAMES)) {
    if (!ICON_ALIASES[correction]) {
        ICON_ALIASES[correction] = []
    }
    ICON_ALIASES[correction].push(typo)
}

interface ComponentGenerator {
    cleanGeneratedFiles(): void
    generateComponents(icons: SvgMap): Promise<void>
}

/**
 * Generates icon components from SVG files
 */
class IconComponentGenerator implements ComponentGenerator {
    /**
     * Main execution method that orchestrates the component generation process
     */
    async run(): Promise<void> {
        try {
            console.log(pc.blue('Cleaning generated files...'))
            this.cleanGeneratedFiles()
            console.log(pc.blue('Reading SVG files...'))
            const icons = readSvgsFromDisk()
            console.log(pc.blue('Generating Solar components...'))
            await this.generateComponents(icons)
            console.log(pc.green('Successfully generated Solar components!'))
        } catch (error) {
            console.error(pc.red('Error generating assets:'), error)
            process.exit(1)
        }
    }

    /**
     * Cleans up previously generated files
     */
    cleanGeneratedFiles(): void {
        const pathsToClean = [ICONS_PATH]
        pathsToClean.forEach(pathToClean => {
            if (fs.existsSync(pathToClean)) {
                fs.rmSync(pathToClean, { recursive: true, force: true })
                console.log(pc.blue(`Removed ${pathToClean}`))
            }
        })
    }

    /**
     * Generates components from SVG icons
     * @param icons Map of SVG icons organized by category and style
     */
    async generateComponents(icons: SvgMap): Promise<void> {
        const groupedIcons = this.groupIconsByName(icons)
        await this.generateSolarComponents(groupedIcons)
    }

    /**
     * Groups icons by their name across different styles
     * @param icons Map of SVG icons
     * @returns Icons grouped by name
     */
    private groupIconsByName(icons: SvgMap): SvgByName {
        const groupedIcons: SvgByName = {}
        for (const [category, styles] of Object.entries(icons)) {
            groupedIcons[category] = {}
            for (const [style, iconsInStyle] of Object.entries(styles)) {
                for (const [iconName, iconData] of Object.entries(iconsInStyle)) {
                    if (!groupedIcons[category][iconName]) {
                        groupedIcons[category][iconName] = {}
                    }
                    groupedIcons[category][iconName][style] = iconData
                }
            }
        }
        return groupedIcons
    }

    /**
     * Generates Solar components from grouped icons
     * @param groupedIcons Icons grouped by name
     */
    private async generateSolarComponents(groupedIcons: SvgByName): Promise<void> {
        fs.mkdirSync(ICONS_PATH, { recursive: true })
        for (const [category, iconsInCategory] of Object.entries(groupedIcons)) {
            await this.generateCategoryComponents(category, iconsInCategory)
        }
        await this.generateIndexFiles(groupedIcons)
    }

    /**
     * Generates components for a specific category
     * @param category Category name
     * @param iconsInCategory Icons in the category
     */
    private async generateCategoryComponents(
        category: string,
        iconsInCategory: IconsByName
    ): Promise<void> {
        const categoryPath = path.join(ICONS_PATH, category)
        fs.mkdirSync(categoryPath, { recursive: true })
        let categoryIndexContent = ''
        for (const [iconName, iconStyles] of Object.entries(iconsInCategory)) {
            const componentName = toPascalCase(iconName)
            const componentContent = this.generateComponentContent(iconName, iconStyles)
            fs.writeFileSync(
                path.join(categoryPath, `${componentName}.ts`),
                componentContent,
                'utf-8'
            )
            categoryIndexContent += `export { default as ${componentName} } from './${componentName}'\n`

            // function moved
            // Add aliases if they exist
            const aliases = getAliasesForIcon(componentName)
            aliases.forEach(alias => {
                this.generateAliasComponent(categoryPath, componentName, alias)
                categoryIndexContent += `export { ${alias} } from './${alias}'\n`
            })
        }
        fs.writeFileSync(path.join(categoryPath, 'index.ts'), categoryIndexContent, 'utf-8')
    }

    /**
     * Generates an alias component file
     */
    private generateAliasComponent(
        categoryPath: string,
        originalName: string,
        aliasName: string
    ): void {
        const content = `import { default as ${originalName} } from './${originalName}'

/**
 * @deprecated Use ${originalName} instead
 */
export const ${aliasName} = ${originalName}
`
        fs.writeFileSync(path.join(categoryPath, `${aliasName}.ts`), content, 'utf-8')
    }

    /**
     * Generates content for an individual icon component
     * @param iconName Name of the icon
     * @param iconStyles Icon styles data
     * @returns Component content as string
     */
    private generateComponentContent(iconName: string, iconStyles: IconByStyle): string {
        const componentName = toPascalCase(iconName)
        const doc = this.generateDocumentation(componentName, iconStyles)
        const iconNodesData = Object.entries(iconStyles).reduce(
            (acc, [style, data]) => {
                acc[style] = data.iconNodes
                return acc
            },
            {} as Record<string, Array<[string, Record<string, any>]>>
        )
        return `import { createSolarIcon } from '../../lib/createSolarIcon'
${doc}
const ${componentName} = createSolarIcon('${iconName}', ${JSON.stringify(iconNodesData, null, 2)})
export default ${componentName}
`
    }

    /**
     * Generates documentation for an icon component
     * @param componentName Component name
     * @param iconStyles Icon styles data
     * @returns Documentation string
     */
    private generateDocumentation(componentName: string, iconStyles: IconByStyle): string {
        const styleDocs = Object.entries(iconStyles)
            .map(
                ([style, { preview }]) =>
                    ` * ### ![img](data:image/svg+xml;base64,${preview}) ${style}`
            )
            .join('\n')
        return `/**
${styleDocs}
*/`
    }

    /**
     * Generates index files for the components
     * @param groupedIcons Icons grouped by name
     */
    private async generateIndexFiles(groupedIcons: SvgByName): Promise<void> {
        const categories = Object.keys(groupedIcons)
        const globalIndexContent = categories
            .map(category => `export * from './${category}';`)
            .join('\n')
        const globalCategoryIndexContent = categories
            .map(category => {
                const categoryName = toPascalCase(category)
                return `export * as ${categoryName} from './${category}'`
            })
            .join('\n')
        fs.writeFileSync(path.join(ICONS_PATH, 'index.ts'), globalIndexContent, 'utf-8')
        fs.writeFileSync(path.join(ICONS_PATH, 'category.ts'), globalCategoryIndexContent, 'utf-8')
    }
}

/**
 * Returns a list of aliases (typos) for a given icon name, including partial matches.
 */
function getAliasesForIcon(name: string): string[] {
    const aliases = new Set<string>()
    // Exact matches
    if (ICON_ALIASES[name]) {
        ICON_ALIASES[name].forEach(a => aliases.add(a))
    }
    // Partial matches
    Object.entries(ICON_ALIASES).forEach(([correct, typos]) => {
        if (name.includes(correct) && name !== correct) {
            typos.forEach(typo => {
                if (/[^a-z0-9]/i.test(typo)) return
                aliases.add(name.replace(correct, typo))
            })
        }
    })
    return Array.from(aliases).filter(a => a !== name)
}

/**
 * Main execution function
 */
async function main(): Promise<void> {
    const generator = new IconComponentGenerator()
    await generator.run()
}

main()
