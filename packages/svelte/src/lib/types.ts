import type { SVGAttributes } from 'svelte/elements'

export type IconStyle = 'Bold' | 'BoldDuotone' | 'Broken' | 'LineDuotone' | 'Linear' | 'Outline'

/** The six Solar styles, PascalCase. */
export type Weight = IconStyle

/** The kebab-case key of each style in the `styles` object. */
export type StyleKey = 'bold' | 'bold-duotone' | 'broken' | 'linear' | 'line-duotone' | 'outline'

/** Shape of the `styles` object accepted by `DynamicIcon`. */
export type StyleComponentsMap<T> = { [K in StyleKey]: T }

/** Mapping from a {@link Weight} (PascalCase) to its {@link StyleKey}. */
export const WEIGHT_MAP: Readonly<Record<Weight, StyleKey>> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

/**
 * Base props accepted by every Solar icon component.
 */
export interface IconBaseProps {
    /** Accessible label rendered as a `<title>` inside the SVG. */
    alt?: string
    /** Icon color. When omitted, reads `--solar-color` from a parent `SolarProvider` or falls back to `currentColor`. */
    color?: string
    /** Icon width and height. Accepts CSS units or a raw number (px). */
    size?: string | number
    /** Stroke width for Linear, Broken, and LineDuotone styles. */
    strokeWidth?: string | number
    /** Secondary color for BoldDuotone and LineDuotone styles. Sets `--solar-secondary-color`. */
    secondaryColor?: string
    /** Opacity of the secondary duotone layer (0–1). Sets `--solar-secondary-opacity`. */
    secondaryOpacity?: number
    /** Internal: kebab-case name for the `solar-{name}` CSS class. */
    iconName?: string
    /** When `true`, the icon ignores all `SolarProvider` values and uses hardcoded defaults. */
    isolated?: boolean
}

export type SvgAttributes = SVGAttributes<SVGSVGElement>

export interface IconProps extends IconBaseProps, Omit<SvgAttributes, 'color'> {}

/**
 * Props accepted by every dynamic Solar icon component.
 */
export interface DynamicIconProps extends IconProps {
    weight?: Weight
}
