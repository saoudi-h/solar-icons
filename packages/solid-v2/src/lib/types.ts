import type { JSX } from '@solidjs/web'

export enum IconStyle {
    BROKEN = 'Broken',
    LINE_DUOTONE = 'LineDuotone',
    LINEAR = 'Linear',
    OUTLINE = 'Outline',
    BOLD = 'Bold',
    BOLD_DUOTONE = 'BoldDuotone',
}

export interface IconBaseProps {
    alt?: string
    color?: string
    size?: string | number
    strokeWidth?: string | number
    secondaryColor?: string
    secondaryOpacity?: number
    iconName?: string
    /** When `true`, the icon ignores all `SolarProvider` values and uses hardcoded defaults. */
    isolated?: boolean
    /**
     * Raw SVG body string, mounted with `innerHTML` inside the root `<svg>`.
     * Generated icons use it so the body is never compiled into JSX templates.
     */
    iconBody?: string
}

export type SvgSVGAttributes = JSX.SvgSVGAttributes<SVGSVGElement>

export interface IconProps extends SvgSVGAttributes, IconBaseProps {
    color?: string
    children?: JSX.Element
}

export type Icon = (props: IconProps) => JSX.Element
