'use client'

import type { ComponentPropsWithoutRef, ReactNode } from 'react'
import React, { createContext, useContext, useState } from 'react'
import type { IconBaseProps, SolarContextType, SolarProviderProps } from './types'

const defaultValue: IconBaseProps = {
    color: 'currentColor',
    size: '1em',
    weight: 'Linear',
    mirrored: false,
}

/**
 * React context for sharing default icon properties.
 */
const SolarContext = createContext<SolarContextType>({
    value: defaultValue,
    setValue: () => {},
    setSvgProps: () => {},
})

/**
 * Context provider that wraps child components to supply default icon and SVG properties.
 */
export const SolarProvider: React.FC<SolarProviderProps & { children: ReactNode }> = ({
    children,
    value = defaultValue,
    svgProps = {},
}) => {
    const [stateValue, setStateValue] = useState<IconBaseProps>({ ...defaultValue, ...value })

    const [svgStateProps, setSvgStateProps] = useState<ComponentPropsWithoutRef<'svg'>>(svgProps)

    const updateValueProps = (newProps: Partial<IconBaseProps>) => {
        setStateValue(prevProps => ({ ...prevProps, ...newProps }))
    }

    const updateSvgStateProps = (newProps: Partial<ComponentPropsWithoutRef<'svg'>>) => {
        setSvgStateProps(prevProps => ({ ...prevProps, ...newProps }))
    }

    return (
        <SolarContext.Provider
            value={{
                value: stateValue,
                svgProps: svgStateProps,
                setValue: updateValueProps,
                setSvgProps: updateSvgStateProps,
            }}>
            {children}
        </SolarContext.Provider>
    )
}

/**
 * Hook to read or update the current icon configuration context.
 */
export const useSolar = (): SolarContextType => useContext(SolarContext)
