import descriptions from '@solar-icons/core/metadata-descriptions.json'
import type { IconDescription } from '@solar-icons/core'

export const ICONIFY_API = 'https://api.iconify.design'

export const SOURCE_DEFINITIONS = [
    {
        id: 'lucide',
        label: 'Lucide',
        prefix: 'lucide',
        license: 'ISC',
        url: 'https://lucide.dev/icons',
        iconifyUrl: 'https://icon-sets.iconify.design/lucide/',
    },
    {
        id: 'phosphor',
        label: 'Phosphor',
        prefix: 'ph',
        license: 'MIT',
        url: 'https://phosphoricons.com',
        iconifyUrl: 'https://icon-sets.iconify.design/ph/',
    },
    {
        id: 'hugeicons',
        label: 'Hugeicons',
        prefix: 'hugeicons',
        license: 'MIT',
        url: 'https://hugeicons.com/icons',
        iconifyUrl: 'https://icon-sets.iconify.design/hugeicons/',
    },
    {
        id: 'material',
        label: 'Material Symbols',
        prefix: 'material-symbols',
        license: 'Apache-2.0',
        url: 'https://fonts.google.com/icons',
        iconifyUrl: 'https://icon-sets.iconify.design/material-symbols/',
    },
    {
        id: 'tabler',
        label: 'Tabler',
        prefix: 'tabler',
        license: 'MIT',
        url: 'https://icon-sets.iconify.design/tabler/',
        iconifyUrl: 'https://icon-sets.iconify.design/tabler/',
    },
] as const

export type SourceId = (typeof SOURCE_DEFINITIONS)[number]['id']
export type SourceDefinition = (typeof SOURCE_DEFINITIONS)[number]

export type SolarStyle =
    | 'Bold'
    | 'BoldDuotone'
    | 'Broken'
    | 'Linear'
    | 'LineDuotone'
    | 'Outline'

export const SOLAR_STYLES: SolarStyle[] = [
    'Linear',
    'Bold',
    'Outline',
    'LineDuotone',
    'Broken',
    'BoldDuotone',
]

export interface SolarIconRecord {
    name: string
    displayName: string
    category: string
    tags: string[]
    categoryTags: string[]
    searchText: string
}

export interface IconifyCollectionResponse {
    prefix?: string
    total?: number
    title?: string
    uncategorized?: string[]
    categories?: Record<string, string[]>
    aliases?: Record<string, string>
    hidden?: string[]
}

export interface CollectionSnapshot {
    prefix: string
    total: number
    title: string
    names: string[]
    aliases: Record<string, string>
    hidden: string[]
    categoryByName: Partial<Record<string, string>>
}

export interface PreparedCollection extends CollectionSnapshot {
    tokenIndex: Map<string, string[]>
}

export interface CandidateEvidence {
    nameHits: string[]
    contextHits: string[]
    directName: boolean
}

export interface Candidate {
    sourceName: string
    sourceCategory?: string
    label: 'same name lead' | 'semantic lead' | 'context lead'
    evidence: CandidateEvidence
}

const iconDescriptions = descriptions as IconDescription[]

export const SOLAR_ICONS: SolarIconRecord[] = iconDescriptions
    .map(entry => ({
        name: entry.name,
        displayName: toDisplayName(entry.name),
        category: entry.category,
        tags: entry.tags,
        categoryTags: entry.categoryTags,
        searchText: [entry.name, entry.category, ...entry.tags, ...entry.categoryTags]
            .join(' ')
            .toLowerCase(),
    }))
    .sort((a, b) => a.name.localeCompare(b.name))

const STOP_TOKENS = new Set([
    'alt',
    'bold',
    'duotone',
    'filled',
    'fill',
    'icon',
    'light',
    'minimalistic',
    'outline',
    'regular',
    'round',
    'rounded',
    'small',
    'thin',
    'variant',
])

const TOKEN_ALIASES: Record<string, string[]> = {
    add: ['plus'],
    airbuds: ['airpod', 'airpods', 'earbud', 'earbuds'],
    airpod: ['airpods', 'earbud', 'earbuds'],
    airpods: ['airpod', 'earbud', 'earbuds'],
    earbud: ['airbuds', 'airpod', 'airpods', 'earbuds'],
    earbuds: ['airbuds', 'airpod', 'airpods', 'earbud'],
    plus: ['add'],
}

export function toDisplayName(name: string): string {
    return name
        .split('-')
        .map(part => part.charAt(0).toUpperCase() + part.slice(1))
        .join(' ')
}

export function normalizeName(name: string): string {
    return name
        .toLowerCase()
        .replace(/([a-z])(\d)/g, '$1-$2')
        .replace(/(\d)([a-z])/g, '$1-$2')
        .replace(/[^a-z0-9]+/g, '-')
        .replace(/^-|-$/g, '')
}

export function nameTokens(name: string): string[] {
    const tokens = normalizeName(name)
        .split('-')
        .filter(token => token.length > 1 && !STOP_TOKENS.has(token))

    return [...new Set(tokens.flatMap(token => {
        const singular = token.length > 4 && token.endsWith('s') && !token.endsWith('ss')
            ? [token.slice(0, -1)]
            : []
        return [token, ...singular, ...(TOKEN_ALIASES[token] ?? [])]
    }))]
}

export function collectionNames(payload: IconifyCollectionResponse): string[] {
    const categorized = Object.values(payload.categories ?? {}).flat()
    const aliases = Object.keys(payload.aliases ?? {})
    const canonicalAliases = Object.values(payload.aliases ?? {})

    return [
        ...(payload.uncategorized ?? []),
        ...categorized,
        ...aliases,
        ...canonicalAliases,
    ].filter((name, index, names) => names.indexOf(name) === index)
}

export function canonicalCollectionNames(snapshot: CollectionSnapshot): string[] {
    const aliasKeys = new Set(Object.keys(snapshot.aliases))
    const hidden = new Set(snapshot.hidden)

    return [...new Set([
        ...snapshot.names.filter(name => !aliasKeys.has(name)),
        ...Object.values(snapshot.aliases),
    ])].filter(name => !hidden.has(name))
}

export function collectionSnapshot(payload: IconifyCollectionResponse): CollectionSnapshot {
    const categoryByName: Partial<Record<string, string>> = {}

    for (const [category, names] of Object.entries(payload.categories ?? {})) {
        for (const name of names) categoryByName[name] = category
    }

    for (const name of payload.uncategorized ?? []) {
        categoryByName[name] ??= 'uncategorized'
    }

    for (const [alias, canonical] of Object.entries(payload.aliases ?? {})) {
        const category = categoryByName[canonical]
        if (category) categoryByName[alias] = category
    }

    return {
        prefix: payload.prefix ?? '',
        total: payload.total ?? collectionNames(payload).length,
        title: payload.title ?? payload.prefix ?? 'Icon set',
        names: collectionNames(payload),
        aliases: payload.aliases ?? {},
        hidden: payload.hidden ?? [],
        categoryByName,
    }
}

export function prepareCollection(snapshot: CollectionSnapshot): PreparedCollection {
    const names = canonicalCollectionNames(snapshot)
    const tokenIndex = new Map<string, string[]>()

    for (const name of names) {
        for (const token of nameTokens(name)) {
            const values = tokenIndex.get(token) ?? []
            values.push(name)
            tokenIndex.set(token, values)
        }
    }

    return { ...snapshot, tokenIndex }
}

export function candidatesFor(
    icon: SolarIconRecord,
    collection: PreparedCollection,
    limit = 4
): Candidate[] {
    const nameQuery = new Set(nameTokens(icon.name))
    const contextQuery = new Set([
        ...nameTokens(icon.category),
        ...icon.tags.flatMap(nameTokens),
        ...icon.categoryTags.flatMap(nameTokens),
    ])
    const pool = new Set<string>()

    for (const token of new Set([...nameQuery, ...contextQuery])) {
        for (const name of collection.tokenIndex.get(token) ?? []) pool.add(name)
    }

    return [...pool]
        .map(sourceName => {
            const candidateTokens = new Set(nameTokens(sourceName))
            const nameHits = [...nameQuery].filter(token => candidateTokens.has(token))
            const contextHits = [...contextQuery].filter(token => candidateTokens.has(token))
            const directName = normalizeName(icon.name) === normalizeName(sourceName)
            const nameRecall = nameHits.length / Math.max(nameQuery.size, 1)
            const namePrecision = nameHits.length / Math.max(candidateTokens.size, 1)
            const contextRecall = Math.min(contextHits.length / 3, 1)
            return {
                candidate: {
                    sourceName,
                    sourceCategory: collection.categoryByName[sourceName],
                    label: directName ? 'same name lead' : nameHits.length > 0 ? 'semantic lead' : 'context lead',
                    evidence: { nameHits, contextHits, directName },
                } satisfies Candidate,
                relevance: nameRecall * 0.52 + namePrecision * 0.3 + contextRecall * 0.18 + (directName ? 0.25 : 0),
            }
        })
        .filter(candidate => {
            return candidate.relevance >= 0.15
        })
        .sort((a, b) => b.relevance - a.relevance || a.candidate.sourceName.localeCompare(b.candidate.sourceName))
        .slice(0, limit)
        .map(item => item.candidate)
}

export function iconifySvgUrl(source: SourceDefinition, name: string): string {
    return `${ICONIFY_API}/${source.prefix}/${encodeURIComponent(name)}.svg?height=96`
}
