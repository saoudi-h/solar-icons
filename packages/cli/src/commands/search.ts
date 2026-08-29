import pc from 'picocolors'

import {
    type Style,
    STYLES,
    type Framework,
    FRAMEWORKS,
    loadDescriptions,
    importSnippet,
} from '../catalog.js'
import { searchCatalog } from '../search.js'

export type SearchCliOptions = {
    limit?: string
    style?: string
    category?: string
    framework?: string
    json?: boolean
}

function parseLimit(v?: string): number {
    if (!v) return 20
    const n = Number(v)
    if (!Number.isInteger(n) || n <= 0 || n > 200)
        throw new Error(`--limit must be 1..200. Received: '${v}'`)
    return n
}

function parseStyle(v?: string): Style | undefined {
    if (!v) return undefined
    if ((STYLES as readonly string[]).includes(v)) return v as Style
    throw new Error(`--style must be one of: ${STYLES.join(', ')}. Received: '${v}'`)
}

function parseFramework(v?: string): Framework | undefined {
    if (!v) return undefined
    if ((FRAMEWORKS as readonly string[]).includes(v)) return v as Framework
    throw new Error(`--framework must be one of: ${FRAMEWORKS.join(', ')}. Received: '${v}'`)
}

export function runSearch(query: string | undefined, opts: SearchCliOptions): void {
    if (!query) {
        console.error(pc.red('error: search query is required. Example: solar-icons search "home"'))
        process.exit(2)
    }
    const limit = parseLimit(opts.limit)
    const style = parseStyle(opts.style)
    const framework = parseFramework(opts.framework)

    const descs = loadDescriptions()
    const results = searchCatalog(descs, { query, limit, style, category: opts.category })

    if (opts.json) {
        const json = results.map(r => ({
            name: r.name,
            category: r.category,
            tags: r.tags,
            categoryTags: r.categoryTags,
            score: r.score,
            ...(framework ? { import: importSnippet(r.name, style ?? 'linear', framework) } : {}),
            ...(style ? { styleHint: style } : {}),
        }))
        console.log(JSON.stringify(json, null, 2))
        return
    }

    if (results.length === 0) {
        console.error(
            pc.yellow(`No match for "${query}". Try broader terms or: solar-icons categories`)
        )
        process.exit(2)
    }

    const nameW = Math.max(...results.map(r => r.name.length), 12)
    for (const r of results) {
        const name = pc.cyan(pc.bold(r.name.padEnd(nameW)))
        const cat = pc.dim(r.category.padEnd(16))
        const tags = pc.dim(r.tags.slice(0, 4).join(', '))
        const base = `  ${name}  ${cat}  ${tags}`
        if (framework) {
            const snippet = importSnippet(r.name, style ?? 'linear', framework)
            console.log(`${base}\n    ${pc.dim('→')} ${pc.green(snippet)}`)
        } else {
            console.log(base)
        }
    }
    console.log(
        pc.dim(
            `\n  ${results.length} result${results.length > 1 ? 's' : ''} — try --framework react or --json`
        )
    )
}
