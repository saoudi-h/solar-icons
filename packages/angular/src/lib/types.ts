import type { Signal, Type } from '@angular/core';

type HtmlAttributes = { [key: string]: string | number };

/** SVG node as [tagName, attributes, children?] tuple with optional nested children */
export type IconNode = readonly [string, HtmlAttributes, IconNode[]?];

/** Icon data structure (kept for build-time processing only) */
export interface IconData {
    name: string;
    /** SVG nodes as nested tuple structure (used at build time only) */
    node: IconNode[];
    style: IconStyle;
    aliases?: string[];
}

/** Supported icon styles */
export type IconStyle =
    | 'Bold'
    | 'BoldDuotone'
    | 'Broken'
    | 'LineDuotone'
    | 'Linear'
    | 'Outline';

/** Input properties for icon components */
export interface IconProps {
    alt: Signal<string | undefined>;
    size: Signal<string | number>;
    color: Signal<string>;
    mirrored: Signal<boolean>;
}

/** Icon component type */
export type IconComponent = Type<IconProps>;

/** Nullable type helper */
export type Nullable<T> = T | null | undefined;
