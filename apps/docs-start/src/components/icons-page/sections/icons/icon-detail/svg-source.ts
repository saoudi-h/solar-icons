import type { IconStyle } from '~/generated/icon-chunk-loaders'

const stylesToExport = [
    'bold',
    'bold-duotone',
    'broken',
    'linear',
    'line-duotone',
    'outline',
] as const

const requests = new Map<string, Promise<Record<IconStyle, string>>>()

/** Rejected requests are evicted so a later click can retry after a network failure. */
export function loadSvgStyles(name: string): Promise<Record<IconStyle, string>> {
    const cached = requests.get(name)
    if (cached) return cached
    const request = import('~/generated/icon-svg-files.json')
        .then(async ({ default: files }) => {
            const filename = files[name as keyof typeof files]
            if (!filename) throw new Error(`Unknown SVG: ${name}`)
            const response = await fetch(`/data/icon-svgs/${filename}`)
            if (!response.ok) throw new Error(`Failed to fetch SVG (${response.status})`)
            const styles = (await response.json()) as Record<IconStyle, string>
            if (
                !styles ||
                !stylesToExport.every(
                    style => typeof styles[style] === 'string' && styles[style].startsWith('<svg ')
                )
            ) {
                throw new Error(`Invalid SVG response for ${name}`)
            }
            return styles
        })
        .catch((error: unknown) => {
            requests.delete(name)
            throw error
        })
    requests.set(name, request)
    return request
}

export async function fetchSvgText(name: string, style: IconStyle): Promise<string> {
    const styles = await loadSvgStyles(name)
    if (!styles[style]) throw new Error(`Missing SVG style: ${name}/${style}`)
    return styles[style]
}
