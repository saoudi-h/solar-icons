import type { FC, RefAttributes } from 'react'
import type { IconProps } from './types'
import { WEIGHT_MAP, type Weight, type StyleComponentsMap } from '@solar-icons/core/runtime'

type IconComponent = FC<IconProps & RefAttributes<SVGSVGElement>>
type StyleComponents = StyleComponentsMap<IconComponent>

/**
 * Props accepted by every dynamic Solar icon component.
 * Extends standard SVG attributes plus an optional `weight` to switch styles at runtime.
 */
export type DynamicIconProps = Omit<IconProps, 'ref'> & {
    weight?: Weight
}

interface InternalDynamicIconProps extends IconProps {
    weight?: Weight
    styles: StyleComponents
}

export const DynamicIcon: FC<InternalDynamicIconProps> = ({ weight, styles, ...props }) => {
    const key = weight ? WEIGHT_MAP[weight] : 'linear'
    const Component = styles[key]
    return <Component {...(props as any)} />
}
