import React, { forwardRef } from 'react'
import { G, Svg } from 'react-native-svg'
import type { IconProps } from './types'

const IconBase = forwardRef<any, IconProps>((props, ref) => {
    const { color = 'currentColor', size = 24, mirrored = false, children, ...restProps } = props

    return (
        <Svg
            ref={ref}
            width={size}
            height={size}
            color={color}
            viewBox="0 0 24 24"
            fill="none"
            {...restProps}>
            {mirrored ? (
                <G transform={[{ translateX: 24 }, { scaleX: -1 }]}>{children}</G>
            ) : (
                children
            )}
        </Svg>
    )
})

IconBase.displayName = 'IconBase'

export default IconBase
