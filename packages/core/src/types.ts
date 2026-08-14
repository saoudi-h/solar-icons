/**
 * Convert a type string from camelCase to PascalCase
 * @example
 * type Test = CamelToPascal<'fooBar'> // 'FooBar'
 */
export type CamelToPascal<T extends string> = T extends `${infer FirstChar}${infer Rest}`
    ? `${Capitalize<FirstChar>}${Rest}`
    : never

/**
 * Metadata type
 */
export interface Metadata {
    categories: {
        [category: string]: {
            tags: string[]
            icons: string[]
        }
    }
}

/**
 * Origin of an icon: part of the upstream 480 Design set, or added by this project.
 */
export type IconOrigin = 'upstream' | 'extended'

/**
 * Lifecycle state of an icon.
 */
export type IconState = 'stable' | 'beta'

/**
 * Per-icon metadata entry of `metadata-descriptions.json` (hand-curated).
 * Absent optional fields keep their defaults: origin = 'upstream', state = 'stable'.
 */
export interface IconDescription {
    name: string
    category: string
    categoryTags: string[]
    tags: string[]
    origin?: IconOrigin
    addedAt?: string
    author?: string
    state?: IconState
    aliases?: string[]
    useCases?: string[]
}

/**
 * Icon Weight Type
 */
export type IconWeight = 'Broken' | 'LineDuotone' | 'Linear' | 'Outline' | 'Bold' | 'BoldDuotone'
