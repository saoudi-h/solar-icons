/**
 * Static replacement for the `next/image` optimizer.
 *
 * The Next app serves images through `/_next/image`, which resizes and
 * re-encodes them at request time. The static build cannot run that
 * endpoint, so the same optimization is applied during the build and the
 * result is served as a plain file. The width candidates and the encoder
 * settings mirror Next's defaults, so both apps send the browser the same
 * bytes and render the same pixels.
 */

/** Next's default `deviceSizes`. */
export const deviceSizes = [640, 750, 828, 1080, 1200, 1920, 2048, 3840].sort((a, b) => a - b)

/** Next's default `imageSizes`. */
export const imageSizes = [32, 48, 64, 96, 128, 256, 384]

/** Next's default `allSizes`. */
export const allSizes = [...deviceSizes, ...imageSizes].sort((a, b) => a - b)

/** Next's default image quality. */
export const defaultQuality = 75

export type ImageWidths = {
    widths: number[]
    kind: 'w' | 'x'
}

/**
 * Mirrors Next's `getWidths`: a `sizes` prop selects the width candidates,
 * a numeric `width` produces a 1x/2x pair, and everything else falls back
 * to the device widths.
 */
export function getWidths(width: number | undefined, sizes: string | undefined): ImageWidths {
    if (sizes) {
        const viewportWidthRe = /(^|\s)(1?\d?\d)vw/g
        const percentSizes: number[] = []
        let match: RegExpExecArray | null
        while ((match = viewportWidthRe.exec(sizes))) {
            percentSizes.push(Number.parseInt(match[2] as string, 10))
        }
        if (percentSizes.length > 0) {
            const smallestRatio = Math.min(...percentSizes) * 0.01
            const smallest = (deviceSizes[0] as number) * smallestRatio
            return {
                widths: allSizes.filter(size => size >= smallest),
                kind: 'w',
            }
        }
        return { widths: allSizes, kind: 'w' }
    }

    if (typeof width !== 'number') {
        return { widths: deviceSizes, kind: 'w' }
    }

    const widths = [
        ...new Set(
            [width, width * 2].map(
                candidate =>
                    allSizes.find(size => size >= candidate) ?? allSizes[allSizes.length - 1]!
            )
        ),
    ]
    return { widths, kind: 'x' }
}

export type OptimizedImageSource = {
    /** The `src` value the shared components pass to `next/image`. */
    src: string
    /** The file in `public/` that holds the original bytes. */
    file: string
}

/**
 * The images the shared components load through `next/image`. Every entry is
 * optimized during the build; the avatar is downloaded beforehand by
 * `fetch:avatar`.
 */
export const optimizedImageSources: OptimizedImageSource[] = [
    { src: '/blog-fallback-image.webp', file: '/blog-fallback-image.webp' },
    { src: '/icons-explorer-light.webp', file: '/icons-explorer-light.webp' },
    { src: '/icons-explorer-dark.webp', file: '/icons-explorer-dark.webp' },
    { src: '/figma-plugin-thumbnail.png', file: '/figma-plugin-thumbnail.png' },
    { src: '/saoudi-h.png', file: '/saoudi-h.png' },
    { src: 'https://github.com/saoudi-h.png?size=96', file: '/saoudi-h.png' },
]

function sourceKey(file: string): string {
    const name = file.slice(file.lastIndexOf('/') + 1)
    const dot = name.lastIndexOf('.')
    return dot === -1 ? name : name.slice(0, dot)
}

/**
 * The public URL of an optimized variant, or `null` when the source is not
 * part of the optimized set and has to be served as is.
 */
export function optimizedImageUrl(src: string, width: number): string | null {
    const source = optimizedImageSources.find(item => item.src === src)
    if (!source) return null
    return `/optimized/${sourceKey(source.file)}/${width}.webp`
}
