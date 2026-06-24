#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import type { ParsedIcon, ParsedIconGroup } from '../../core/src/parser.ts'
import { forEachIcon, forEachIconGroupedBy, parseSvgs } from '../../core/src/parser.ts'
import { reactPerfComponentFile, type FileDefinition } from '../src/parser-hook.ts'

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

function toPascalCase(str: string): string {
    return str
        .split('-')
        .map(s => s.replace(/^\w/, c => c.toUpperCase()))
        .join('')
}

function generateIndexes(
    icons: ReadonlyArray<ParsedIcon>,
    groups: ReadonlyArray<ParsedIconGroup>
): FileDefinition[] {
    const files: FileDefinition[] = []

    // Per-style barrels
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
                    `export { ${icon.pascalName}Icon } from '../${WEIGHT_KEBAB[icon.style]}/${icon.name}';`
            )
            .join('\n')

        files.push({
            path: path.join(ICONS_PATH, 'style', `${weightKebab}.ts`),
            content: content ? `${content}\n` : '',
        })
    }

    // Generate styled.ts root with deduplicated named exports
    const seenGlobal = new Set<string>()
    const rootGlobalLines: string[] = []
    for (const icon of icons) {
        const globalName = toPascalCase(`${icon.name}-${icon.style}`) + 'Icon'
        if (seenGlobal.has(globalName)) continue
        seenGlobal.add(globalName)
        rootGlobalLines.push(
            `export { ${icon.pascalName}Icon as ${globalName} } from './${WEIGHT_KEBAB[icon.style]}/${icon.name}';`
        )
    }
    rootGlobalLines.sort()

    files.push({
        path: path.join(ICONS_PATH, 'styled.ts'),
        content: rootGlobalLines.join('\n') + '\n',
    })

    const stylesIndexContent = WEIGHTS.map(
        w => `export * as ${w} from './${WEIGHT_KEBAB[w]}';`
    ).join('\n')

    files.push({
        path: path.join(ICONS_PATH, 'style', 'index.ts'),
        content: `${stylesIndexContent}\n`,
    })

    const mainEntryContent = `/* GENERATED FILE */
export type { IconProps } from "./lib"
export { IconBase, SolarProvider, useSolar } from "./lib"
export type { SolarProviderProps } from "./lib"
export * from "./icons/styled"
`

    files.push({
        path: INDEX_PATH,
        content: mainEntryContent,
    })

    // Generate dynamic barrel index
    const dynamicBarrelContent = groups
        .map(g => {
            return `export { ${g.pascalName}Icon } from './${g.name}'\nexport type { ${g.pascalName}IconProps } from './${g.name}'`
        })
        .join('\n')

    files.push({
        path: path.join(ICONS_PATH, 'dynamic', 'index.ts'),
        content: dynamicBarrelContent + '\n',
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

function generateDynamicFile(group: ParsedIconGroup): FileDefinition {
    const groups = group.styles

    const styleImports = WEIGHTS.filter(w => groups[w])
        .map(w => {
            const icon = groups[w]!
            const kebab = WEIGHT_KEBAB[w]
            return `import { ${icon.pascalName}Icon as ${w} } from '../${kebab}/${icon.name}'`
        })
        .join('\n')

    const stylesObj = WEIGHTS.filter(w => groups[w])
        .map(w => {
            const kebab = WEIGHT_KEBAB[w]
            const key = kebab.includes('-') ? `'${kebab}'` : kebab
            return `        ${key}: ${w},`
        })
        .join('\n')

    const name = group.name
    const pascalName = group.pascalName

    const previews = WEIGHTS.filter(w => groups[w])
        .map(w => {
            const icon = groups[w]!
            return ` * ${w}\n * ![img](data:image/svg+xml;base64,${icon.preview})`
        })
        .join('\n *\n')

    const content = `/* GENERATED FILE */
import { DynamicIcon } from '../../lib/dynamic-icon'
import type { IconProps } from '../../lib/types'
${styleImports}

/**
${previews}
 */
export type ${pascalName}IconProps = Omit<IconProps, 'ref'>

export const ${pascalName}Icon = (props: ${pascalName}IconProps) => (
    <DynamicIcon
        {...props}
        styles={{
${stylesObj}
        }}
    />
)
`

    return {
        path: path.join(ICONS_PATH, 'dynamic', `${name}.tsx`),
        content,
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

        const allComponentFiles = await forEachIcon(reactPerfComponentFile)
        const seenPaths = new Set<string>()
        const componentFiles = allComponentFiles.filter(f => {
            if (seenPaths.has(f.path)) return false
            seenPaths.add(f.path)
            return true
        })
        const dynamicFiles = await forEachIconGroupedBy(ctx => generateDynamicFile(ctx.icon))
        const indexFiles = generateIndexes(result.icons, result.groups)
        writeFiles([...componentFiles, ...dynamicFiles, ...indexFiles])
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
}

await main()
