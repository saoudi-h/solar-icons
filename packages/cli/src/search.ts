import type { IconDescription, Style } from './catalog.js'

export type SearchOptions = {
    query: string
    limit?: number
    style?: Style
    category?: string
}

export type SearchResult = IconDescription & {
    score: number
    styleHint: Style
}

function lc(s: string): string {
    return s.toLowerCase()
}

export function searchCatalog(
    descriptions: IconDescription[],
    opts: SearchOptions
): SearchResult[] {
    const q = opts.query.trim().toLowerCase()
    if (!q) return []
    const limit = opts.limit ?? 20
    const styleHint: Style = opts.style ?? 'linear'
    const terms = q.split(/\s+/).filter(Boolean)

    const filtered = opts.category
        ? descriptions.filter(d => lc(d.category) === lc(opts.category!))
        : descriptions

    const scored: SearchResult[] = []

    for (const d of filtered) {
        const nlc = lc(d.name)
        const tlc = (d.tags ?? []).map(lc).join(' ')
        const ctlc = (d.categoryTags ?? []).map(lc).join(' ')

        let score = 0
        if (nlc === q) score = 100
        else if (nlc.includes(q)) score = 50
        else if (terms.every(t => nlc.includes(t))) score = 40
        else if (tlc.includes(q)) score = 30
        else if (ctlc.includes(q)) score = 18
        else if (terms.every(t => (tlc + ' ' + ctlc).includes(t))) score = 15
        else if (terms.some(t => nlc.includes(t) || tlc.includes(t) || ctlc.includes(t))) score = 8
        else continue

        // boost category exact match slightly
        if (opts.category) score += 2

        scored.push({ ...d, score, styleHint })
    }

    scored.sort((a, b) => b.score - a.score || a.name.localeCompare(b.name))
    return scored.slice(0, limit)
}
