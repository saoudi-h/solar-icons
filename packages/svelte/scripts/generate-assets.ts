#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import { parseSvgs, forEachIcon } from '../../core/src/parser.ts'
import type { ParsedIcon } from '../../core/src/parser.ts'
import { svelteComponentFile, type FileDefinition } from '../src/parser-hook'

const ICONS_PATH = path.resolve(import.meta.dirname, '../src/icons')
const INDEX_PATH = path.resolve(import.meta.dirname, '../src/index.ts')

const WEIGHTS = [
    'Bold',
    'BoldDuotone',
    'Broken',
    'Linear',
    'LineDuotone',
    'Outline',
] as const

const WEIGHT_KEBAB: Record<string, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

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

function generateIndexes(icons: ReadonlyArray<ParsedIcon>): FileDefinition[] {
    const files: FileDefinition[] = []
    const byCategory = groupBy(icons, i => i.category)

    for (const [category, catIcons] of Object.entries(byCategory)) {
        const byStyle = groupBy(catIcons, i => i.style)

        for (const [style, styleIcons] of Object.entries(byStyle)) {
            const styleKebab = WEIGHT_KEBAB[style]
            const styleIndexContent = styleIcons
                .map(
                    icon =>
                        `export { default as ${icon.pascalName} } from './${styleKebab}/${icon.name}.svelte';`
                )
                .sort()
                .join('\n')

            files.push({
                path: path.join(ICONS_PATH, category, `${styleKebab}.ts`),
                content: `${styleIndexContent}\n`,
            })

            const globalContent = styleIcons
                .map(
                    icon =>
                        `export { default as ${icon.pascalName} } from './${icon.name}.svelte';`
                )
                .sort()
                .join('\n')

            files.push({
                path: path.join(ICONS_PATH, category, styleKebab, 'styled.ts'),
                content: `${globalContent}\n`,
            })
        }

        const styles = Object.keys(byStyle)
        const catIndexContent = styles
            .map(style => `export * as ${style} from './${category}/${WEIGHT_KEBAB[style]}';`)
            .sort()
            .join('\n')

        files.push({
            path: path.join(ICONS_PATH, `${category}.ts`),
            content: `${catIndexContent}\n`,
        })

        const catGlobalContent = styles
            .map(style => `export * from './${WEIGHT_KEBAB[style]}/styled';`)
            .sort()
            .join('\n')

        files.push({
            path: path.join(ICONS_PATH, category, 'styled.ts'),
            content: `${catGlobalContent}\n`,
        })
    }

    const categories = Object.keys(byCategory)
    const toPascalCase = (str: string): string =>
        str
            .split('-')
            .map(s => s.replace(/^\w/, c => c.toUpperCase()))
            .join('')

    const rootIndexContent = categories
        .map(cat => `export * as ${toPascalCase(cat)} from './${cat}';`)
        .sort()
        .join('\n')

    files.push({
        path: path.join(ICONS_PATH, 'index.ts'),
        content: `${rootIndexContent}\n`,
    })

    const rootGlobalContent = categories
        .map(cat => `export * from './${cat}/styled';`)
        .sort()
        .join('\n')

    files.push({
        path: path.join(ICONS_PATH, 'styled.ts'),
        content: `${rootGlobalContent}\n`,
    })

    for (const weight of WEIGHTS) {
        const iconsForWeight = icons.filter(i => i.style === weight)
        const weightKebab = WEIGHT_KEBAB[weight]
        const content = iconsForWeight
            .sort((a, b) => a.pascalName.localeCompare(b.pascalName))
            .map(
                icon =>
                    `export { default as ${icon.pascalName} } from '../${icon.category}/${WEIGHT_KEBAB[icon.style]}/${icon.name}.svelte';`
            )
            .join('\n')

        files.push({
            path: path.join(ICONS_PATH, 'style', `${weightKebab}.ts`),
            content: content ? `${content}\n` : '',
        })
    }

    const stylesIndexContent = WEIGHTS.map(
        w => `export * as ${w} from './${WEIGHT_KEBAB[w]}';`
    ).join('\n')

    files.push({
        path: path.join(ICONS_PATH, 'style', 'index.ts'),
        content: `${stylesIndexContent}\n`,
    })

    const mainEntryContent = `export type { IconProps } from "./lib"
export { IconBase, type IconStyle } from "./lib"
export * from "./icons/styled"
`

    files.push({
        path: INDEX_PATH,
        content: mainEntryContent,
    })

    return files
}

function clean() {
    for (const p of [ICONS_PATH, INDEX_PATH]) {
        if (fs.existsSync(p)) {
            fs.rmSync(p, { recursive: true, force: true })
            console.log(pc.blue(`Removed ${p}`))
        }
    }
}

function writeFiles(files: FileDefinition[]) {
    for (const file of files) {
        fs.mkdirSync(path.dirname(file.path), { recursive: true })
        fs.writeFileSync(file.path, file.content, { flag: 'w' })
    }
    console.log(pc.green(`Successfully generated ${files.length} files.`))
}

const main = async () => {
    try {
        clean()
        const result = await parseSvgs()
        console.log(pc.blue(`Parsed ${result.icons.length} icons in ${result.groups.length} groups`))

        const componentFiles = await forEachIcon(svelteComponentFile)
        const indexFiles = generateIndexes(result.icons)
        writeFiles([...componentFiles, ...indexFiles])
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
}

await main()
