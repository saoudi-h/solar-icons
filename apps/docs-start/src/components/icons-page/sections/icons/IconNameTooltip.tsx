'use client'

import {
    createContext,
    useContext,
    useEffect,
    useMemo,
    useRef,
    useState,
    type ReactNode,
} from 'react'

import {
    Tooltip,
    TOOLTIP_DELAY_MS,
    TOOLTIP_SKIP_DELAY_MS,
    TooltipContent,
    TooltipTrigger,
} from '~/components/ui/tooltip'

interface TooltipTarget {
    name: string
    rect: { left: number; top: number; width: number; height: number }
}

interface IconNameTooltipValue {
    /** Hover waits like every other tooltip; keyboard focus shows it at once. */
    show: (name: string, anchor: HTMLElement, immediate?: boolean) => void
    hide: () => void
}

const IconNameTooltipContext = createContext<IconNameTooltipValue | null>(null)

/**
 * One shared tooltip for the whole grid, drawn by the app's `Tooltip`
 * (same pill, animation and collision handling as every other tooltip).
 *
 * The grid mounts hundreds of cells inside a scroller with `overflow: auto`:
 * a tooltip inside a cell is clipped at the scroller's edge, and a Radix
 * `Tooltip` per cell makes scrolling measurably slower. So cells only report
 * hover/focus, and a single tooltip, portaled to the body, is anchored on a
 * proxy element laid over the hovered cell.
 */
export function IconNameTooltipProvider({ children }: { children: ReactNode }) {
    const [target, setTarget] = useState<TooltipTarget | null>(null)
    const timer = useRef<number | null>(null)
    // Moving from one cell to the next skips the delay, as between any two
    // tooltips of the app.
    const lastClosedAt = useRef(Number.NEGATIVE_INFINITY)
    const isOpen = useRef(false)

    const api = useMemo<IconNameTooltipValue>(() => {
        const cancel = () => {
            if (timer.current === null) return
            clearTimeout(timer.current)
            timer.current = null
        }
        const open = (name: string, anchor: HTMLElement) => {
            if (!anchor.isConnected) return
            const { left, top, width, height } = anchor.getBoundingClientRect()
            isOpen.current = true
            setTarget({ name, rect: { left, top, width, height } })
        }
        return {
            show: (name, anchor, immediate = false) => {
                cancel()
                const skipDelay =
                    immediate ||
                    isOpen.current ||
                    performance.now() - lastClosedAt.current < TOOLTIP_SKIP_DELAY_MS
                if (skipDelay) {
                    open(name, anchor)
                    return
                }
                timer.current = window.setTimeout(() => {
                    timer.current = null
                    open(name, anchor)
                }, TOOLTIP_DELAY_MS)
            },
            hide: () => {
                cancel()
                if (!isOpen.current) return
                isOpen.current = false
                lastClosedAt.current = performance.now()
                setTarget(null)
            },
        }
    }, [])

    // Wheel scrolling moves the cell from under a still pointer and a
    // virtualized cell can leave the DOM, so any scroll or resize closes it.
    useEffect(() => {
        const { hide } = api
        window.addEventListener('scroll', hide, true)
        window.addEventListener('resize', hide)
        return () => {
            window.removeEventListener('scroll', hide, true)
            window.removeEventListener('resize', hide)
            hide()
        }
    }, [api])

    // Keep the last name while the exit animation plays.
    const lastName = useRef('')
    if (target) lastName.current = target.name

    return (
        <IconNameTooltipContext value={api}>
            {children}
            <Tooltip
                open={target !== null}
                onOpenChange={open => {
                    if (!open) api.hide()
                }}>
                <TooltipTrigger asChild>
                    <span
                        aria-hidden="true"
                        className="pointer-events-none fixed"
                        style={{
                            left: target?.rect.left ?? 0,
                            top: target?.rect.top ?? 0,
                            width: target?.rect.width ?? 0,
                            height: target?.rect.height ?? 0,
                        }}
                    />
                </TooltipTrigger>
                {/* Pulled up over the cell's edge so the pill straddles it, as
                    the in-cell tooltip did; Radix flips it above the cell
                    when there is no room below. */}
                <TooltipContent
                    side="bottom"
                    sideOffset={-6}
                    collisionPadding={8}
                    className="pointer-events-none">
                    {lastName.current}
                </TooltipContent>
            </Tooltip>
        </IconNameTooltipContext>
    )
}

export function useIconNameTooltip(): IconNameTooltipValue {
    const value = useContext(IconNameTooltipContext)
    if (!value) throw new Error('useIconNameTooltip must be used inside IconNameTooltipProvider')
    return value
}
