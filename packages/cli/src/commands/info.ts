import pc from 'picocolors'

import {
    type Framework,
    FRAMEWORKS,
    STYLES,
    importSnippet,
    rootImportSnippet,
    loadDescriptions,
    resolveSvgPath,
    cdnSvgUrl,
} from '../catalog.js'

export type InfoCliOptions = {
    json?: boolean
}

export function runInfo(name: string | undefined, opts: InfoCliOptions): void {
    if (!name) {
        console.error(pc.red('error: info requires <name>. Example: solar-icons info home'))
        process.exit(2)
    }
    const descs = loadDescriptions()
    const entry = descs.find(d => d.name === name)
    if (!entry) {
        console.error(pc.red(`error: icon '${name}' not found.`))
        process.exit(2)
    }

    const styles = [...STYLES]
    const frameworks = [...FRAMEWORKS] as Framework[]

    if (opts.json) {
        const payload = {
            name: entry.name,
            category: entry.category,
            categoryTags: entry.categoryTags,
            tags: entry.tags,
            styles,
            // per-file (style in path, generic name) — recommended, tree-shakable
            imports: Object.fromEntries(
                frameworks.map(fw => [fw, importSnippet(entry.name, 'linear', fw)])
            ),
            // root/top-level (style in name) — single import for multiple styles, no alias needed
            rootImports: Object.fromEntries(
                styles.map(s => [s, rootImportSnippet(entry.name, s as any, 'react')])
            ),
            // keep deprecated alias for backwards compat
            styleImports: Object.fromEntries(
                styles.map(s => [s, rootImportSnippet(entry.name, s as any, 'react')])
            ),
            svg: Object.fromEntries(
                styles.map(s => [
                    s,
                    resolveSvgPath(entry.name, s as any) ?? cdnSvgUrl(entry.name, s as any),
                ])
            ),
        }
        console.log(JSON.stringify(payload, null, 2))
        return
    }

    console.log(`${pc.bgCyan(pc.black(` ${entry.name} `))}  ${pc.dim(entry.category)}`)
    console.log(`${pc.bold('Tags')}         ${entry.tags.join(', ')}`)
    console.log(`${pc.bold('CategoryTags')} ${pc.dim(entry.categoryTags.join(', '))}`)
    console.log(
        `\n${pc.bold('Available styles')}  ${styles.map(s => pc.cyan(s)).join(pc.dim(' · '))}`
    )
    console.log(`\n${pc.bold(pc.underline('Imports — linear example (per-file, tree-shakable)'))}`)
    for (const fw of frameworks) {
        const fwLabel = pc.dim(fw.padEnd(14))
        console.log(`  ${fwLabel} ${pc.green(importSnippet(entry.name, 'linear', fw))}`)
    }
    console.log(
        `\n${pc.bold(pc.underline('All styles — per-file (generic name)'))}  ${pc.dim('import { ArrowUpIcon } from "@solar-icons/react/<style>/arrow-up"')}`
    )
    for (const s of styles) {
        console.log(
            `  ${pc.dim(s.padEnd(14))} ${pc.green(importSnippet(entry.name, s as any, 'react'))}`
        )
    }
    console.log(
        `\n${pc.bold(pc.underline('All styles — root (style in name)'))}  ${pc.dim('import { ArrowUpBoldIcon } from "@solar-icons/react"')}`
    )
    for (const s of styles) {
        console.log(
            `  ${pc.dim(s.padEnd(14))} ${pc.green(rootImportSnippet(entry.name, s as any, 'react'))}`
        )
    }
}
