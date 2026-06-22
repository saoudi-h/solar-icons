import type { SvgProps } from 'react-native-svg'

export enum IconStyle {
    BOLD = 'Bold',
    BOLD_DUOTONE = 'BoldDuotone',
    BROKEN = 'Broken',
    LINE_DUOTONE = 'LineDuotone',
    LINEAR = 'Linear',
    OUTLINE = 'Outline',
}

export interface IconProps extends Omit<SvgProps, 'width' | 'height'> {
    /**
     * Icon size (width and height). Numeric value in pixels.
     * @default 24
     */
    size?: number

    /**
     * Icon color.
     * @default 'currentColor'
     */
    color?: string

    /**
     * Stroke width of the icon lines.
     * @default 1.5
     */
    strokeWidth?: number | string

    /**
     * Secondary color for duotone icons (accent layer).
     * Falls back to `color` if not set.
     */
    secondaryColor?: string

    /**
     * Opacity of the secondary/duotone layer.
     * @default 0.5
     */
    secondaryOpacity?: number
}

export type Icon = React.ForwardRefExoticComponent<IconProps & React.RefAttributes<any>>
