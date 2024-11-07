import type { ReactElement } from 'react'
import React, { forwardRef } from 'react'
import type { IconProps, IconWeight } from './types'

interface IconBaseProps extends IconProps {
    weights: Map<IconWeight, ReactElement>
}

const SSRBase = forwardRef<SVGSVGElement, IconBaseProps>((props, ref) => {
    const {
        alt,
        color = 'currentColor',
        size = '1em',
        weight = 'Linear',
        mirrored = false,
        children,
        weights,
        ...restProps
    } = props

    return (
        <svg
            ref={ref}
            xmlns="http://www.w3.org/2000/svg"
            width={size}
            height={size}
            color={color}
            fill="none"
            viewBox="0 0 24 24"
            transform={mirrored ? 'scale(-1, 1)' : undefined}
            {...restProps}>
            {!!alt && <title>{alt}</title>}
            {children}
            {weights.get(weight)}
        </svg>
    )
})

SSRBase.displayName = 'SSRBase'

export default SSRBase
