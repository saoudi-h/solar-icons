import type { SvgProps } from 'react-native-svg'

export enum IconStyle {
    BOLD = 'Bold',
    BOLD_DUOTONE = 'BoldDuotone',
    BROKEN = 'Broken',
    LINE_DUOTONE = 'LineDuotone',
    LINEAR = 'Linear',
    OUTLINE = 'Outline',
}

export interface IconBaseProps {
    alt?: string
    color?: string
    size?: number
    strokeWidth?: number | string
    secondaryColor?: string
    secondaryOpacity?: number
    children?: any
}

export interface IconProps extends Omit<SvgProps, 'width' | 'height'> {
    size?: number
    color?: string
    strokeWidth?: number | string
    secondaryColor?: string
    secondaryOpacity?: number
}

export type Icon = React.ForwardRefExoticComponent<IconProps & React.RefAttributes<any>>
