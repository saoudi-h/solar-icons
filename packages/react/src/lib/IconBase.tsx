import { forwardRef } from 'react'
import type { IconBaseProps } from './types'

const SOLAR_CLASS = 'solar'

function hasA11yProp(props: Record<string, unknown>): boolean {
    return (
        props['aria-label'] !== undefined ||
        props['title'] !== undefined
    )
}

const IconBase = forwardRef<SVGSVGElement, IconBaseProps & { className?: string; style?: Record<string, string> }>(
    ({ alt, color, size, strokeWidth, secondaryColor, secondaryOpacity, iconName, isolated, children, ...restProps }, ref) => {
        const iconClass = iconName ? `${SOLAR_CLASS} solar-${iconName}` : SOLAR_CLASS
        const userClassName = (restProps as any).className
        const className = userClassName
            ? `${iconClass} ${userClassName}`
            : iconClass

        const isAccessible = !!alt || hasA11yProp(restProps as Record<string, unknown>)

        const userStyle = (restProps as any).style ?? {}
        const baseStyle: Record<string, string> = {
            ...userStyle,
        }
        if (isolated) {
            baseStyle['--solar-duotone-color'] = 'initial'
            baseStyle['--solar-duotone-opacity'] = 'initial'
        }
        if (color !== undefined) baseStyle.color = color
        if (size !== undefined) {
            const sizeValue = typeof size === 'number' ? `${size}px` : size
            baseStyle.width = sizeValue
            baseStyle.height = sizeValue
        }
        if (strokeWidth !== undefined) baseStyle.strokeWidth = String(strokeWidth)
        if (secondaryColor) baseStyle['--solar-duotone-color'] = secondaryColor
        if (secondaryOpacity != null) baseStyle['--solar-duotone-opacity'] = String(secondaryOpacity)

        const widthAttr = size !== undefined
            ? undefined
            : isolated
                ? '24px'
                : 'var(--solar-size, 24px)'
        const heightAttr = size !== undefined
            ? undefined
            : isolated
                ? '24px'
                : 'var(--solar-size, 24px)'
        const colorAttr = color !== undefined
            ? undefined
            : isolated
                ? 'currentColor'
                : 'var(--solar-color, currentColor)'
        const strokeWidthAttr = strokeWidth !== undefined
            ? undefined
            : isolated
                ? '1.5'
                : 'var(--solar-stroke-width, 1.5)'

        return (
            <svg
                ref={ref}
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                {...restProps}
                className={className}
                style={Object.keys(baseStyle).length > 0 ? baseStyle : undefined}
                width={widthAttr}
                height={heightAttr}
                color={colorAttr}
                strokeWidth={strokeWidthAttr}
                {...(!isAccessible && { 'aria-hidden': 'true' as const })}
            >
                {!!alt && <title>{alt}</title>}
                {children}
            </svg>
        )
    }
)

export default IconBase
