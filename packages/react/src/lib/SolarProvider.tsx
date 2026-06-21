'use client'

import { createContext, useContext, useRef, useEffect, type ReactNode, useCallback } from 'react'

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

    useEffect(() => {
        const el = ref.current
        if (!el) return
        if (color !== undefined) el.style.setProperty('--solar-icon-color', color)
    }, [color])

    useEffect(() => {
        const el = ref.current
        if (!el) return
        if (size != null)
            el.style.setProperty('--solar-icon-size', typeof size === 'number' ? `${size}px` : size)
    }, [size])

    useEffect(() => {
        const el = ref.current
        if (!el) return
        if (strokeWidth != null) el.style.setProperty('--solar-stroke-width', String(strokeWidth))
    }, [strokeWidth])

    useEffect(() => {
        const el = ref.current
        if (!el) return
        if (duotoneColor) el.style.setProperty('--solar-duotone-color', duotoneColor)
    }, [duotoneColor])

    useEffect(() => {
        const el = ref.current
        if (!el) return
        if (duotoneOpacity != null)
            el.style.setProperty('--solar-duotone-opacity', String(duotoneOpacity))
    }, [duotoneOpacity])

    return (
        <SolarContext.Provider value={ctxRef.current}>
            <div ref={ref}>
                {children}
            </div>
        </SolarContext.Provider>
    )
}
