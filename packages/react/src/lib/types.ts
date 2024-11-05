import type { ComponentPropsWithoutRef, RefAttributes } from 'react'

export enum IconStyle {
    BROKEN = 'Broken',
    LINE_DUOTONE = 'LineDuotone',
    LINEAR = 'Linear',
    OUTLINE = 'Outline',
    BOLD = 'Bold',
    BOLD_DUOTONE = 'BoldDuotone',
}
export type IconWeight = 'Broken' | 'LineDuotone' | 'Linear' | 'Outline' | 'Bold' | 'BoldDuotone'

export interface IconProps extends ComponentPropsWithoutRef<'svg'>, RefAttributes<SVGSVGElement> {
    alt?: string
    color?: string
    size?: string | number
    weight?: IconWeight
    mirrored?: boolean
}

export type Icon = React.ForwardRefExoticComponent<
    Omit<IconProps, 'ref'> & React.RefAttributes<SVGSVGElement>
>
