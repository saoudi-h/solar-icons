import React, { forwardRef, useContext } from 'react'
import { Svg } from 'react-native-svg'
import type { IconBaseProps } from './types'
import { SolarContext } from './SolarProvider'

const IconBase = forwardRef<any, IconBaseProps>((props, ref) => {
    const {
        color,
        size,
        strokeWidth,
        secondaryColor: _secondaryColor,
        secondaryOpacity: _secondaryOpacity,
        isolated,
        children,
        ...restProps
    } = props

    const ctx = useContext(SolarContext)

    const resolvedColor = isolated
        ? color ?? 'currentColor'
        : color ?? ctx?.color ?? 'currentColor'
    const resolvedSize = isolated
        ? size ?? 24
        : size ?? ctx?.size ?? 24
    const resolvedStrokeWidth = isolated
        ? strokeWidth ?? 1.5
        : strokeWidth ?? ctx?.strokeWidth ?? 1.5

    return (
        <Svg
            ref={ref}
            width={resolvedSize}
            height={resolvedSize}
            color={resolvedColor}
            viewBox="0 0 24 24"
            fill="none"
            strokeWidth={Number(resolvedStrokeWidth)}
            {...restProps}>
            {children}
        </Svg>
    )
})

export default IconBase
