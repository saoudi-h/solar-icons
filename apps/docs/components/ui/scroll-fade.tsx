'use client'

import { cn } from '@/lib/utils'
import { useEffect, useRef, useState, type ReactNode } from 'react'

interface ScrollFadeProps {
    children: ReactNode
    className?: string
    /** Height of each fade in px (default 20). */
    fadeSize?: number
}

/**
 * A scroll container that fades its content at the top and the
 * bottom when there's more to scroll in that direction. The
 * fade is applied with `mask-image` (a linear gradient from
 * transparent to opaque over `fadeSize` px) so it actually
 * attenuates the **content** at the edges rather than overlaying
 * a coloured gradient on the **background** — that distinction
 * matters on the icons page where the background isn't a flat
 * colour (radial gradients + noise SVG). The mask respects
 * whatever is behind the scroll container, so the fade always
 * looks correct.
 *
 * The mask is always present at the edges but its opacity is
 * driven by the scroll distance from each edge (`scrollTop` /
 * `scrollHeight` / `clientHeight`): 0 when the content is flush
 * against an edge, 1 once we've scrolled `fadeSize` pixels
 * away. The opacity transition is a 150ms ease-out so the fade
 * doesn't pop in/out as you cross the threshold.
 */
export const ScrollFade = ({ children, className, fadeSize = 20 }: ScrollFadeProps) => {
    const ref = useRef<HTMLDivElement>(null)
    const [opacityTop, setOpacityTop] = useState(0)
    const [opacityBottom, setOpacityBottom] = useState(0)

    useEffect(() => {
        const el = ref.current
        if (!el) return

        const update = () => {
            const distanceFromTop = el.scrollTop
            const distanceFromBottom = el.scrollHeight - el.clientHeight - el.scrollTop
            setOpacityTop(Math.min(1, distanceFromTop / fadeSize))
            setOpacityBottom(Math.min(1, distanceFromBottom / fadeSize))
        }

        update()
        el.addEventListener('scroll', update, { passive: true })
        const ro = new ResizeObserver(update)
        ro.observe(el)
        return () => {
            el.removeEventListener('scroll', update)
            ro.disconnect()
        }
    }, [fadeSize])

    return (
        <div ref={ref} className={cn('relative overflow-y-auto', className)}>
            <div
                aria-hidden="true"
                className="
                  pointer-events-none sticky top-0 z-10 size-full
                  transition-opacity duration-150 ease-out
                "
                style={{
                    maskImage: `linear-gradient(to bottom, transparent 0, black ${fadeSize}px)`,
                    WebkitMaskImage: `linear-gradient(to bottom, transparent 0, black ${fadeSize}px)`,
                    opacity: opacityTop,
                }}
            />
            {children}
            <div
                aria-hidden="true"
                className="
                  pointer-events-none sticky bottom-0 z-10 size-full
                  transition-opacity duration-150 ease-out
                "
                style={{
                    maskImage: `linear-gradient(to top, transparent 0, black ${fadeSize}px)`,
                    WebkitMaskImage: `linear-gradient(to top, transparent 0, black ${fadeSize}px)`,
                    opacity: opacityBottom,
                }}
            />
        </div>
    )
}
