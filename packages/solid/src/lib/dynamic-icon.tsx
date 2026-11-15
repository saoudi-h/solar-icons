import { WEIGHT_MAP, type Weight, type StyleComponentsMap } from '@solar-icons/core/runtime'
import { splitProps, type JSX } from 'solid-js'
import { Dynamic } from 'solid-js/web'

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
    const [local, others] = splitProps(props, ['weight', 'styles'])
    const component = () => local.styles[local.weight ? WEIGHT_MAP[local.weight] : 'linear']
    return <Dynamic component={component()} {...(others as IconProps)} />
}
