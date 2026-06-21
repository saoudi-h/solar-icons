import type { SVGAttributes } from 'svelte/elements';

export type IconStyle = 'Bold' | 'BoldDuotone' | 'Broken' | 'LineDuotone' | 'Linear' | 'Outline';

export interface IconBaseProps {
    alt?: string;
    color?: string;
    size?: string | number;
    strokeWidth?: string | number;
    mirrored?: boolean;
    secondaryColor?: string;
    secondaryOpacity?: number;
    iconName?: string;
}

export type SvgAttributes = SVGAttributes<SVGSVGElement>;

export interface IconProps extends IconBaseProps, Omit<SvgAttributes, 'color'> {}
