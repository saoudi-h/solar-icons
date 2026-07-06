import type { ComponentPropsWithoutRef, ReactNode, RefAttributes } from 'react'

export enum IconStyle {
    BROKEN = 'Broken',
    LINE_DUOTONE = 'LineDuotone',
    LINEAR = 'Linear',
    OUTLINE = 'Outline',
    BOLD = 'Bold',
    BOLD_DUOTONE = 'BoldDuotone',
}

/**
 * Base props accepted by every Solar icon component.
 * Also passed down to the underlying `<svg>` via `IconProps`.
 */
export interface IconBaseProps {
    children?: ReactNode
    /** Accessible label rendered as a `<title>` inside the SVG. */
    alt?: string
    /** Icon color. When omitted, reads `--solar-color` from a parent `SolarProvider` or falls back to `currentColor`. */
    color?: string
    /** Icon width and height. Accepts CSS units (`"32px"`, `"2rem"`) or a raw number (px). */
    size?: string | number
    /** Stroke width for Linear, Broken, and LineDuotone styles. Accepts a number or CSS value. */
    strokeWidth?: string | number
    /** Secondary color used by BoldDuotone and LineDuotone styles. Sets `--solar-secondary-color` on the root element. */
    secondaryColor?: string
    /** Opacity of the secondary duotone layer (0–1). Sets `--solar-secondary-opacity` on the root element. */
    secondaryOpacity?: number
    /** Internal: kebab-case name used for the `solar-{name}` CSS class. Set automatically by generated components. */
    iconName?: string
    /** When `true`, the icon ignores all `SolarProvider` values and uses hardcoded defaults. */
    isolated?: boolean
}

/**
 * Props accepted by every concrete `<XxxIcon>` component.
 * Extends standard SVG attributes, so `className`, `style`,
 * `onClick`, and any valid SVG prop can be passed through.
 */
export interface IconProps
    extends
        ComponentPropsWithoutRef<'svg'>,
        RefAttributes<SVGSVGElement>,
        Omit<IconBaseProps, 'color'> {
    color?: string
}

export type Icon = React.ForwardRefExoticComponent<
    Omit<IconProps, 'ref'> & React.RefAttributes<SVGSVGElement>
>
