import { forwardRef } from 'react'
import type { IconBaseProps } from './types'

const SOLAR_CLASS = 'solar'

function hasA11yProp(props: Record<string, unknown>): boolean {
    return (
        props['aria-label'] !== undefined ||
        props['title'] !== undefined
    )
}

const IconBase = forwardRef<SVGSVGElement, IconBaseProps>(
    (props, ref) => {
        const {
            alt,
            color,
            size,
            mirrored,
            strokeWidth,
            secondaryColor,
            secondaryOpacity,
            iconName,
            children,
            ...restProps
        } = props as any

        const iconClass = iconName ? `${SOLAR_CLASS} solar-${iconName}` : SOLAR_CLASS
        const userClassName = restProps.className
        const className = userClassName
            ? `${iconClass} ${userClassName}`
            : iconClass

        const isAccessible = !!alt || hasA11yProp(restProps)

        const userStyle = restProps.style ?? {}
        const baseStyle = {
            color: color ?? 'var(--solar-icon-color, currentColor)',
            width: size ?? 'var(--solar-icon-size, 24px)',
            height: size ?? 'var(--solar-icon-size, 24px)',
            transform: mirrored
                ? 'scale(-1, 1)'
                : 'var(--solar-icon-mirrored)',
            ...(secondaryColor ? { '--solar-duotone-color': secondaryColor } : {}),
            ...(secondaryOpacity != null ? { '--solar-duotone-opacity': String(secondaryOpacity) } : {}),
            ...userStyle,
        }

        return (
            <svg
                ref={ref}
                xmlns="http://www.w3.org/2000/svg"
                className={className}
                style={baseStyle}
                fill="none"
                viewBox="0 0 24 24"
                {...restProps}
                strokeWidth={strokeWidth ?? 'var(--solar-stroke-width, 1.5)'}
                {...(!isAccessible && { 'aria-hidden': 'true' as const })}
            >
                {!!alt && <title>{alt}</title>}
                {children}
            </svg>
        )
    },
)

IconBase.displayName = 'IconBase'

export default IconBase
