import type { JSX } from '@solidjs/web'
import { dynamicComponent, omit } from 'solid-js'

import type { IconProps } from './types'

/** The six Solar styles, PascalCase. */
export type Weight = 'Bold' | 'BoldDuotone' | 'Broken' | 'Linear' | 'LineDuotone' | 'Outline'

/** The kebab-case key of each style in the `styles` object. */
export type StyleKey = 'bold' | 'bold-duotone' | 'broken' | 'linear' | 'line-duotone' | 'outline'

export type StyleComponentsMap<T> = { [K in StyleKey]: T }

const WEIGHT_MAP: Readonly<Record<Weight, StyleKey>> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

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
    // `dynamicComponent` re-renders when the source changes and, unlike `dynamic`,
    // never pulls the element runtime in: this source only returns components.
    const Component = dynamicComponent(
        () => props.styles[props.weight ? WEIGHT_MAP[props.weight] : 'linear']
    )
    const iconProps = omit(props, 'weight', 'styles')
    return <Component {...iconProps} />
}
