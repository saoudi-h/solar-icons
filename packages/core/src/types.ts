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
 * Icon Style Enum
 */
export enum IconStyle {
    BROKEN = 'Broken',
    LINE_DUOTONE = 'LineDuotone',
    LINEAR = 'Linear',
    OUTLINE = 'Outline',
    BOLD = 'Bold',
    BOLD_DUOTONE = 'BoldDuotone',
}

/**
 * Icon Weight Type
 */
export type IconWeight = 'Broken' | 'LineDuotone' | 'Linear' | 'Outline' | 'Bold' | 'BoldDuotone'
