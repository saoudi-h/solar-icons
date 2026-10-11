/**
 * Shared helpers for the Figma plugin icon packs. Pure functions only: this
 * module is imported by both the sandbox (`src/main`) and the UI (`src/ui`),
 * so it must never touch `figma`, `document`, or `window`.
 *
 * Model: the `linear` style ships inside the plugin bundle (offline from the
 * first open). The other five styles download once as per-category packs
 * from the versioned `@solar-icons/static` distribution on the jsDelivr CDN
 * and persist in `figma.clientStorage`, namespaced by catalog version.
 */

export const PACK_STYLES = [
    'bold',
    'bold-duotone',
    'broken',
    'linear',
    'line-duotone',
    'outline',
] as const

export type PackStyle = (typeof PACK_STYLES)[number]

export const EMBEDDED_STYLE: PackStyle = 'linear'

export const SVG_OPEN =
    '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke-width="1.5">'

export const SVG_CLOSE = '</svg>'

/** Rebuild a complete SVG document from a stored chunk body. */
export function expandBody(body: string): string {
    return `${SVG_OPEN}${body}${SVG_CLOSE}`
}

/** Immutable pack URL for one style × category chunk. */
export function packUrl(base: string, version: string, style: string, category: string): string {
    return `${base}@${version}/dist/figma/${style}-${category}.json`
}

/** `figma.clientStorage` key for one cached chunk. */
export function chunkKey(staticVersion: string, style: string, category: string): string {
    return `solar:pack:${staticVersion}:${style}:${category}`
}

/** True when a storage key belongs to an older catalog version. */
export function isStaleChunkKey(key: string, staticVersion: string): boolean {
    return key.startsWith('solar:pack:') && !key.startsWith(`solar:pack:${staticVersion}:`)
}

export type PackChunkFile = {
    version: string
    icons: Record<string, string>
}

/** Categories touched by a list of icon names, from the metadata index. */
export function categoriesFor(
    names: readonly string[],
    categoryOf: (name: string) => string | undefined
): string[] {
    const categories = new Set<string>()
    for (const name of names) {
        const category = categoryOf(name)
        if (category) categories.add(category)
    }
    return [...categories].sort()
}
