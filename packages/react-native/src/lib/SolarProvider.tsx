import React, { createContext, useContext, useState, useMemo, useEffect, type ReactNode } from 'react'

export interface SolarConfig {
    color?: string
    size?: number
    strokeWidth?: number
    secondaryColor?: string
    secondaryOpacity?: number
}

export interface SolarContextValue extends SolarConfig {
    setColor: (val: string) => void
    setSize: (val: number) => void
    setStrokeWidth: (val: number) => void
    setSecondaryColor: (val: string) => void
    setSecondaryOpacity: (val: number) => void
}

export const SolarContext = createContext<SolarContextValue | null>(null)

/**
 * Access the nearest `<SolarProvider>` state and setters.
 * Must be called inside a component that is a descendant of `<SolarProvider>`.
 */
export function useSolar(): SolarContextValue {
    const ctx = useContext(SolarContext)
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>')
    return ctx
}

/**
 * Props for `<SolarProvider>`, the global theming wrapper for Solar icons.
 * Values set here become defaults for all icons inside the provider.
 */
export interface SolarProviderProps extends SolarConfig {
    children: ReactNode
}

export function SolarProvider({
    color,
    size,
    strokeWidth,
    secondaryColor,
    secondaryOpacity,
    children,
}: SolarProviderProps) {
    const [state, setState] = useState<SolarConfig>({
        color,
        size,
        strokeWidth,
        secondaryColor,
        secondaryOpacity,
    })

    useEffect(() => { setState(prev => ({ ...prev, color })) }, [color])
    useEffect(() => { setState(prev => ({ ...prev, size })) }, [size])
    useEffect(() => { setState(prev => ({ ...prev, strokeWidth })) }, [strokeWidth])
    useEffect(() => { setState(prev => ({ ...prev, secondaryColor })) }, [secondaryColor])
    useEffect(() => { setState(prev => ({ ...prev, secondaryOpacity })) }, [secondaryOpacity])

    const value = useMemo<SolarContextValue>(() => ({
        ...state,
        setColor: (val: string) => setState(prev => ({ ...prev, color: val })),
        setSize: (val: number) => setState(prev => ({ ...prev, size: val })),
        setStrokeWidth: (val: number) => setState(prev => ({ ...prev, strokeWidth: val })),
        setSecondaryColor: (val: string) => setState(prev => ({ ...prev, secondaryColor: val })),
        setSecondaryOpacity: (val: number) => setState(prev => ({ ...prev, secondaryOpacity: val })),
    }), [state])

    return (
        <SolarContext.Provider value={value}>
            {children}
        </SolarContext.Provider>
    )
}
