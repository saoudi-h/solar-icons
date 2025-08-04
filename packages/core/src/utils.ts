import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'
import type { CamelToPascal, Metadata } from './types'

const __dirname = import.meta.dirname
const METADATA_PATH = path.resolve(__dirname, './metadata.json')

// ----------------------------------------------------------------------------------------------------------------

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

//----------------------------------------------------------------------------------------------------------------

/**
 * Load the metadata from the JSON file
 * @returns The metadata object
 */
export const loadMetadata = async (): Promise<object> => {
    try {
        return JSON.parse(await fs.promises.readFile(METADATA_PATH, 'utf-8'))
    } catch (error) {
        console.error(pc.red('Error loading metadata:'), error)
        process.exit(1)
    }
}

//----------------------------------------------------------------------------------------------------------------

/**
 * Check if the metadata file exists
 *
 * If the metadata file does not exist, this function will log an error
 * and exit the process with an error code.
 */
export const checkMetadataFileExists = () => {
    if (!fs.existsSync(METADATA_PATH)) {
        console.log(pc.red(`Error: Metadata file ${METADATA_PATH} does not exist.`))
        process.exit(1) // Exit with an error
    }
}

//----------------------------------------------------------------------------------------------------------------
/**
 * Check if the metadata is valid
 * @param data - The metadata object
 * @returns - True if the metadata is valid, false otherwise
 */
export function isValidMetadata(data: any): data is Metadata {
    // Check if the data is an object and has the "categories" property
    if (
        !data ||
        typeof data !== 'object' ||
        !data.categories ||
        typeof data.categories !== 'object'
    ) {
        return false
    }

    // Check if each category has the "tags" and "icons" properties
    for (const category in data.categories) {
        const categoryData = data.categories[category]

        // Check if the category data is an object and has the "tags" and "icons" properties
        if (!categoryData || typeof categoryData !== 'object') {
            return false
        }

        if (
            !Array.isArray(categoryData.tags) ||
            !categoryData.tags.every((tag: any) => typeof tag === 'string')
        ) {
            return false
        }

        if (
            !Array.isArray(categoryData.icons) ||
            !categoryData.icons.every((icon: any) => typeof icon === 'string')
        ) {
            return false
        }
    }

    return true
}

//----------------------------------------------------------------------------------------------------------------

/**
 * Converts a string to kebab case
 * @example
 * toKebabCase('StringWithUppercaseLetters') // 'string-with-uppercase-letters'
 * toKebabCase('String With Spaces') // 'string-with-spaces'
 * toKebabCase('String,With,Commas') // 'string-with-commas'
 * toKebabCase('String!With!Punctuation') // 'string-with-punctuation'
 * toKebabCase('StringWithUppercaseLetters And Spaces') // 'string-with-uppercase-letters-and-spaces'
 * @param str - The string to convert to kebab case
 * @returns The kebab case representation of the string
 */
export const toKebabCase = (str: string): string => {
    return str
        .replace(/([a-z])([A-Z])/g, '$1-$2') // Separate uppercase letters without altering the first letter.
        .replace(/[\s,]+/g, '-') // Replace spaces and commas with dashes.
        .replace(/[^a-z0-9-]/gi, '') // Remove non-alphanumeric characters (including uppercase).
        .toLowerCase() // Convert to lowercase at the end.
}

//----------------------------------------------------------------------------------------------------------------

/**
 * Replaces occurrences of "4K" in the icon name string with "FourK".
 * @param str - The icon name string to be fixed.
 * @returns The fixed icon name string with "4K" replaced by "FourK".
 */
export const fixIconName = (str: string): string => {
    return str.replace(/4K/g, 'FourK')
}

//----------------------------------------------------------------------------------------------------------------

/**
 * Converts a string to camel case
 * @example
 * toCamelCase('string-with-dashes') // 'stringWithDashes'
 * toCamelCase('String With Spaces') // 'stringWithSpaces'
 * toCamelCase('String,With,Commas') // 'stringWithCommas'
 * toCamelCase('String!With!Punctuation') // 'stringWithPunctuation'
 * toCamelCase('StringWithUppercaseLetters And Spaces') // 'stringWithUppercaseLettersAndSpaces'
 * @param string - The string to convert to camel case
 * @returns The camel case representation of the string
 */
export const toCamelCase = <T extends string>(string: T) =>
    string.replace(/^([A-Z])|[\s\-_]+(\w)/g, (_, p1, p2) =>
        p2 ? p2.toUpperCase() : p1.toLowerCase()
    )

//----------------------------------------------------------------------------------------------------------------

/**
 * Converts a string to PascalCase (uppercase first letter, no separators).
 * @example
 * toPascalCase('string-with-dashes') // 'StringWithDashes'
 * toPascalCase('String With Spaces') // 'StringWithSpaces'
 * toPascalCase('String,With,Commas') // 'StringWithCommas'
 * toPascalCase('String!With!Punctuation') // 'StringWithPunctuation'
 * toPascalCase('StringWithUppercaseLetters And Spaces') // 'StringWithUppercaseLettersAndSpaces'
 * @param string - The string to convert to PascalCase
 * @returns The PascalCase representation of the string
 */
export const toPascalCase = <T extends string>(string: T): CamelToPascal<T> => {
    const camelCase = toCamelCase(string)

    return (camelCase.charAt(0).toUpperCase() + camelCase.slice(1)) as CamelToPascal<T>
}
