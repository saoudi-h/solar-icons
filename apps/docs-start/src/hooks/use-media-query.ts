import { useSyncExternalStore } from 'react'

/**
 * Whether a media query matches. `false` on the server and during hydration,
 * so use it only for content that appears after an interaction.
 */
export function useMediaQuery(query: string): boolean {
    return useSyncExternalStore(
        listener => {
            const list = window.matchMedia(query)
            list.addEventListener('change', listener)
            return () => list.removeEventListener('change', listener)
        },
        () => window.matchMedia(query).matches,
        () => false
    )
}
