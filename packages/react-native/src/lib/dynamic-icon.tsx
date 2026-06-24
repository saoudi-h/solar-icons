import type { FC, RefAttributes } from 'react'
import type { IconProps } from './types'

interface StyleComponents {
    bold: FC<IconProps & RefAttributes<any>>
    'bold-duotone': FC<IconProps & RefAttributes<any>>
    broken: FC<IconProps & RefAttributes<any>>
    linear: FC<IconProps & RefAttributes<any>>
    'line-duotone': FC<IconProps & RefAttributes<any>>
    outline: FC<IconProps & RefAttributes<any>>
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
    return <Component {...(props as any)} />
}
