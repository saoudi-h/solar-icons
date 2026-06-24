import { type Ref } from 'react'
import type { IconBaseProps } from './types'

const SOLAR_CLASS = 'solar'

function hasA11yProp(props: Record<string, unknown>): boolean {
    return (
        props['aria-label'] !== undefined ||
        props['title'] !== undefined
    )
}

interface IconBaseAllProps extends IconBaseProps {
    ref?: Ref<SVGSVGElement>
}

const IconBase = ({ alt, color, size, strokeWidth, secondaryColor, secondaryOpacity, iconName, children, ref, ...restProps }: IconBaseAllProps) => {
    const iconClass = iconName ? `${SOLAR_CLASS} solar-${iconName}` : SOLAR_CLASS
    const userClassName = (restProps as any).className
    const className = userClassName
        ? `${iconClass} ${userClassName}`
        : iconClass

    const isAccessible = !!alt || hasA11yProp(restProps as Record<string, unknown>)

    const userStyle = (restProps as any).style ?? {}
    const baseStyle = {
        color: color ?? 'var(--solar-icon-color, currentColor)',
        width: size ?? 'var(--solar-icon-size, 24px)',
        height: size ?? 'var(--solar-icon-size, 24px)',
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
}

export default IconBase
