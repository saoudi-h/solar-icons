import type { FC, RefAttributes } from 'react'
import type { IconProps } from './types'

interface StyleComponents {
    bold: FC<IconProps & RefAttributes<SVGSVGElement>>
    'bold-duotone': FC<IconProps & RefAttributes<SVGSVGElement>>
    broken: FC<IconProps & RefAttributes<SVGSVGElement>>
    linear: FC<IconProps & RefAttributes<SVGSVGElement>>
    'line-duotone': FC<IconProps & RefAttributes<SVGSVGElement>>
    outline: FC<IconProps & RefAttributes<SVGSVGElement>>
}

type Weight = 'Bold' | 'BoldDuotone' | 'Broken' | 'Linear' | 'LineDuotone' | 'Outline'

const WEIGHT_MAP: Record<Weight, keyof StyleComponents> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

interface DynamicIconProps extends IconProps {
    weight?: Weight
    styles: StyleComponents
}

export const DynamicIcon: FC<DynamicIconProps> = ({ weight, styles, ...props }) => {
    const key = weight ? WEIGHT_MAP[weight] : 'bold'
    const Component = styles[key]
    if (!Component) return null
    return <Component {...(props as any)} />
}
