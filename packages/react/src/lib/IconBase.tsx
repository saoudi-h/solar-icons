import type { ReactElement } from 'react'
import { forwardRef } from 'react'
import { useSolar } from './context'
import type { IconProps, IconWeight } from './types'

interface IconBaseProps extends IconProps {
    weights: Map<IconWeight, ReactElement>
}

const IconBase = forwardRef<SVGSVGElement, IconBaseProps>((props, ref) => {
    const { alt, color, size, weight, mirrored, children, weights, ...restProps } = props

    const {
        value: {
            color: contextColor = 'currentColor',
            size: contextSize,
            weight: contextWeight = 'Linear',
            mirrored: contextMirrored = false,
        },
        svgProps,
    } = useSolar()

    return (
        <svg
            ref={ref}
            xmlns="http://www.w3.org/2000/svg"
            width={size ?? contextSize}
            height={size ?? contextSize}
            color={color ?? contextColor}
            fill="none"
            viewBox="0 0 24 24"
            transform={mirrored || contextMirrored ? 'scale(-1, 1)' : undefined}
            {...svgProps}
            {...restProps}>
            {!!alt && <title>{alt}</title>}
            {children}
            {weights.get(weight ?? contextWeight)}
        </svg>
    )
})

IconBase.displayName = 'IconBase'

export default IconBase
