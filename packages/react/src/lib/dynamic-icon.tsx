import type { FC, RefAttributes } from 'react'
import type { IconProps } from './types'
import { WEIGHT_MAP, type Weight, type StyleComponentsMap } from '@solar-icons/core'

type IconComponent = FC<IconProps & RefAttributes<SVGSVGElement>>
type StyleComponents = StyleComponentsMap<IconComponent>

interface DynamicIconProps extends IconProps {
    weight?: Weight
    styles: StyleComponents
}

export const DynamicIcon: FC<DynamicIconProps> = ({ weight, styles, ...props }) => {
    const key = weight ? WEIGHT_MAP[weight] : 'bold'
    const Component = styles[key]
    return <Component {...(props as any)} />
}
