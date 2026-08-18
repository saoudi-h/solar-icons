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

/** Metadata for a legacy icon name kept as a compatibility export. */
export interface DeprecatedIconAlias {
    name: string
    replacement: string
    reason: string
    deprecatedSince?: string
}

/** Origin of an icon: upstream set or project extension. */
export type IconOrigin = 'upstream' | 'extended'

/** Lifecycle state for an icon introduced by the project. */
export type IconState = 'stable' | 'beta'

/** Hand-curated description metadata for one canonical icon. */
export interface IconDescription {
    name: string
    category: string
    categoryTags: string[]
    tags: string[]
    /** Legacy compatibility exports, generated as deprecated aliases. */
    deprecatedAliases?: DeprecatedIconAlias[]
    /** Non-deprecated spelling synonyms for search and optional alias exports. */
    aliases?: string[]
    /** Origin and lifecycle metadata for icons added outside the upstream set. */
    origin?: IconOrigin
    addedAt?: string
    author?: string
    state?: IconState
    useCases?: string[]
}

/**
 * Icon Weight Type
 */
export type IconWeight = 'Broken' | 'LineDuotone' | 'Linear' | 'Outline' | 'Bold' | 'BoldDuotone'
