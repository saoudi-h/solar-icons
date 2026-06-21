import React, { createContext, useContext, useState, useMemo, type ReactNode } from 'react'

export interface SolarConfig {
    color?: string
    size?: number
    strokeWidth?: number
    duotoneColor?: string
    duotoneOpacity?: number
}

export interface SolarContextValue extends SolarConfig {
    setColor: (val: string) => void
    setSize: (val: number) => void
    setStrokeWidth: (val: number) => void
    setDuotoneColor: (val: string) => void
    setDuotoneOpacity: (val: number) => void
}

export const SolarContext = createContext<SolarContextValue | null>(null)

export function useSolar(): SolarContextValue {
    const ctx = useContext(SolarContext)
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>')
    return ctx
}

export interface SolarProviderProps extends SolarConfig {
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
    const [state, setState] = useState<SolarConfig>({
        color,
        size,
        strokeWidth,
        duotoneColor,
        duotoneOpacity,
    })

    const value = useMemo<SolarContextValue>(() => ({
        ...state,
        setColor: (val: string) => setState(prev => ({ ...prev, color: val })),
        setSize: (val: number) => setState(prev => ({ ...prev, size: val })),
        setStrokeWidth: (val: number) => setState(prev => ({ ...prev, strokeWidth: val })),
        setDuotoneColor: (val: string) => setState(prev => ({ ...prev, duotoneColor: val })),
        setDuotoneOpacity: (val: number) => setState(prev => ({ ...prev, duotoneOpacity: val })),
    }), [state])

    return (
        <SolarContext.Provider value={value}>
            {children}
        </SolarContext.Provider>
    )
}
