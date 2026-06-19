#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import { parseSvgs, forEachIconGroupedBy } from '../../core/src/parser.ts'
import type { ParsedIconGroup } from '../../core/src/parser.ts'
import {
    reactComponentFile,
    reactSsrComponentFile,
    reactDefsFile,
    type FileDefinition,
} from '../src/parser-hook.ts'

const CSR_PATH = path.resolve(import.meta.dirname, '../src/csr')
const SSR_PATH = path.resolve(import.meta.dirname, '../src/ssr')
const DEFS_PATH = path.resolve(import.meta.dirname, '../src/defs')
const INDEX_PATH = path.resolve(import.meta.dirname, '../src/index.ts')

function toPascalCase(str: string): string {
    return str
        .split('-')
        .map(s => s.replace(/^\w/, c => c.toUpperCase()))
        .join('')
}

function clean() {
    for (const p of [CSR_PATH, SSR_PATH, DEFS_PATH, INDEX_PATH]) {
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
        const catPascal = toPascalCase(category)

        let csrIndexContent = ''
        let ssrIndexContent = ''
        let defsIndexContent = ''

        for (const group of catGroups.sort((a, b) => a.name.localeCompare(b.name))) {
            csrIndexContent += `export { default as ${group.pascalName} } from './${group.name}'\n`
            ssrIndexContent += `export { default as ${group.pascalName} } from './${group.name}'\n`
            defsIndexContent += `export { default as ${group.pascalName} } from './${group.name}';\n`
        }

        files.push({
            path: path.join(CSR_PATH, category, 'index.ts'),
            content: csrIndexContent,
        })
        files.push({
            path: path.join(SSR_PATH, category, 'index.ts'),
            content: ssrIndexContent,
        })
        files.push({
            path: path.join(DEFS_PATH, category, 'index.ts'),
            content: defsIndexContent,
        })

        files.push({
            path: path.join(CSR_PATH, `${category}.ts`),
            content: `export * as ${catPascal} from './${category}';\n`,
        })
    }

    const categories = Object.keys(byCategory).sort()

    const csrGlobalIndex = categories
        .map(c => `export * from './${c}'`)
        .join('\n')
        + '\nexport * as category from "./category"'

    files.push({
        path: path.join(CSR_PATH, 'index.ts'),
        content: csrGlobalIndex,
    })

    const csrCategoryIndex = categories
        .map(c => `export * as ${toPascalCase(c)} from './${c}'`)
        .join('\n')

    files.push({
        path: path.join(CSR_PATH, 'category.ts'),
        content: csrCategoryIndex,
    })

    const ssrGlobalIndex = categories
        .map(c => `export * from './${c}'`)
        .join('\n')

    files.push({
        path: path.join(SSR_PATH, 'index.ts'),
        content: ssrGlobalIndex,
    })

    const defsGlobalIndex = categories
        .map(c => `export * from './${c}';`)
        .join('\n')

    files.push({
        path: path.join(DEFS_PATH, 'index.ts'),
        content: defsGlobalIndex,
    })

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

    files.push({
        path: INDEX_PATH,
        content: mainIndexContent,
    })

    return files
}

const main = async () => {
    try {
        clean()
        const result = await parseSvgs()
        console.log(pc.blue(`Parsed ${result.icons.length} icons in ${result.groups.length} groups`))

        const csrFiles = await forEachIconGroupedBy(reactComponentFile)
        const ssrFiles = await forEachIconGroupedBy(reactSsrComponentFile)
        const defsFiles = await forEachIconGroupedBy(reactDefsFile)
        const indexFiles = generateIndexes(result.groups)

        writeFiles([...csrFiles, ...ssrFiles, ...defsFiles, ...indexFiles])
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
}

await main()
