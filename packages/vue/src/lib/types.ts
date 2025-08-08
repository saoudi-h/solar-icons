/**
 * Available icon weights
 */
export type IconWeight = 'Broken' | 'LineDuotone' | 'Linear' | 'Outline' | 'Bold' | 'BoldDuotone'

/**
 * Type representing a value that can be either a number or a string
 */
export type Numbrish = number | string

/**
 * Properties for individual icon components
 */
export interface IconProps {
    alt?: string
    color?: string
    size?: Numbrish
    weight?: IconWeight
    mirrored?: boolean
}

/**
 * Configuration for Solar Icons
 */
export interface SolarIconsConfig {
    /**
     * Default color for all icons
     * @default 'currentColor'
     */
    color?: string
    /**
     * Default size for all icons (can be a number or a string with unit)
     * @default '1em'
     */
    size?: Numbrish
    /**
     * Default weight for all icons
     * @default 'Linear'
     */
    weight?: IconWeight
    /**
     * Whether to mirror icons (useful for RTL layouts)
     * @default false
     */
    mirrored?: boolean
}

/**
 * Basic properties for Solar Icons
 */
export interface SolarIcons {
    color?: string
    size?: Numbrish
    mirrored?: boolean
    alt?: string
}

/**
 * Context interface for Solar Icons
 */
export interface SolarIconContext {
    config: SolarIconsConfig
    setConfig(config: SolarIconsConfig): void
    setWeight(weight: IconWeight): void
    setSize(size: Numbrish): void
    setColor(color: string): void
}

/**
 * Structure representing an SVG node
 */
export type IconNode = [
    string, // tagName (e.g., 'path', 'g')
    Record<string, any>, // attributes
    IconNode[], // children
]
