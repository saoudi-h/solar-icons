#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import {
    forEachIcon,
    forEachIconGroupedBy,
    parseSvgs,
    toPascalCase,
    WEIGHT_MAP,
    type ParsedIcon,
    type ParsedIconGroup,
} from '@solar-icons/core'
import { angularComponentFile, type FileDefinition } from './parser-hook'

const ICONS_PATH = path.resolve(import.meta.dirname, '../src/icons')
const DYNAMIC_PATH = path.resolve(import.meta.dirname, '../src/dynamic')
const INDEX_PATH = path.resolve(import.meta.dirname, '../src/public-api.ts')

const WEIGHTS = ['Bold', 'BoldDuotone', 'Broken', 'Linear', 'LineDuotone', 'Outline'] as const

function generateIndexes(
    icons: ReadonlyArray<ParsedIcon>,
    groups: ReadonlyArray<ParsedIconGroup>
): FileDefinition[] {
    const files: FileDefinition[] = []

    // icons/index.ts — barrel for all static icon components
    const seenIcons = new Set<string>()
    const iconLines: string[] = []

    for (const icon of icons) {
        const globalName = toPascalCase(`${icon.name}-${icon.style}`)
        if (seenIcons.has(globalName)) continue
        seenIcons.add(globalName)
        const sk = WEIGHT_MAP[icon.style]
        iconLines.push(`export { Solar${globalName} } from './${icon.name}-${sk}';`)
    }

    iconLines.sort()

    files.push({
        path: path.join(ICONS_PATH, 'index.ts'),
        content: iconLines.join('\n') + '\n',
    })

    // dynamic/index.ts — barrel for all dynamic wrapper components
    const dynamicLines: string[] = []

    for (const group of groups) {
        dynamicLines.push(`export { Solar${group.pascalName} } from './${group.name}';`)
    }

    dynamicLines.sort()

    files.push({
        path: path.join(DYNAMIC_PATH, 'index.ts'),
        content: dynamicLines.join('\n') + '\n',
    })

    // all-icons.types.ts — union of all icon names with Solar prefix
    const allStaticNames = icons.map(i => `'Solar${toPascalCase(`${i.name}-${i.style}`)}'`).sort()
    const allDynamicNames = groups.map(g => `'Solar${g.pascalName}'`).sort()
    const allNames = [...allStaticNames, ...allDynamicNames].join(' | ')

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
export * from './dynamic';
`

    files.push({
        path: INDEX_PATH,
        content: mainEntryContent,
    })

    return files
}

function clean() {
    for (const p of [ICONS_PATH, DYNAMIC_PATH, INDEX_PATH]) {
        if (fs.existsSync(p)) {
            fs.rmSync(p, { recursive: true, force: true })
            console.log(pc.blue(`Removed ${p}`))
        }
    }
}

function generateDynamicFile(group: ParsedIconGroup): FileDefinition {
    const groups = group.styles
    const name = group.name
    const pascalName = group.pascalName
    const weightUnion = "'Bold' | 'BoldDuotone' | 'Broken' | 'Linear' | 'LineDuotone' | 'Outline'"

    const imports = WEIGHTS.filter(w => groups[w])
        .map(w => {
            const icon = groups[w]!
            const sk = WEIGHT_MAP[w]
            const globalName = toPascalCase(`${icon.name}-${icon.style}`)
            return `import { Solar${globalName} } from '../icons/${icon.name}-${sk}'`
        })
        .join('\n')

    const conditions = WEIGHTS.filter(w => groups[w])
        .map((w, i) => {
            const globalName = toPascalCase(`${name}-${w}`)
            const prefix = i === 0 ? '@if (!weight() || weight() ===' : '@else if (weight() ==='
            return `        ${prefix} ${JSON.stringify(w)}) {
            <svg solar${globalName} [size]="size()" [color]="color()" [strokeWidth]="strokeWidth()"
                [secondaryColor]="secondaryColor()" [secondaryOpacity]="secondaryOpacity()" [alt]="alt()" />
        }`
        })
        .join('\n')

    const previews = WEIGHTS.filter(w => groups[w])
        .map(w => {
            const icon = groups[w]!
            return ` * ![img](data:image/svg+xml;base64,${icon.preview}) ${w}`
        })
        .join('\n *\n')

    const componentName = `Solar${pascalName}`

    const content = `/* GENERATED FILE */
import {
    ChangeDetectionStrategy,
    Component,
    input,
    ViewEncapsulation,
} from '@angular/core'
import { IconBase } from '../lib/icon-base'
${imports}

/**
${previews}
 */
@Component({
    selector: 'svg[solar${pascalName}]',
    template: \`
${conditions}
    \`,
    standalone: true,
    encapsulation: ViewEncapsulation.None,
    changeDetection: ChangeDetectionStrategy.OnPush,
    imports: [${WEIGHTS.filter(w => groups[w])
        .map(w => `Solar${toPascalCase(`${name}-${w}`)}`)
        .join(', ')}],
})
export class ${componentName} extends IconBase {
    readonly weight = input<${weightUnion}>()
}
`

    return {
        path: path.join(DYNAMIC_PATH, `${name}.ts`),
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

        const allComponentFiles = await forEachIcon(angularComponentFile)
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
