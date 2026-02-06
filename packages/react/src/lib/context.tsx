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
 * SolarContext is a React context used to provide default properties for icon components.
 * This allows consistent icon styling across the application.
 */
const SolarContext = createContext<SolarContextType>({
    value: defaultValue,
    setValue: () => {},
    setSvgProps: () => {},
})

/**
 * SolarProvider component is a React functional component that supplies
 * the SolarContext to its child components. It manages and provides
 * default properties for icon components, allowing consistent icon
 * styling across the application.
 * @param props - The props object.
 * @param [props.value] - The initial icon properties.
 * @param [props.svgProps] - The initial SVG properties.
 * @param props.children - The child components that will have access to the context.
 * @returns The context provider that wraps children components, providing icon customization capabilities.
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
 * useSolar hook allows access to the current icon context.
 * This hook can be used in any component that needs to read or modify
 * the default icon properties provided by the SolarProvider.
 * @returns The current context value for the icon properties.
 */
export const useSolar = (): SolarContextType => useContext(SolarContext)
