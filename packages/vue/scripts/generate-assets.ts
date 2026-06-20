#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import type { ParsedIcon } from '../../core/src/parser.ts'
import { forEachIcon, parseSvgs } from '../../core/src/parser.ts'
import { vueComponentFile, type FileDefinition } from '../src/parser-hook.ts'

const ICONS_PATH = path.resolve(import.meta.dirname, '../src/icons')
const INDEX_PATH = path.resolve(import.meta.dirname, '../src/index.ts')

const WEIGHTS = ['Bold', 'BoldDuotone', 'Broken', 'Linear', 'LineDuotone', 'Outline'] as const

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

            const globalContent = styleIcons
                .map(icon => {
                    const globalName = `${icon.pascalName}${style}`
                    return `export { default as ${globalName} } from './${icon.name}';`
                })
                .sort()
                .join('\n')

            files.push({
                path: path.join(ICONS_PATH, category, styleKebab, 'styled.ts'),
                content: `${globalContent}\n`,
            })
        }
    }

    // Generate styled.ts root with deduplicated named exports
    const seenGlobal = new Set<string>()
    const rootGlobalLines: string[] = []
    for (const [category, catIcons] of Object.entries(byCategory)) {
        const byStyle = groupBy(catIcons, i => i.style)
        for (const [style, styleIcons] of Object.entries(byStyle)) {
            for (const icon of styleIcons) {
                const globalName = `${icon.pascalName}${style}`
                if (seenGlobal.has(globalName)) continue
                seenGlobal.add(globalName)
                rootGlobalLines.push(
                    `export { default as ${globalName} } from './${category}/${WEIGHT_KEBAB[style]}/${icon.name}';`
                )
            }
        }
    }
    rootGlobalLines.sort()

    files.push({
        path: path.join(ICONS_PATH, 'styled.ts'),
        content: rootGlobalLines.join('\n') + '\n',
    })

    for (const weight of WEIGHTS) {
        const iconsForWeight = icons.filter(i => i.style === weight)
        const weightKebab = WEIGHT_KEBAB[weight]
        const seen = new Set<string>()
        const content = iconsForWeight
            .sort((a, b) => a.pascalName.localeCompare(b.pascalName))
            .filter(icon => {
                const globalName = `${icon.pascalName}${weight}`
                if (seen.has(globalName)) return false
                seen.add(globalName)
                return true
            })
            .map(icon => {
                const globalName = `${icon.pascalName}${weight}`
                return `export { default as ${globalName} } from '../${icon.category}/${WEIGHT_KEBAB[icon.style]}/${icon.name}';`
            })
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

    const mainEntryContent = `/* GENERATED FILE */
export type { IconProps } from "./lib/types"
export { IconStyle } from "./lib/types"
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
        console.log(
            pc.blue(`Parsed ${result.icons.length} icons in ${result.groups.length} groups`)
        )

        const componentFiles = await forEachIcon(vueComponentFile)
        const indexFiles = generateIndexes(result.icons)
        writeFiles([...componentFiles, ...indexFiles])
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
}

await main()
