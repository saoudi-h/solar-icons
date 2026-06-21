'use client'

import { createContext, useContext, useRef, type ReactNode, useCallback } from 'react'

interface SolarRef {
    setProperty: (prop: string, value: string) => void
    element: HTMLDivElement | null
}

const SolarContext = createContext<SolarRef | null>(null)

export function useSolar() {
    const ctx = useContext(SolarContext)
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>')

    const { setProperty } = ctx

    return {
        setColor: useCallback((val: string) => setProperty('--solar-icon-color', val), [setProperty]),
        setSize: useCallback(
            (val: string | number) => {
                setProperty('--solar-icon-size', typeof val === 'number' ? `${val}px` : val)
            },
            [setProperty],
        ),
        setStrokeWidth: useCallback(
            (val: number) => setProperty('--solar-stroke-width', String(val)),
            [setProperty],
        ),
        setDuotoneColor: useCallback(
            (val: string) => setProperty('--solar-duotone-color', val),
            [setProperty],
        ),
        setDuotoneOpacity: useCallback(
            (val: number) => setProperty('--solar-duotone-opacity', String(val)),
            [setProperty],
        ),
    }
}

export interface SolarProviderProps {
    color?: string
    size?: string | number
    strokeWidth?: number
    duotoneColor?: string
    duotoneOpacity?: number
    children: ReactNode
}

export function SolarProvider({
    color,
    size,
    strokeWidth,
    duotoneColor,
    duotoneOpacity,
    children,
}: SolarProviderProps) {
    const ref = useRef<HTMLDivElement>(null)

    const ctxRef = useRef<SolarRef>({
        setProperty: (prop, value) => {
            ref.current?.style.setProperty(prop, value)
        },
        element: ref.current,
    })

    const style: Record<string, string> = {}
    if (color) style['--solar-icon-color'] = color
    if (size != null) style['--solar-icon-size'] = typeof size === 'number' ? `${size}px` : size
    if (strokeWidth != null) style['--solar-stroke-width'] = String(strokeWidth)
    if (duotoneColor) style['--solar-duotone-color'] = duotoneColor
    if (duotoneOpacity != null) style['--solar-duotone-opacity'] = String(duotoneOpacity)

    return (
        <SolarContext.Provider value={ctxRef.current}>
            <div ref={ref} style={style}>
                {children}
            </div>
        </SolarContext.Provider>
    )
}
