export enum IconStyle {
    BROKEN = 'Broken',
    LINE_DUOTONE = 'LineDuotone',
    LINEAR = 'Linear',
    OUTLINE = 'Outline',
    BOLD = 'Bold',
    BOLD_DUOTONE = 'BoldDuotone',
}

export interface IconProps {
    size?: string | number
    color?: string
    strokeWidth?: string | number
    alt?: string
    secondaryColor?: string
    secondaryOpacity?: number
}
