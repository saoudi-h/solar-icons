'use client'
import { useSolar } from '@solar-icons/react/lib/SolarProvider'
import { CopyIcon } from '@solar-icons/react/linear/copy'
import { DownloadMinimalisticIcon } from '@solar-icons/react/linear/download-minimalistic'
import { LinkMinimalistic2Icon } from '@solar-icons/react/linear/link-minimalistic-2'
import fileSaver from 'file-saver'
import { useEffect, useState, type FC } from 'react'
import { toast } from 'sonner'

import type { IconStyle } from '~/generated/icon-chunk-loaders'
import { cn } from '~/lib/utils'

import {
    DEFAULT_VALUES,
    useSelectedIcon,
    useStyleURL,
    useThemeDefaultColors,
    weightToStyleSlug,
} from '../context'
import { fetchSvgText, loadSvgStyles } from './svg-source'

/**
 * Takes a clean SVG string generated with the site and replaces
 * `currentColor`, CSS variable references, and dimensions with
 * concrete values so the SVG can be rasterized in a canvas context
 * (which has no CSS inheritance).
 */
function resolveSvgForRaster(
    svgText: string,
    options: {
        color: string
        size: number
        strokeWidth: number
        secondaryColor: string
        secondaryOpacity: number
    }
): string {
    const parser = new DOMParser()
    const doc = parser.parseFromString(svgText, 'image/svg+xml')
    const svg = doc.documentElement

    // Set explicit pixel dimensions for the canvas
    svg.setAttribute('width', String(options.size))
    svg.setAttribute('height', String(options.size))

    // Set stroke-width on root (child overrides are preserved)
    svg.setAttribute('stroke-width', String(options.strokeWidth))

    // Strip class — not needed for rasterization
    svg.removeAttribute('class')

    // Walk all descendants and resolve currentColor + duotone vars
    const allElements = svg.querySelectorAll('*')
    for (const el of allElements) {
        const style = el.getAttribute('style') ?? ''
        const accent =
            style.includes('--solar-secondary-color') || style.includes('--solar-secondary-opacity')
        // Both filled and stroked accents use the secondary color. Leaving
        // CSS variables in an image document loses the toolbar's settings.
        for (const attribute of ['fill', 'stroke']) {
            if (el.getAttribute(attribute) === 'currentColor') {
                el.setAttribute(attribute, accent ? options.secondaryColor : options.color)
            }
        }
        if (accent) {
            el.removeAttribute('style')
            el.setAttribute('opacity', String(options.secondaryOpacity))
        }
    }

    return new XMLSerializer().serializeToString(svg)
}

/**
 * Fetch the clean SVG from the site, resolve inline values from the
 * current filter-bar settings, and render onto a canvas.
 */
async function renderToCanvas(
    iconName: string,
    styleSlug: IconStyle,
    options: {
        color: string
        size: number
        strokeWidth: number
        secondaryColor: string
        secondaryOpacity: number
    }
): Promise<HTMLCanvasElement> {
    const svgText = await fetchSvgText(iconName, styleSlug)
    const resolved = resolveSvgForRaster(svgText, options)

    const canvas = document.createElement('canvas')
    canvas.width = options.size
    canvas.height = options.size
    const ctx = canvas.getContext('2d')
    if (!ctx) throw new Error('Canvas context not available')

    const img = new Image()
    await new Promise<void>((resolve, reject) => {
        img.onload = () => {
            ctx.drawImage(img, 0, 0, options.size, options.size)
            URL.revokeObjectURL(img.src)
            resolve()
        }
        img.onerror = () => {
            URL.revokeObjectURL(img.src)
            reject(new Error('SVG rendering failed'))
        }
        const blob = new Blob([resolved], { type: 'image/svg+xml;charset=utf-8' })
        img.src = URL.createObjectURL(blob)
    })

    return canvas
}

export const Actions: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()
    const {
        color: solarColor,
        size: solarSize,
        strokeWidth: solarStrokeWidth,
        secondaryColor,
        secondaryOpacity,
    } = useSolar()
    const themeDefaults = useThemeDefaultColors()

    const [busy, setBusy] = useState<string | null>(null)
    const name = selectedIcon?.name
    useEffect(() => {
        if (name)
            void loadSvgStyles(name).catch(() => {
                /* The action reports errors and allows retries. */
            })
    }, [name])

    if (!selectedIcon) return null

    const styleSlug = weightToStyleSlug(weight)
    const color = solarColor ?? themeDefaults.color
    const size = Number(solarSize ?? DEFAULT_VALUES.size)
    const strokeWidth = Number(solarStrokeWidth ?? DEFAULT_VALUES.strokeWidth)
    const duotoneColor = secondaryColor ?? themeDefaults.secondaryColor
    const duotoneOpacity = Number(secondaryOpacity ?? DEFAULT_VALUES.secondaryOpacity)

    const rasterOptions = {
        color,
        size,
        strokeWidth,
        secondaryColor: duotoneColor,
        secondaryOpacity: duotoneOpacity,
    }

    const run = async (action: string, task: () => Promise<void>) => {
        if (busy) return
        setBusy(action)
        try {
            await task()
        } finally {
            setBusy(null)
        }
    }

    // SVG exports preserve the clean source; PNG exports use the toolbar settings.

    const handleDownloadSVG = async () => {
        try {
            const svgText = await fetchSvgText(selectedIcon.name, styleSlug)
            const blob = new Blob([svgText], { type: 'image/svg+xml;charset=utf-8' })
            fileSaver.saveAs(blob, `${selectedIcon.name}-${styleSlug}.svg`)
            toast.success('SVG downloaded')
        } catch (error) {
            console.error('SVG download error:', error)
            toast.error('Failed to download SVG')
        }
    }

    const handleCopySVG = async () => {
        try {
            const source = fetchSvgText(selectedIcon.name, styleSlug)
            if (typeof ClipboardItem !== 'undefined') {
                // Start writing during the click, preserving Safari's user activation.
                await navigator.clipboard.write([
                    new ClipboardItem({
                        'text/plain': source.then(svg => new Blob([svg], { type: 'text/plain' })),
                    }),
                ])
            } else {
                await navigator.clipboard.writeText(await source)
            }
            toast.success('SVG copied to clipboard')
        } catch (error) {
            console.error('SVG copy error:', error)
            toast.error('Failed to copy SVG')
        }
    }

    // --- PNG actions: rasterized with the user's filter-bar settings ---

    const handleDownloadPNG = async () => {
        try {
            const canvas = await renderToCanvas(selectedIcon.name, styleSlug, rasterOptions)
            const blob = await new Promise<Blob | null>(resolve =>
                canvas.toBlob(resolve, 'image/png')
            )
            if (!blob) throw new Error('PNG blob creation failed')
            fileSaver.saveAs(blob, `${selectedIcon.name}-${styleSlug}.png`)
            toast.success('PNG downloaded')
        } catch (error) {
            console.error('PNG download error:', error)
            toast.error('Failed to generate PNG')
        }
    }

    const handleCopyPNG = async () => {
        try {
            const image = renderToCanvas(selectedIcon.name, styleSlug, rasterOptions).then(
                canvas =>
                    new Promise<Blob>((resolve, reject) =>
                        canvas.toBlob(blob => {
                            if (blob) resolve(blob)
                            else reject(new Error('PNG blob creation failed'))
                        }, 'image/png')
                    )
            )
            await navigator.clipboard.write([new ClipboardItem({ 'image/png': image })])
            toast.success('PNG copied to clipboard')
        } catch (error) {
            console.error('PNG copy error:', error)
            toast.error('Failed to copy PNG')
        }
    }

    // --- Share ---

    const handleShare = async () => {
        try {
            await navigator.clipboard.writeText(window.location.href)
            toast.success('Link copied to clipboard')
        } catch (error) {
            console.error('Share error:', error)
            toast.error('Failed to copy link')
        }
    }

    const secondary = cn(
        `
          flex h-9 items-center justify-center gap-1.5 rounded-lg bg-foreground/[0.06] px-2 text-xs
          font-medium text-foreground/80 transition-colors
          hover:bg-foreground/[0.1] hover:text-foreground
          focus-visible:ring-2 focus-visible:ring-primary/70 focus-visible:outline-hidden
          disabled:pointer-events-none disabled:opacity-50
        `
    )

    return (
        <div className="grid grid-cols-6 gap-1.5">
            <button
                type="button"
                disabled={busy !== null}
                aria-busy={busy === 'copy-svg'}
                onClick={() => void run('copy-svg', handleCopySVG)}
                className="
                  col-span-3 flex h-9 items-center justify-center gap-1.5 rounded-lg bg-primary px-2
                  text-xs font-semibold text-primary-foreground transition-opacity
                  hover:opacity-90
                  focus-visible:ring-2 focus-visible:ring-primary/70 focus-visible:ring-offset-2
                  focus-visible:ring-offset-background focus-visible:outline-hidden
                  disabled:pointer-events-none disabled:opacity-50
                ">
                <CopyIcon size={15} isolated />
                Copy SVG
            </button>
            <button
                type="button"
                disabled={busy !== null}
                aria-busy={busy === 'copy-png'}
                onClick={() => void run('copy-png', handleCopyPNG)}
                className={cn(secondary, 'col-span-3')}>
                <CopyIcon size={15} isolated />
                Copy PNG
            </button>
            <button
                type="button"
                disabled={busy !== null}
                aria-busy={busy === 'svg'}
                aria-label="Get SVG"
                onClick={() => void run('svg', handleDownloadSVG)}
                className={cn(secondary, 'col-span-2')}>
                <DownloadMinimalisticIcon size={15} isolated />
                SVG
            </button>
            <button
                type="button"
                disabled={busy !== null}
                aria-busy={busy === 'png'}
                aria-label="Get PNG"
                onClick={() => void run('png', handleDownloadPNG)}
                className={cn(secondary, 'col-span-2')}>
                <DownloadMinimalisticIcon size={15} isolated />
                PNG
            </button>
            <button
                type="button"
                disabled={busy !== null}
                aria-busy={busy === 'share'}
                onClick={() => void run('share', handleShare)}
                className={cn(secondary, 'col-span-2')}>
                <LinkMinimalistic2Icon size={15} isolated />
                Share
            </button>
        </div>
    )
}
