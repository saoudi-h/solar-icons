'use client'

import {
    createContext,
    useContext,
    useEffect,
    useLayoutEffect,
    useMemo,
    useRef,
    useState,
    type ReactNode,
} from 'react'
import { createPortal } from 'react-dom'

import { cn } from '~/lib/utils'

interface TooltipTarget {
    name: string
    rect: DOMRect
}

interface IconNameTooltipValue {
    show: (name: string, anchor: HTMLElement) => void
    hide: () => void
}

const IconNameTooltipContext = createContext<IconNameTooltipValue | null>(null)

const EDGE_MARGIN = 8
const ANCHOR_GAP = 6

/**
 * The grid renders hundreds of hoverable cells inside a scroll container with
 * `overflow: auto`, so a tooltip positioned inside a cell is clipped at the
 * scroller's edges — most visibly below the last row. One portal tooltip
 * anchored to the hovered cell stays in the viewport: it flips above the cell
 * when there is no room below and clamps horizontally at the sides.
 */
export function IconNameTooltipProvider({ children }: { children: ReactNode }) {
    const [target, setTarget] = useState<TooltipTarget | null>(null)
    // Stable across renders so hovering never re-renders the virtualized grid.
    const api = useMemo<IconNameTooltipValue>(
        () => ({
            show: (name, anchor) => setTarget({ name, rect: anchor.getBoundingClientRect() }),
            hide: () => setTarget(current => (current ? null : current)),
        }),
        []
    )
    return (
        <IconNameTooltipContext value={api}>
            {children}
            {target ? <IconNameTooltip target={target} onHide={api.hide} /> : null}
        </IconNameTooltipContext>
    )
}

export function useIconNameTooltip(): IconNameTooltipValue {
    const value = useContext(IconNameTooltipContext)
    if (!value) throw new Error('useIconNameTooltip must be used inside IconNameTooltipProvider')
    return value
}

function IconNameTooltip({ target, onHide }: { target: TooltipTarget; onHide: () => void }) {
    const ref = useRef<HTMLDivElement>(null)
    const [position, setPosition] = useState<{ left: number; top: number } | null>(null)

    // Measure before paint so the tooltip never shows at a stale anchor.
    useLayoutEffect(() => {
        const element = ref.current
        if (!element) return
        const { width, height } = element.getBoundingClientRect()
        const { rect } = target
        const half = Math.min(width / 2, (window.innerWidth - 2 * EDGE_MARGIN) / 2)
        const center = rect.left + rect.width / 2
        const left = Math.min(
            Math.max(center, EDGE_MARGIN + half),
            window.innerWidth - EDGE_MARGIN - half
        )
        const below = rect.bottom + ANCHOR_GAP
        const above = rect.top - ANCHOR_GAP - height
        const top =
            below + height > window.innerHeight - EDGE_MARGIN
                ? Math.max(EDGE_MARGIN, above)
                : Math.min(below, window.innerHeight - EDGE_MARGIN - height)
        setPosition({ left, top })
    }, [target])

    // Wheel scrolling moves the anchor without leaving the cell, and a
    // virtualized cell can leave the DOM under a still pointer.
    useEffect(() => {
        window.addEventListener('scroll', onHide, true)
        window.addEventListener('resize', onHide)
        return () => {
            window.removeEventListener('scroll', onHide, true)
            window.removeEventListener('resize', onHide)
        }
    }, [onHide])

    if (typeof document === 'undefined') return null
    return createPortal(
        <div
            ref={ref}
            aria-hidden="true"
            data-icon-name-tooltip=""
            style={position ? { left: position.left, top: position.top } : { visibility: 'hidden' }}
            className={cn(
                `
                  pointer-events-none fixed z-50 -translate-x-1/2 rounded-md bg-foreground
                  px-1.5 py-0.5 text-[11px]/4 font-medium whitespace-nowrap text-background
                  shadow-sm
                `
            )}>
            {target.name}
        </div>,
        document.body
    )
}
