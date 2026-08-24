#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'

import {
    buildDeprecatedAliasMap,
    forEachIcon,
    forEachIconGroupedBy,
    parseSvgs,
    toPascalCase,
    WEIGHT_MAP,
    WEIGHTS,
    type DeprecatedIconAlias,
    type IconDescription,
    type ParsedIcon,
    type ParsedIconGroup,
    type Weight,
} from '@solar-icons/core'
import rawDescriptions from '@solar-icons/core/metadata-descriptions.json' with { type: 'json' }
import pc from 'picocolors'

import { vueComponentFile, type FileDefinition } from './parser-hook'

const descriptions = rawDescriptions as readonly IconDescription[]

const ICONS_PATH = path.resolve(import.meta.dirname, '../src/icons')
const INDEX_PATH = path.resolve(import.meta.dirname, '../src/index.ts')

function generateIndexes(
    icons: ReadonlyArray<ParsedIcon>,
    groups: ReadonlyArray<ParsedIconGroup>,
    deprecatedAliases: ReadonlyMap<string, DeprecatedIconAlias[]>
): FileDefinition[] {
    const files: FileDefinition[] = []

    for (const weight of WEIGHTS) {
        const iconsForWeight = icons.filter(i => i.style === weight)
        const weightKebab = WEIGHT_MAP[weight]
        const seen = new Set<string>()
        const content = [
            iconsForWeight
                .sort((a, b) => a.pascalName.localeCompare(b.pascalName))
                .filter(icon => {
                    if (seen.has(icon.pascalName)) return false
                    seen.add(icon.pascalName)
                    return true
                })
                .map(
                    icon =>
                        `export { ${icon.pascalName}Icon } from '../${WEIGHT_MAP[icon.style]}/${icon.name}';`
                )
                .join('\n'),
            ...iconsForWeight.flatMap(icon =>
                (deprecatedAliases.get(icon.name) ?? []).map(
                    alias =>
                        `/** @deprecated ${alias.reason}. Use ${icon.pascalName}Icon instead. */\nexport { ${toPascalCase(alias.name)}Icon } from '../${WEIGHT_MAP[icon.style]}/${alias.name}';`
                )
            ),
        ].join('\n')

        files.push({
            path: path.join(ICONS_PATH, 'style', `${weightKebab}.ts`),
            content: content ? `${content}\n` : '',
        })
    }

    const seenGlobal = new Set<string>()
    const rootGlobalLines: string[] = []
    for (const icon of icons) {
        const globalName = toPascalCase(`${icon.name}-${icon.style}`) + 'Icon'
        if (seenGlobal.has(globalName)) continue
        seenGlobal.add(globalName)
        rootGlobalLines.push(
            `export { ${icon.pascalName}Icon as ${globalName} } from './${WEIGHT_MAP[icon.style]}/${icon.name}';`
        )
        for (const alias of deprecatedAliases.get(icon.name) ?? []) {
            rootGlobalLines.push(
                `/** @deprecated ${alias.reason}. Use ${globalName} instead. */\nexport { ${toPascalCase(alias.name)}Icon as ${toPascalCase(`${alias.name}-${icon.style}`)}Icon } from './${WEIGHT_MAP[icon.style]}/${alias.name}';`
            )
        }
    }
    rootGlobalLines.sort()

    files.push({
        path: path.join(ICONS_PATH, 'styled.ts'),
        content: rootGlobalLines.join('\n') + '\n',
    })

    const stylesIndexContent = WEIGHTS.map(w => `export * as ${w} from './${WEIGHT_MAP[w]}';`).join(
        '\n'
    )

    files.push({
        path: path.join(ICONS_PATH, 'style', 'index.ts'),
        content: `${stylesIndexContent}\n`,
    })

    const mainEntryContent = `/* GENERATED FILE */
export type { IconProps } from "./lib/types"
export { IconBase, SolarProvider, useSolar, IconStyle } from "./lib"
export * from "./icons/styled"
`

    files.push({
        path: INDEX_PATH,
        content: mainEntryContent,
    })

    const dynamicBarrelContent = [
        ...groups.map(g => `export { ${g.pascalName}Icon } from './${g.name}'`),
        ...groups.flatMap(group =>
            (deprecatedAliases.get(group.name) ?? []).map(
                alias =>
                    `/** @deprecated ${alias.reason}. Use ${group.pascalName}Icon instead. */\nexport { ${toPascalCase(alias.name)}Icon } from './${alias.name}'`
            )
        ),
    ].join('\n')

    files.push({
        path: path.join(ICONS_PATH, 'dynamic', 'index.ts'),
        content: dynamicBarrelContent + '\n',
    })

    return files
}

function generateDeprecatedAliasFiles(
    icons: ReadonlyArray<ParsedIcon>,
    groups: ReadonlyArray<ParsedIconGroup>,
    deprecatedAliases: ReadonlyMap<string, DeprecatedIconAlias[]>
): FileDefinition[] {
    const files: FileDefinition[] = []
    for (const icon of icons) {
        for (const alias of deprecatedAliases.get(icon.name) ?? []) {
            const aliasPascalName = toPascalCase(alias.name)
            files.push({
                path: path.join(ICONS_PATH, icon.styleKebab, `${alias.name}.ts`),
                content: `/* GENERATED FILE */
import { ${icon.pascalName}Icon } from './${icon.name}'

/** @deprecated ${alias.reason}. Use ${icon.pascalName}Icon instead. */
export const ${aliasPascalName}Icon = ${icon.pascalName}Icon
`,
            })
        }
    }
    for (const group of groups) {
        for (const alias of deprecatedAliases.get(group.name) ?? []) {
            const aliasPascalName = toPascalCase(alias.name)
            files.push({
                path: path.join(ICONS_PATH, 'dynamic', `${alias.name}.ts`),
                content: `/* GENERATED FILE */
import { ${group.pascalName}Icon } from './${group.name}'

/** @deprecated ${alias.reason}. Use ${group.pascalName}Icon instead. */
export const ${aliasPascalName}Icon = ${group.pascalName}Icon
`,
            })
        }
    }
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
    const groups = group.styles as Readonly<Partial<Record<Weight, ParsedIcon>>>
    const name = group.name
    const pascalName = group.pascalName

    const styleImports = WEIGHTS.filter(w => groups[w])
        .map(w => {
            const icon = groups[w]!
            const kebab = WEIGHT_MAP[w]
            return `import { ${pascalName}Icon as ${w} } from '../${kebab}/${icon.name}'`
        })
        .join('\n')

    const stylesObj = WEIGHTS.filter(w => groups[w])
        .map(w => {
            const kebab = WEIGHT_MAP[w]
            const key = kebab.includes('-') ? `'${kebab}'` : kebab
            return `            ${key}: ${w},`
        })
        .join('\n')

    const previews = WEIGHTS.filter(w => groups[w])
        .map(w => {
            const icon = groups[w]!
            return ` * ![img](data:image/svg+xml;base64,${icon.preview}) ${w}`
        })
        .join('\n *\n')

    const content = `/* GENERATED FILE */
import { h } from 'vue'
import DynamicIcon from '../../lib/dynamic-icon.vue'
import type { DynamicIconProps } from '../../lib/types'
${styleImports}

/**
${previews}
 */
export const ${pascalName}Icon = (props: DynamicIconProps, { attrs }: { attrs: Record<string, unknown> }) => {
    return h(DynamicIcon, {
        ...attrs,
        ...props,
        styles: {
${stylesObj}
        },
    })
}
`

    return {
        path: path.join(ICONS_PATH, 'dynamic', `${name}.ts`),
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
        const result = await parseSvgs({
            svgsDir: path.resolve(import.meta.dirname, '../../core/svgs'),
        })
        console.log(
            pc.blue(`Parsed ${result.icons.length} icons in ${result.groups.length} groups`)
        )

        const allComponentFiles = await forEachIcon(vueComponentFile)
        const seenPaths = new Set<string>()
        const componentFiles = allComponentFiles.filter(f => {
            if (seenPaths.has(f.path)) return false
            seenPaths.add(f.path)
            return true
        })
        const dynamicFiles = await forEachIconGroupedBy(ctx => generateDynamicFile(ctx.icon))
        const deprecatedAliases = buildDeprecatedAliasMap(descriptions)
        const indexFiles = generateIndexes(result.icons, result.groups, deprecatedAliases)
        const aliasFiles = generateDeprecatedAliasFiles(
            result.icons,
            result.groups,
            deprecatedAliases
        )
        writeFiles([...componentFiles, ...dynamicFiles, ...aliasFiles, ...indexFiles])
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
}

await main()
