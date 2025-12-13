import { forwardRef } from 'react'
import type { IconProps } from './types'

const IconBase: React.ForwardRefExoticComponent<IconProps & React.RefAttributes<SVGSVGElement>> = forwardRef<SVGSVGElement, IconProps>((props, ref) => {
    const {
        alt,
        color = 'currentColor',
        size = '1em',
        mirrored = false,
        children,
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
        </svg>
    )
})

IconBase.displayName = 'IconBase'

export default IconBase
