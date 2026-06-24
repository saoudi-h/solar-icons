import { type Component } from 'solid-js'
import type { IconProps } from './types'

interface StyleComponents {
    bold: Component<IconProps>
    'bold-duotone': Component<IconProps>
    broken: Component<IconProps>
    linear: Component<IconProps>
    'line-duotone': Component<IconProps>
    outline: Component<IconProps>
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

export const DynamicIcon: Component<DynamicIconProps> = (props) => {
    const key = () => (props.weight ? WEIGHT_MAP[props.weight] : 'bold')
    const Resolved = () => props.styles[key()]
    return Resolved()(props as IconProps)
}
