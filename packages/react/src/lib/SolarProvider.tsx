'use client'

import { createContext, useContext, useState, type ReactNode, useMemo } from 'react'

interface SolarState {
    color: string | undefined
    setColor: (val: string) => void
    size: string | number | undefined
    setSize: (val: string | number) => void
    strokeWidth: number | undefined
    setStrokeWidth: (val: number) => void
    secondaryColor: string | undefined
    setSecondaryColor: (val: string) => void
    secondaryOpacity: number | undefined
    setSecondaryOpacity: (val: number) => void
}

const SolarContext = createContext<SolarState | null>(null)

/**
 * Access the nearest `<SolarProvider>` state and setters.
 * Must be called inside a component that is a descendant of `<SolarProvider>`.
 *
 * @returns An object with current values (`color`, `size`, `strokeWidth`, etc.)
 *          and their corresponding setters (`setColor`, `setSize`, etc.).
 *          Changing a value updates the CSS custom properties on the provider wrapper;
 *          icons pick up the change through the CSS cascade without re-rendering.
 */
export function useSolar() {
    const ctx = useContext(SolarContext)
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>')
    return ctx
}

/**
 * Props for `<SolarProvider>`, the global theming wrapper for Solar icons.
 * Every icon inside the provider reads these values through CSS custom properties.
 * Values can be changed at runtime via the `useSolar()` hook.
 */
export interface SolarProviderProps {
    /** Default icon color. Sets `--solar-color` on the wrapper. */
    color?: string
    /** Default icon size. Accepts CSS units (`"32px"`, `"2rem"`) or a raw number (px). Sets `--solar-size`. */
    size?: string | number
    /** Default stroke width for Linear/Broken/LineDuotone styles. Sets `--solar-stroke-width`. */
    strokeWidth?: number
    /** Default secondary color for BoldDuotone/LineDuotone styles. Sets `--solar-secondary-color`. */
    secondaryColor?: string
    /** Default secondary opacity for duotone styles (0–1). Sets `--solar-secondary-opacity`. */
    secondaryOpacity?: number
    children: ReactNode
}

export function SolarProvider({
    color: initialColor,
    size: initialSize,
    strokeWidth: initialStrokeWidth,
    secondaryColor: initialSecondaryColor,
    secondaryOpacity: initialSecondaryOpacity,
    children,
}: SolarProviderProps) {
    const [color, setColor] = useState(initialColor)
    const [size, setSize] = useState(initialSize)
    const [strokeWidth, setStrokeWidth] = useState(initialStrokeWidth)
    const [secondaryColor, setSecondaryColor] = useState(initialSecondaryColor)
    const [secondaryOpacity, setSecondaryOpacity] = useState(initialSecondaryOpacity)

    const wrapperStyle: Record<string, string> = { display: 'contents' }
    if (color !== undefined) wrapperStyle['--solar-color'] = color
    if (size != null) wrapperStyle['--solar-size'] = typeof size === 'number' ? `${size}px` : size
    if (strokeWidth != null) wrapperStyle['--solar-stroke-width'] = String(strokeWidth)
    if (secondaryColor) wrapperStyle['--solar-secondary-color'] = secondaryColor
    if (secondaryOpacity != null) wrapperStyle['--solar-secondary-opacity'] = String(secondaryOpacity)

    const state = useMemo<SolarState>(() => ({
        color, setColor,
        size, setSize,
        strokeWidth, setStrokeWidth,
        secondaryColor, setSecondaryColor,
        secondaryOpacity, setSecondaryOpacity,
    }), [color, size, strokeWidth, secondaryColor, secondaryOpacity])

    return (
        <SolarContext.Provider value={state}>
            <div style={wrapperStyle}>{children}</div>
        </SolarContext.Provider>
    )
}
