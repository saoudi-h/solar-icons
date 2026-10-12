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

/** jsDelivr origin serving the published static distribution. */
export const PACK_ORIGIN = 'https://cdn.jsdelivr.net'

/** Icons per combine request: keeps URLs far under length limits. */
export const COMBINE_BATCH_SIZE = 40

/** Rebuild a complete SVG document from a stored chunk body. */
export function expandBody(body: string): string {
    return `${SVG_OPEN}${body}${SVG_CLOSE}`
}

/**
 * Batched jsDelivr combine URLs covering every icon, preserving order.
 * Each URL concatenates up to COMBINE_BATCH_SIZE individual published SVGs.
 */
export function combineUrls(
    origin: string,
    version: string,
    style: string,
    names: readonly string[]
): string[] {
    const urls: string[] = []
    for (let index = 0; index < names.length; index += COMBINE_BATCH_SIZE) {
        const files = names
            .slice(index, index + COMBINE_BATCH_SIZE)
            .map(name => `npm/@solar-icons/static@${version}/dist/icons/${style}/${name}.svg`)
            .join(',')
        urls.push(`${origin}/combine/${files}`)
    }
    return urls
}

/** Split a combine response back into individual SVG documents. */
export function splitCombined(text: string): string[] {
    return text.split(/(?=<svg[\s>])/).filter(part => part.trim().length > 0)
}

const CLASS_PATTERN = /class="solar solar-([a-z0-9-]+)"/
const KNOWN_STYLES = ['bold-duotone', 'line-duotone', 'bold', 'broken', 'linear', 'outline']

/** Canonical icon name from a published SVG document. Null when unparseable. */
export function canonicalName(svg: string): string | null {
    const match = svg.match(CLASS_PATTERN)
    if (!match) return null
    const full = match[1]
    for (const style of KNOWN_STYLES) {
        if (full.endsWith(`-${style}`)) return full.slice(0, -(style.length + 1))
    }
    return null
}

/**
 * Minified chunk body: wrapper stripped, inter-tag whitespace collapsed.
 * Coordinates, colors, and attributes are untouched.
 */
export function normalizeBody(svg: string): string {
    return svg
        .replace(/^[\s\S]*?<svg[^>]*>/, '')
        .replace(/<\/svg>\s*$/, '')
        .replace(/>\s+</g, '><')
        .trim()
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
