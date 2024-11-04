import { CamelToPascal, Metadata } from './types'
import fs from 'node:fs'
import path from 'node:path'
import chalk from 'chalk'

const __dirname = import.meta.dirname
const METADATA_PATH = path.resolve(__dirname, './metadata.json')

//----------------------------------------------------------------------------------------------------------------

/**
 * Load the metadata from the JSON file
 *
 * @returns {Promise<Object>} The metadata object
 */
export const loadMetadata = async (): Promise<Object> => {
    try {
        return JSON.parse(await fs.promises.readFile(METADATA_PATH, 'utf-8'))
    } catch (error) {
        console.error(chalk.red('Error loading metadata:'), error)
        process.exit(1)
    }
}

//----------------------------------------------------------------------------------------------------------------

/**
 * Check if the metadata file exists
 * @returns {void}
 * @throws {Error} If the metadata file does not exist
 */
export const checkMetadataFileExists = () => {
    if (!fs.existsSync(METADATA_PATH)) {
        console.log(chalk.red(`Error: Metadata file ${METADATA_PATH} does not exist.`))
        process.exit(1) // Exit with an error
    }
}

//----------------------------------------------------------------------------------------------------------------
/**
 * Check if the metadata is valid
 * @param {any} data - The metadata object
 * @returns {boolean} - True if the metadata is valid, false otherwise
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
 * Converts string to kebab case
 *
 * @param {string} str
 * @returns {string} A kebabized string
 */
export const toKebabCase = (str: string): string => {
    return str
        .replace(/([a-z])([A-Z])/g, '$1-$2') // Separate uppercase letters without altering the first letter.
        .replace(/[\s,]+/g, '-') // Replace spaces and commas with dashes.
        .replace(/[^a-zA-Z0-9\-]/g, '') // Remove non-alphanumeric characters (including uppercase).
        .toLowerCase() // Convert to lowercase at the end.
}

//----------------------------------------------------------------------------------------------------------------

/**
 * Cleans icon name
 *
 * @param {string} str
 * @returns {string} A cleaned icon name
 */
export const fixIconName = (str: string): string => {
    return str
        .replace(/4K/g, 'FourK')
}

//----------------------------------------------------------------------------------------------------------------

/**
 * Converts string to camel case
 *
 * @param {string} string
 * @returns {string} A camelized string
 */
export const toCamelCase = <T extends string>(string: T) =>
    string.replace(/^([A-Z])|[\s-_]+(\w)/g, (match, p1, p2) =>
        p2 ? p2.toUpperCase() : p1.toLowerCase()
    )

//----------------------------------------------------------------------------------------------------------------

/**
 * Converts string to pascal case
 *
 * @param {string} string
 * @returns {string} A pascalized string
 */
export const toPascalCase = <T extends string>(string: T): CamelToPascal<T> => {
    const camelCase = toCamelCase(string)

    return (camelCase.charAt(0).toUpperCase() + camelCase.slice(1)) as CamelToPascal<T>
}
