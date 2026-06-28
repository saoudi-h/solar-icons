import type { SvgProps } from 'react-native-svg'

export enum IconStyle {
    BOLD = 'Bold',
    BOLD_DUOTONE = 'BoldDuotone',
    BROKEN = 'Broken',
    LINE_DUOTONE = 'LineDuotone',
    LINEAR = 'Linear',
    OUTLINE = 'Outline',
}

/**
 * Base props accepted by every Solar icon component.
 */
export interface IconBaseProps {
    alt?: string
    /** Icon color. When omitted, reads from the nearest `SolarProvider` or falls back to `currentColor`. */
    color?: string
    /** Icon width and height in pixels. */
    size?: number
    /** Stroke width for Linear, Broken, and LineDuotone styles. */
    strokeWidth?: number | string
    /** Secondary color for BoldDuotone and LineDuotone styles. */
    secondaryColor?: string
    /** Opacity of the secondary duotone layer (0–1). */
    secondaryOpacity?: number
    children?: any
    /** When `true`, the icon ignores all `SolarProvider` values and uses hardcoded defaults (`24`, `currentColor`, `1.5`). */
    isolated?: boolean
}

export interface IconProps extends Omit<SvgProps, 'width' | 'height'> {
    /** Icon width and height in pixels. */
    size?: number
    /** Icon color. When omitted, reads from the nearest `SolarProvider` or falls back to `currentColor`. */
    color?: string
    /** Stroke width for Linear, Broken, and LineDuotone styles. */
    strokeWidth?: number | string
    /** Secondary color for BoldDuotone and LineDuotone styles. */
    secondaryColor?: string
    /** Opacity of the secondary duotone layer (0–1). */
    secondaryOpacity?: number
    /** When `true`, the icon ignores all `SolarProvider` values and uses hardcoded defaults. */
    isolated?: boolean
}

export type Icon = React.ForwardRefExoticComponent<IconProps & React.RefAttributes<any>>

/**
 * Props accepted by every dynamic Solar icon component.
 */
export type DynamicIconProps = Omit<IconProps, 'ref'>
