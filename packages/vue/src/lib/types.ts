export enum IconStyle {
    BROKEN = 'Broken',
    LINE_DUOTONE = 'LineDuotone',
    LINEAR = 'Linear',
    OUTLINE = 'Outline',
    BOLD = 'Bold',
    BOLD_DUOTONE = 'BoldDuotone',
}

/**
 * Props accepted by every Solar icon component.
 */
export interface IconProps {
    /** Icon width and height. Accepts CSS units or a raw number (px). */
    size?: string | number
    /** Icon color. When omitted, reads `--solar-color` from a parent `SolarProvider` or falls back to `currentColor`. */
    color?: string
    /** Stroke width for Linear, Broken, and LineDuotone styles. */
    strokeWidth?: string | number
    /** Accessible label rendered as a `<title>` inside the SVG. */
    alt?: string
    /** Secondary color for BoldDuotone and LineDuotone styles. */
    secondaryColor?: string
    /** Opacity of the secondary duotone layer (0–1). */
    secondaryOpacity?: number
    /** When `true`, the icon ignores all `SolarProvider` values and uses hardcoded defaults. */
    isolated?: boolean
}
