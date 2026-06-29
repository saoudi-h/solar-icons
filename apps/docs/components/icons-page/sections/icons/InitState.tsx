'use client'
import { useSolar } from '@solar-icons/react'
import { useTheme } from 'next-themes'
import { useEffect } from 'react'

const INITIAL_DARK_COLOR = '#9fcfe6'
const INITIAL_LIGHT_COLOR = '#0f4159'

export const InitState = () => {
    const { resolvedTheme } = useTheme()
    const { setColor } = useSolar()

    // `useEffect` instead of `useLayoutEffect` so this is SSR-safe
    // (the IconShowcase is no longer wrapped in `ssr: false`).
    // The trade-off is a one-frame flash of the default color before
    // the theme color lands; in practice the icons are below the
    // fold so the user doesn't see it.
    useEffect(() => {
        setColor(resolvedTheme == 'dark' ? INITIAL_LIGHT_COLOR : INITIAL_DARK_COLOR)
    }, [resolvedTheme, setColor])

    return null
}
