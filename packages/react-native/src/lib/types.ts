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
     * Icon color. Supports any valid React Native color.
     * @default 'currentColor'
     */
    color?: string

    /**
     * Mirror the icon horizontally
     * @default false
     */
    mirrored?: boolean
}

export type Icon = React.ForwardRefExoticComponent<IconProps & React.RefAttributes<any>>
