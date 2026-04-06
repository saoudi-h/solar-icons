import type { JSX } from 'solid-js'

export type IconWeight = 'Broken' | 'LineDuotone' | 'Linear' | 'Outline' | 'Bold' | 'BoldDuotone'

export type Numberish = number | string

export interface IconBaseProps {
    alt?: string
    color?: string
    size?: Numberish
    weight?: IconWeight
    mirrored?: boolean
}

export interface IconProps extends IconBaseProps {
    class?: string
    style?: JSX.CSSProperties | string
}

export interface SolarIconsConfig {
    color?: string
    size?: Numberish
    weight?: IconWeight
    mirrored?: boolean
}

export type IconNode = [
    string,
    Record<string, any>,
    IconNode[]?,
]

export type SolarIconComponent = (props: IconProps & JSX.SvgSVGAttributes<SVGSVGElement>) => JSX.Element
