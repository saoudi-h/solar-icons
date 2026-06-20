#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import { parseSvgs, forEachIcon } from '../../core/src/parser.ts'
import type { ParsedIcon } from '../../core/src/parser.ts'
import { reactComponentFile, type FileDefinition } from '../src/parser-hook.ts'

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
        const byStyle = groupBy(catIcons, i => i.style)

        for (const [style, styleIcons] of Object.entries(byStyle)) {
            const styleKebab = WEIGHT_KEBAB[style]

            const globalContent = styleIcons
                .map(icon => {
                    const globalName = toPascalCase(`${icon.name}-${style}`)
                    return `export { ${icon.pascalName} as ${globalName} } from './${icon.name}';`
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
                const globalName = toPascalCase(`${icon.name}-${style}`)
                if (seenGlobal.has(globalName)) continue
                seenGlobal.add(globalName)
                rootGlobalLines.push(
                    `export { ${icon.pascalName} as ${globalName} } from './${category}/${WEIGHT_KEBAB[style]}/${icon.name}';`
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
                if (seen.has(icon.pascalName)) return false
                seen.add(icon.pascalName)
                return true
            })
            .map(
                icon =>
                    `export { ${icon.pascalName} } from '../${icon.category}/${WEIGHT_KEBAB[icon.style]}/${icon.name}';`
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

    const mainEntryContent = `/* GENERATED FILE */
export type { IconProps } from "./lib"
export { IconBase } from "./lib"
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
    const csrPath = path.resolve(import.meta.dirname, '../src/csr')
    const ssrPath = path.resolve(import.meta.dirname, '../src/ssr')
    const defsPath = path.resolve(import.meta.dirname, '../src/defs')
    for (const p of [csrPath, ssrPath, defsPath]) {
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

        const componentFiles = await forEachIcon(reactComponentFile)
        const indexFiles = generateIndexes(result.icons)
        writeFiles([...componentFiles, ...indexFiles])
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
}

await main()
