'use client'

import { useTOC } from 'fumadocs-core/toc'
import { useEffect } from 'react'

/**
 * Draws the active item marker of the table of contents on the first paint.
 *
 * Fumadocs builds the marker from the intersection observer of the table of
 * contents. The observer publishes its first state before the marker is
 * mounted, so the marker misses it and stays hidden until the reader
 * scrolls. This component applies the same state to the marker as soon as it
 * exists, which keeps the first paint identical to the current Next app.
 */
export function TocActiveMarker() {
    const toc = useTOC()

    useEffect(() => {
        let frame = 0
        let attempts = 0

        const apply = () => {
            const path = document.querySelector('path.stroke-fd-primary')
            const marker = path?.parentElement?.parentElement
            if (!(marker instanceof HTMLElement)) return false

            const container = marker.parentElement
            if (!container) return false

            const bounds = toc
                .get()
                .filter(item => item.active)
                .map(item => {
                    const link = container.querySelector<HTMLElement>(`a[href="#${item.id}"]`)
                    if (!link) return null

                    const styles = getComputedStyle(link)
                    const top = link.offsetTop + Number.parseFloat(styles.paddingTop)
                    const bottom =
                        link.offsetTop + link.clientHeight - Number.parseFloat(styles.paddingBottom)
                    return { top, bottom }
                })
                .filter((value): value is { top: number; bottom: number } => value !== null)
            if (bounds.length === 0) return false

            marker.style.setProperty('--track-top', `${bounds[0]?.top}px`)
            marker.style.setProperty('--track-bottom', `${bounds[bounds.length - 1]?.bottom}px`)
            return true
        }

        const tick = () => {
            attempts++
            if (apply() || attempts > 120) return
            frame = requestAnimationFrame(tick)
        }

        tick()

        return () => cancelAnimationFrame(frame)
    }, [toc])

    return null
}
