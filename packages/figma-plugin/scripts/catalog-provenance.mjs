import { createHash } from 'node:crypto'

export const CATALOG_SCHEMA_VERSION = 1
export const CATALOG_STYLE_SLUGS = [
    'bold',
    'bold-duotone',
    'broken',
    'linear',
    'line-duotone',
    'outline',
]

export function buildCatalogProvenance({ icons, metadata, packageVersion }) {
    const iconMap = parseJson(icons, 'icons')
    const descriptions = parseJson(metadata, 'metadata')

    if (!iconMap || Array.isArray(iconMap) || typeof iconMap !== 'object') {
        throw new Error('The embedded icon catalogue must be a JSON object.')
    }
    if (!Array.isArray(descriptions)) {
        throw new Error('The embedded icon metadata must be a JSON array.')
    }

    const canonicalKeys = new Set()
    const names = new Set()

    for (const description of descriptions) {
        if (!description || typeof description.name !== 'string' || description.name.length === 0) {
            throw new Error('Every icon metadata entry must have a non-empty name.')
        }
        if (names.has(description.name)) {
            throw new Error(`The icon metadata contains a duplicate name: ${description.name}`)
        }
        names.add(description.name)

        for (const style of CATALOG_STYLE_SLUGS) {
            const key = `${description.name}-${style}`
            if (!Object.prototype.hasOwnProperty.call(iconMap, key)) {
                throw new Error(`The icon catalogue is missing the canonical entry: ${key}`)
            }
            canonicalKeys.add(key)
        }
    }

    const mapEntryCount = Object.keys(iconMap).length
    const canonicalSvgCount = canonicalKeys.size
    const aliasSvgCount = mapEntryCount - canonicalSvgCount
    const catalogHash = createHash('sha256')
        .update(stableSerialize({ icons: iconMap, metadata: descriptions }))
        .digest('hex')

    return {
        schemaVersion: CATALOG_SCHEMA_VERSION,
        packageName: '@solar-icons/static',
        packageVersion,
        logicalIconCount: descriptions.length,
        styleCount: CATALOG_STYLE_SLUGS.length,
        canonicalSvgCount,
        aliasSvgCount,
        mapEntryCount,
        catalogHash: `sha256:${catalogHash}`,
    }
}

export function stableSerialize(value) {
    if (Array.isArray(value)) return `[${value.map(stableSerialize).join(',')}]`
    if (value && typeof value === 'object') {
        return `{${Object.keys(value)
            .sort()
            .map(key => `${JSON.stringify(key)}:${stableSerialize(value[key])}`)
            .join(',')}}`
    }
    return JSON.stringify(value)
}

function parseJson(value, label) {
    if (typeof value !== 'string') return value
    try {
        return JSON.parse(value)
    } catch (error) {
        throw new Error(`The ${label} catalogue data is not valid JSON.`, { cause: error })
    }
}
