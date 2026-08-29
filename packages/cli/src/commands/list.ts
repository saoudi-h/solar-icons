import pc from 'picocolors'

import { STYLES, listCategories, loadDescriptions } from '../catalog.js'

export type ListCliOptions = {
    category?: string
    style?: string
    json?: boolean
    limit?: string
}

export function runList(opts: ListCliOptions): void {
    const category = opts.category
    const style = opts.style
    if (style && !(STYLES as readonly string[]).includes(style)) {
        console.error(
            pc.red(`error: --style must be one of: ${STYLES.join(', ')}. Received: '${style}'`)
        )
        process.exit(2)
    }
    const limit = opts.limit ? Number(opts.limit) : 50
    if (opts.limit && (!Number.isInteger(limit) || limit <= 0 || limit > 2000)) {
        console.error(pc.red(`error: --limit must be 1..2000. Received: '${opts.limit}'`))
        process.exit(2)
    }

    const descs = loadDescriptions()
    const filtered = category ? descs.filter(d => d.category === category) : descs

    if (category && filtered.length === 0) {
        console.error(pc.yellow(`No icons in category '${category}'. Try: solar-icons categories`))
        process.exit(2)
    }

    const slice = filtered.slice(0, limit)

    if (opts.json) {
        console.log(
            JSON.stringify(
                slice.map(d => ({
                    name: d.name,
                    category: d.category,
                    tags: d.tags,
                    ...(style
                        ? { style, import: `@solar-icons/{react,…}/${style}/${d.name}` }
                        : {}),
                })),
                null,
                2
            )
        )
        return
    }

    const nameW = Math.max(...slice.map(d => d.name.length), 12)
    for (const d of slice) {
        const name = pc.cyan(pc.bold(d.name.padEnd(nameW)))
        const cat = pc.dim(d.category.padEnd(16))
        if (style) console.log(`  ${name}  ${cat}  ${pc.dim(`${style}/${d.name}`)}`)
        else console.log(`  ${name}  ${cat}`)
    }
    if (filtered.length > slice.length) {
        console.log(
            pc.dim(
                `\n  … ${filtered.length - slice.length} more — use --limit ${filtered.length} or --json`
            )
        )
    } else {
        console.log(pc.dim(`\n  ${slice.length} shown`))
    }
}

export function runCategories(opts: { json?: boolean }): void {
    const cats: string[] = listCategories()
    if (opts.json) console.log(JSON.stringify(cats, null, 2))
    else for (const c of cats) console.log(c)
}

export function runStyles(opts: { json?: boolean }): void {
    if (opts.json) console.log(JSON.stringify(STYLES, null, 2))
    else {
        for (const s of STYLES) console.log(s)
        console.log(
            pc.dim(
                '\nProvider tokens: --solar-color, --solar-size, --solar-stroke-width, --solar-secondary-color, --solar-secondary-opacity'
            )
        )
    }
}
