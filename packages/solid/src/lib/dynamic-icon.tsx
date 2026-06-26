import { type Component } from 'solid-js';
import type { IconProps } from './types';
import { WEIGHT_MAP, type Weight, type StyleComponentsMap } from '@solar-icons/core/runtime';

type StyleComponents = StyleComponentsMap<Component<IconProps>>;

interface DynamicIconProps extends IconProps {
    weight?: Weight;
    styles: StyleComponents;
}

export const DynamicIcon: Component<DynamicIconProps> = (props) => {
    const key = () => (props.weight ? WEIGHT_MAP[props.weight] : 'linear');
    const Resolved = () => props.styles[key()];
    return Resolved()(props as IconProps);
};
