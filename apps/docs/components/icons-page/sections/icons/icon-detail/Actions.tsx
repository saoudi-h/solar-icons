'use client'
import { Button } from '@/components/ui/button'
import { CopyButton } from '@/components/ui/CopyButton'
import { useSolar } from '@solar-icons/react'
import { DownloadMinimalisticIcon } from '@solar-icons/react/linear/download-minimalistic'
import { LinkMinimalistic2Icon } from '@solar-icons/react/linear/link-minimalistic-2'
import { saveAs } from 'file-saver'
import type { FC } from 'react'
import { toast } from 'sonner'
import { DEFAULT_VALUES, useSelectedIcon, useStyleURL, weightToStyleSlug } from '../context'

/**
 * CDN base for fetching clean SVGs from @solar-icons/static.
 * Pinned to a specific beta version for predictability.
 */
const STATIC_CDN_BASE = 'https://cdn.jsdelivr.net/npm/@solar-icons/static@2.0.0-beta.3/dist/icons'

function buildCdnUrl(iconName: string, styleSlug: string): string {
    return `${STATIC_CDN_BASE}/${styleSlug}/${iconName}.svg`
}

async function fetchSvgText(iconName: string, styleSlug: string): Promise<string> {
    const url = buildCdnUrl(iconName, styleSlug)
    const response = await fetch(url)
    if (!response.ok) throw new Error(`Failed to fetch SVG (${response.status})`)
    return response.text()
}

/**
 * Takes a clean SVG string from @solar-icons/static and replaces
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
        if (el.getAttribute('stroke') === 'currentColor') {
            el.setAttribute('stroke', options.color)
        }

        if (el.getAttribute('fill') === 'currentColor') {
            const style = el.getAttribute('style') ?? ''
            if (
                style.includes('--solar-secondary-color') ||
                style.includes('--solar-secondary-opacity')
            ) {
                // Duotone accent element
                el.setAttribute('fill', options.secondaryColor)
                el.removeAttribute('style')
                el.setAttribute('opacity', String(options.secondaryOpacity))
            } else {
                el.setAttribute('fill', options.color)
            }
        }
    }

    return new XMLSerializer().serializeToString(svg)
}

/**
 * Fetch the clean SVG from CDN, resolve inline values from the
 * current filter-bar settings, and render onto a canvas.
 */
async function renderToCanvas(
    iconName: string,
    styleSlug: string,
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

    if (!selectedIcon) return null

    const styleSlug = weightToStyleSlug(weight)
    const color = solarColor ?? DEFAULT_VALUES.color
    const size = Number(solarSize ?? DEFAULT_VALUES.size)
    const strokeWidth = Number(solarStrokeWidth ?? DEFAULT_VALUES.strokeWidth)
    const duotoneColor = secondaryColor ?? DEFAULT_VALUES.secondaryColor
    const duotoneOpacity = Number(secondaryOpacity ?? DEFAULT_VALUES.secondaryOpacity)

    const rasterOptions = {
        color,
        size,
        strokeWidth,
        secondaryColor: duotoneColor,
        secondaryOpacity: duotoneOpacity,
    }

    // --- SVG actions: clean source from @solar-icons/static ---

    const handleDownloadSVG = async () => {
        try {
            const svgText = await fetchSvgText(selectedIcon.name, styleSlug)
            const blob = new Blob([svgText], { type: 'image/svg+xml;charset=utf-8' })
            saveAs(blob, `${selectedIcon.name}-${styleSlug}.svg`)
            toast.success('SVG downloaded')
        } catch (error) {
            console.error('SVG download error:', error)
            toast.error('Failed to download SVG')
        }
    }

    const handleCopySVG = async () => {
        try {
            const svgText = await fetchSvgText(selectedIcon.name, styleSlug)
            await navigator.clipboard.writeText(svgText)
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
            saveAs(blob, `${selectedIcon.name}-${styleSlug}.png`)
            toast.success('PNG downloaded')
        } catch (error) {
            console.error('PNG download error:', error)
            toast.error('Failed to generate PNG')
        }
    }

    const handleCopyPNG = async () => {
        try {
            const canvas = await renderToCanvas(selectedIcon.name, styleSlug, rasterOptions)
            const blob = await new Promise<Blob | null>(resolve =>
                canvas.toBlob(resolve, 'image/png')
            )
            if (!blob) throw new Error('PNG blob creation failed')
            await navigator.clipboard.write([new ClipboardItem({ 'image/png': blob })])
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

    return (
        <div
            className={`
              flex shrink-0 flex-row gap-2 overflow-y-scroll border-dashed
              max-lg:mb-2 max-lg:border-b max-lg:pb-2
              lg:mr-4 lg:flex-col lg:border-r lg:pr-4
            `}>
            <Button size="default" variant="ghost" onClick={handleDownloadSVG} className="
              p-1
            ">
                Get SVG
                <DownloadMinimalisticIcon size={16} isolated />
            </Button>
            <Button size="default" variant="ghost" onClick={handleDownloadPNG} className="
              p-1
            ">
                Get PNG
                <DownloadMinimalisticIcon size={16} isolated />
            </Button>
            <CopyButton size="default" variant="ghost" className="p-1" onCopy={handleCopySVG}>
                Copy SVG
            </CopyButton>
            <CopyButton size="default" variant="ghost" className="p-1" onCopy={handleCopyPNG}>
                Copy PNG
            </CopyButton>
            <Button size="default" variant="ghost" onClick={handleShare} className="
              p-1
            ">
                Share
                <LinkMinimalistic2Icon size={16} isolated />
            </Button>
        </div>
    )
}
