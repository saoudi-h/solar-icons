import React, { forwardRef, useContext } from 'react'
import { Svg } from 'react-native-svg'
import type { IconProps } from './types'
import { SolarContext } from './SolarProvider'

const IconBase = forwardRef<any, IconProps>((props, ref) => {
    const {
        color: propColor,
        size: propSize,
        strokeWidth: propStrokeWidth,
        children,
        ...restProps
    } = props

    const ctx = useContext(SolarContext)

    const color = propColor ?? ctx?.color ?? 'currentColor'
    const size = propSize ?? ctx?.size ?? 24
    const strokeWidth = propStrokeWidth ?? ctx?.strokeWidth ?? 1.5

    return (
        <Svg
            ref={ref}
            width={size}
            height={size}
            color={color}
            viewBox="0 0 24 24"
            fill="none"
            strokeWidth={Number(strokeWidth)}
            {...restProps}>
            {children}
        </Svg>
    )
})

IconBase.displayName = 'IconBase'
export default IconBase
