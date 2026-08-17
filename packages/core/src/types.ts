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

/** Hand-curated description metadata for one canonical icon. */
export interface IconDescription {
    name: string
    category: string
    categoryTags: string[]
    tags: string[]
    deprecatedAliases?: DeprecatedIconAlias[]
}

/**
 * Icon Weight Type
 */
export type IconWeight = 'Broken' | 'LineDuotone' | 'Linear' | 'Outline' | 'Bold' | 'BoldDuotone'
