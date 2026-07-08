import type { ComponentType } from 'react'
import type { IconProps } from './types'
import { WEIGHT_MAP, type Weight, type StyleComponentsMap } from '@solar-icons/core/runtime'

type StyleComponents = StyleComponentsMap<ComponentType<IconProps>>

interface DynamicIconProps extends IconProps {
    weight?: Weight
    styles: StyleComponents
}

export const DynamicIcon = ({ weight, styles, ...props }: DynamicIconProps) => {
    const key = weight ? WEIGHT_MAP[weight] : 'linear'
    const Component = styles[key]
    return <Component {...(props as any)} />
}
