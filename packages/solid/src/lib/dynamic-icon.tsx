import { WEIGHT_MAP, type Weight, type StyleComponentsMap } from '@solar-icons/core/runtime'
import { createComponent, type JSX } from 'solid-js'

import type { IconProps } from './types'

type IconComponent = (props: IconProps) => JSX.Element

/**
 * Props accepted by every dynamic Solar icon component.
 * Extends standard IconProps plus an optional `weight` to switch styles at runtime.
 */
export type DynamicIconProps = Omit<IconProps, 'weight' | 'styles'> & {
    weight?: Weight
}

export function DynamicIcon(
    props: { weight?: Weight; styles: StyleComponentsMap<IconComponent> } & IconProps
): JSX.Element {
    const key = () => (props.weight ? WEIGHT_MAP[props.weight] : 'linear')
    const Component = () => props.styles[key()]
    return createComponent(Component(), props as IconProps)
}
