import type { JSX } from 'solid-js';
import type { IconProps } from './types';
import { WEIGHT_MAP, type Weight, type StyleComponentsMap } from '@solar-icons/core/runtime';

type IconComponent = (props: IconProps) => JSX.Element;

/**
 * Props accepted by every dynamic Solar icon component.
 * Extends standard IconProps plus an optional `weight` to switch styles at runtime.
 */
export type DynamicIconProps = Omit<IconProps, 'weight' | 'styles'> & {
    weight?: Weight;
};

export function DynamicIcon(
    props: { weight?: Weight; styles: StyleComponentsMap<IconComponent> } & IconProps
): JSX.Element {
    const key = () => (props.weight ? WEIGHT_MAP[props.weight] : 'linear');
    const Component = () => (props.styles as Record<string, IconComponent>)[key()];
    const Comp = Component();
    return <Comp {...props} />;
}
