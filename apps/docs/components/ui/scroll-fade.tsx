'use client'

import { cn } from '@/lib/utils'
import { useEffect, useRef, useState, type ReactNode } from 'react'

interface ScrollFadeProps {
    children: ReactNode
    className?: string
    /** Height of each gradient in px. */
    fadeSize?: number
}

/**
 * A scroll container that draws a soft gradient at the top and
 * bottom when the content overflows in that direction. Used to
 * tell the user "there's more here, scroll" — the fade fades
 * away as the user approaches an edge.
 *
 * The container is the only scroll source. The gradients are
 * `position: sticky` to the top/bottom of the container and
 * their opacity is driven by how far the content is from
 * each edge (computed from `scrollTop` / `scrollHeight` /
 * `clientHeight`).
 */
export const ScrollFade = ({ children, className, fadeSize = 24 }: ScrollFadeProps) => {
    const ref = useRef<HTMLDivElement>(null)
    const [opacityTop, setOpacityTop] = useState(0)
    const [opacityBottom, setOpacityBottom] = useState(0)

    useEffect(() => {
        const el = ref.current
        if (!el) return

        const update = () => {
            const distanceFromTop = el.scrollTop
            const distanceFromBottom = el.scrollHeight - el.clientHeight - el.scrollTop
            // 0 when at the edge, 1 once we've scrolled `fadeSize`
            // pixels away. `Math.min(1, ...)` clamps it.
            setOpacityTop(Math.min(1, distanceFromTop / fadeSize))
            setOpacityBottom(Math.min(1, distanceFromBottom / fadeSize))
        }

        update()
        el.addEventListener('scroll', update, { passive: true })
        // `scrollHeight` / `clientHeight` change with the content
        // (e.g. a new icon enters the grid). Keep the opacity in
        // sync via ResizeObserver.
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
                style={{ height: fadeSize, opacity: opacityTop }}
                className="
                  pointer-events-none sticky top-0 z-10 bg-linear-to-b
                  from-default-100 to-transparent
                  dark:from-default-100
                "
            />
            {children}
            <div
                aria-hidden="true"
                style={{ height: fadeSize, opacity: opacityBottom }}
                className="
                  pointer-events-none sticky bottom-0 z-10 bg-linear-to-t
                  from-default-100 to-transparent
                  dark:from-default-100
                "
            />
        </div>
    )
}
