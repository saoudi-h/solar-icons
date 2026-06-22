'use client'

import { createContext, useContext, useRef, useEffect, useState, type ReactNode, useMemo } from 'react'

interface SolarState {
    color: string | undefined
    setColor: (val: string) => void
    size: string | number | undefined
    setSize: (val: string | number) => void
    strokeWidth: number | undefined
    setStrokeWidth: (val: number) => void
    duotoneColor: string | undefined
    setDuotoneColor: (val: string) => void
    duotoneOpacity: number | undefined
    setDuotoneOpacity: (val: number) => void
}

const SolarContext = createContext<SolarState | null>(null)

export function useSolar() {
    const ctx = useContext(SolarContext)
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>')
    return ctx
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
    color: initialColor,
    size: initialSize,
    strokeWidth: initialStrokeWidth,
    duotoneColor: initialDuotoneColor,
    duotoneOpacity: initialDuotoneOpacity,
    children,
}: SolarProviderProps) {
    const ref = useRef<HTMLDivElement>(null)
    const [color, setColor] = useState(initialColor)
    const [size, setSize] = useState(initialSize)
    const [strokeWidth, setStrokeWidth] = useState(initialStrokeWidth)
    const [duotoneColor, setDuotoneColor] = useState(initialDuotoneColor)
    const [duotoneOpacity, setDuotoneOpacity] = useState(initialDuotoneOpacity)

    useEffect(() => {
        if (color !== undefined) ref.current?.style.setProperty('--solar-icon-color', color)
    }, [color])
    useEffect(() => {
        if (size != null) ref.current?.style.setProperty('--solar-icon-size', typeof size === 'number' ? `${size}px` : size)
    }, [size])
    useEffect(() => {
        if (strokeWidth != null) ref.current?.style.setProperty('--solar-stroke-width', String(strokeWidth))
    }, [strokeWidth])
    useEffect(() => {
        if (duotoneColor) ref.current?.style.setProperty('--solar-duotone-color', duotoneColor)
    }, [duotoneColor])
    useEffect(() => {
        if (duotoneOpacity != null) ref.current?.style.setProperty('--solar-duotone-opacity', String(duotoneOpacity))
    }, [duotoneOpacity])
    const state = useMemo<SolarState>(() => ({
        color, setColor,
        size, setSize,
        strokeWidth, setStrokeWidth,
        duotoneColor, setDuotoneColor,
        duotoneOpacity, setDuotoneOpacity,
    }), [color, size, strokeWidth, duotoneColor, duotoneOpacity])

    return (
        <SolarContext.Provider value={state}>
            <div ref={ref}>{children}</div>
        </SolarContext.Provider>
    )
}
