#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import { parseSvgs, forEachIconGroupedBy } from '../../core/src/parser.ts'
import type { ParsedIconGroup } from '../../core/src/parser.ts'
import { vueComponentFile, type FileDefinition } from '../src/parser-hook.ts'

const ICONS_PATH = path.resolve(import.meta.dirname, '../src/icons')

function toPascalCase(str: string): string {
    return str
        .split('-')
        .map(s => s.replace(/^\w/, c => c.toUpperCase()))
        .join('')
}

function clean() {
    if (fs.existsSync(ICONS_PATH)) {
        fs.rmSync(ICONS_PATH, { recursive: true, force: true })
        console.log(pc.blue(`Removed ${ICONS_PATH}`))
    }
}

function writeFiles(files: FileDefinition[]) {
    for (const file of files) {
        fs.mkdirSync(path.dirname(file.path), { recursive: true })
        fs.writeFileSync(file.path, file.content, { flag: 'w' })
    }
    console.log(pc.green(`Successfully generated ${files.length} files.`))
}

function groupedBy<T>(array: T[], keySelector: (item: T) => string): Record<string, T[]> {
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

function generateIndexes(groups: ReadonlyArray<ParsedIconGroup>): FileDefinition[] {
    const files: FileDefinition[] = []
    const byCategory = groupedBy(groups, g => g.category)

    for (const [category, catGroups] of Object.entries(byCategory)) {
        let categoryIndexContent = ''
        for (const group of catGroups.sort((a, b) => a.name.localeCompare(b.name))) {
            categoryIndexContent += `export { default as ${group.pascalName} } from './${group.name}'\n`
        }
        files.push({
            path: path.join(ICONS_PATH, category, 'index.ts'),
            content: categoryIndexContent,
        })
    }

    const categories = Object.keys(byCategory).sort()

    const globalIndexContent = categories
        .map(c => `export * from './${c}';`)
        .join('\n')

    files.push({
        path: path.join(ICONS_PATH, 'index.ts'),
        content: globalIndexContent,
    })

    const globalCategoryIndexContent = categories
        .map(c => `export * as ${toPascalCase(c)} from './${c}'`)
        .join('\n')

    files.push({
        path: path.join(ICONS_PATH, 'category.ts'),
        content: globalCategoryIndexContent,
    })

    return files
}

const main = async () => {
    try {
        clean()
        const result = await parseSvgs()
        console.log(pc.blue(`Parsed ${result.icons.length} icons in ${result.groups.length} groups`))

        const componentFiles = await forEachIconGroupedBy(vueComponentFile)
        const indexFiles = generateIndexes(result.groups)
        writeFiles([...componentFiles, ...indexFiles])
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
}

await main()
