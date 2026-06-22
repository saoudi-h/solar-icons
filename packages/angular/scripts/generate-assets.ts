#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import type { ParsedIcon } from '../../core/src/parser.ts'
import { forEachIcon, parseSvgs } from '../../core/src/parser.ts'
import { angularComponentFile, type FileDefinition } from '../src/parser-hook.ts'

const ICONS_PATH = path.resolve(import.meta.dirname, '../src/icons')
const INDEX_PATH = path.resolve(import.meta.dirname, '../src/public-api.ts')

const WEIGHT_KEBAB: Record<string, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

function toPascalCase(str: string): string {
    return str
        .split('-')
        .map(s => s.replace(/^\w/, c => c.toUpperCase()))
        .join('')
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
        const exports = catIcons
            .map(icon => {
                const globalName = toPascalCase(`${icon.name}-${icon.style}`)
                const sk = WEIGHT_KEBAB[icon.style]
                return `export { ${globalName}Icon } from './${sk}/${icon.name}-${sk}';`
            })
            .sort()
            .join('\n')

        files.push({
            path: path.join(ICONS_PATH, category, 'index.ts'),
            content: `${exports}\n`,
        })
    }

    const categories = Object.keys(byCategory).sort()

    const rootIndexContent = categories.map(c => `export * from './${c}';`).join('\n')

    files.push({
        path: path.join(ICONS_PATH, 'index.ts'),
        content: `${rootIndexContent}\n`,
    })

    const allNames = icons
        .map(i => `'${toPascalCase(`${i.name}-${i.style}`)}Icon'`)
        .sort()
        .join(' | ')

    const typeContent = `/* GENERATED FILE */
/**
 * Union of all available icon names for the dynamic SolarIcon component.
 * Provides IDE autocompletion without importing the actual components.
 */
export type SolarIconName = ${allNames};
`

    files.push({
        path: path.join(path.dirname(INDEX_PATH), 'lib', 'all-icons.types.ts'),
        content: typeContent,
    })

    const mainEntryContent = `/* GENERATED FILE */
export * from './lib';
export * from './icons';
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

        const componentFiles = await forEachIcon(angularComponentFile)
        const indexFiles = generateIndexes(result.icons)
        writeFiles([...componentFiles, ...indexFiles])
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
}

await main()
