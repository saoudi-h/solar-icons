#!/usr/bin/env node
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

import type { ParsedIcon, ParsedIconGroup } from '../../core/src/parser.ts'
import { forEachIcon, forEachIconGroupedBy, parseSvgs } from '../../core/src/parser.ts'
import { angularComponentFile, type FileDefinition } from './parser-hook.ts'

const ICONS_PATH = path.resolve(import.meta.dirname, '../src/icons')
const INDEX_PATH = path.resolve(import.meta.dirname, '../src/public-api.ts')

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

    for (const weight of WEIGHTS) {
        const iconsForWeight = icons.filter(i => i.style === weight)
        const weightKebab = WEIGHT_KEBAB[weight]
        const seen = new Set<string>()
        const content = iconsForWeight
            .sort((a, b) => a.pascalName.localeCompare(b.pascalName))
            .filter(icon => {
                const globalName = toPascalCase(`${icon.name}-${icon.style}`)
                if (seen.has(globalName)) return false
                seen.add(globalName)
                return true
            })
            .map(icon => {
                const globalName = toPascalCase(`${icon.name}-${icon.style}`)
                return `export { ${globalName}Icon } from '../${weightKebab}/${icon.name}-${weightKebab}';`
            })
            .join('\n')

        files.push({
            path: path.join(ICONS_PATH, 'style', `${weightKebab}.ts`),
            content: content ? `${content}\n` : '',
        })
    }

    const seenStyled = new Set<string>()
    const styledLines: string[] = []
    for (const icon of icons) {
        const globalName = toPascalCase(`${icon.name}-${icon.style}`)
        if (seenStyled.has(globalName)) continue
        seenStyled.add(globalName)
        const sk = WEIGHT_KEBAB[icon.style]
        styledLines.push(`export { ${globalName}Icon } from './${sk}/${icon.name}-${sk}';`)
    }
    styledLines.sort()

    files.push({
        path: path.join(ICONS_PATH, 'styled.ts'),
        content: styledLines.join('\n') + '\n',
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
export * from './icons/styled';
`

    files.push({
        path: INDEX_PATH,
        content: mainEntryContent,
    })

    const stylesIndexContent = WEIGHTS.map(
        w => `export * as ${w} from './${WEIGHT_KEBAB[w]}';`
    ).join('\n')

    files.push({
        path: path.join(ICONS_PATH, 'style', 'index.ts'),
        content: `${stylesIndexContent}\n`,
    })

    const dynamicBarrelContent = groups
        .map(g => `export { ${g.pascalName}Icon } from './${g.name}-dynamic'`)
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
    const name = group.name
    const pascalName = group.pascalName
    const weightUnion = "'Bold' | 'BoldDuotone' | 'Broken' | 'Linear' | 'LineDuotone' | 'Outline'"

    const imports = WEIGHTS.filter(w => groups[w])
        .map(w => {
            const icon = groups[w]!
            const sk = WEIGHT_KEBAB[w]
            const globalName = toPascalCase(`${icon.name}-${icon.style}`)
            return `import { ${globalName}Icon } from '../${sk}/${icon.name}-${sk}'`
        })
        .join('\n')

    const conditions = WEIGHTS.filter(w => groups[w])
        .map((w, i) => {
            const globalName = toPascalCase(`${name}-${w}`)
            const prefix = i === 0 ? '@if (!weight() || weight() ===' : '@else if (weight() ==='
            return `        ${prefix} ${JSON.stringify(w)}) {
            <svg solar${globalName}Icon [size]="size()" [color]="color()" [strokeWidth]="strokeWidth()"
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

    const content = `/* GENERATED FILE */
import {
    ChangeDetectionStrategy,
    Component,
    input,
    ViewEncapsulation,
} from '@angular/core'
import { IconBase } from '../../lib/icon-base'
${imports}

/**
${previews}
 */
@Component({
    selector: 'svg[solar${pascalName}Icon]',
    template: \`
${conditions}
    \`,
    standalone: true,
    encapsulation: ViewEncapsulation.None,
    changeDetection: ChangeDetectionStrategy.OnPush,
    imports: [${WEIGHTS.filter(w => groups[w])
        .map(w => `${toPascalCase(`${name}-${w}`)}Icon`)
        .join(', ')}],
    host: {
        'class': 'solar-icon solar-${name}',
    },
})
export class ${pascalName}Icon extends IconBase {
    readonly weight = input<${weightUnion}>()
}
`

    return {
        path: path.join(ICONS_PATH, 'dynamic', `${name}-dynamic.ts`),
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
