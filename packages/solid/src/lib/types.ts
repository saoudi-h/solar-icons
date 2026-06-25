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
    strokeWidth?: string | number;
    secondaryColor?: string;
    secondaryOpacity?: number;
    iconName?: string;
    /**
     * Raw SVG body string, used to bypass the Solid template compiler's
     * `<svg>` namespace wrapping (which would otherwise produce nested
     * `<svg>` elements when a generated icon is passed as children to
     * IconBase). The body is mounted via a `<g innerHTML>` wrapper.
     */
    iconBody?: string;
}

export type SvgSVGAttributes = JSX.SvgSVGAttributes<SVGSVGElement>;

export interface IconProps extends IconBaseProps {
    color?: string;
    children?: JSX.Element;
}

export type Icon = (props: IconProps) => JSX.Element;
