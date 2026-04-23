import type { JSX } from 'solid-js';

export enum IconStyle {
    BROKEN = 'Broken',
    LINE_DUOTONE = 'LineDuotone',
    LINEAR = 'Linear',
    OUTLINE = 'Outline',
    BOLD = 'Bold',
    BOLD_DUOTONE = 'BoldDuotone',
}

export interface IconBaseProps {
    alt?: string;
    color?: string;
    size?: string | number;
    mirrored?: boolean;
}

// SolidJS JSX types for SVG elements
export type SvgSVGAttributes = JSX.SvgSVGAttributes<SVGSVGElement>;

export interface IconProps extends IconBaseProps {
    color?: string;
    children?: JSX.Element;
}

export type Icon = (props: IconProps) => JSX.Element;
