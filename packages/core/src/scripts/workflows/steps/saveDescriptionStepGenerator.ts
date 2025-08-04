import fs from 'node:fs'
import type { Context } from '../types'
import { isNodeError, isString } from '../utils'

/**
 * Generates a step function that saves icon descriptions to a metadata file.
 * @param metadataPath - The filesystem path to the metadata JSON file.
 * @returns An asynchronous function that processes the icon context to update
 *          the metadata file with enriched descriptions.
 *
 * The function extracts and parses the description from the context. It then
 * updates the metadata file with the icon's name, category, and tags, ensuring
 * that category tags and names are unique. If the icon already exists in the
 * metadata, its entry is updated; otherwise, a new entry is added. Any errors
 * during reading or writing the file are thrown, except for a 'file not found'
 * error, which initializes an empty metadata array.
 * @throws Will throw an error if the description is not a valid string or JSON parsing fails.
 */
export const saveDescriptionStepGenerator = (metadataPath: string) => async (context: Context) => {
    const { category, tags, iconName, description } = context

    if (!isString(description)) {
        throw new Error('description is undefined or not a string')
    }

    const parsed = parseDescription(description)
    if (!parsed) {
        throw new Error(`Invalid description format for icon: ${iconName}`)
    }

    let metadata = []
    try {
        metadata = JSON.parse(fs.readFileSync(metadataPath, 'utf-8'))
    } catch (error) {
        if (isNodeError(error) && error.code === 'ENOENT') {
            metadata = []
        } else {
            throw new Error(`Error reading metadata file: ${(error as Error).message}`)
        }
    }

    const updatedEntry = {
        name: iconName,
        category,
        categoryTags: Array.from(new Set([...tags, ...parsed.categories])),
        tags: Array.from(new Set(parsed.names)),
    }

    const index = metadata.findIndex((item: any) => item.name === iconName)
    if (index >= 0) {
        metadata[index] = updatedEntry
    } else {
        metadata.push(updatedEntry)
    }

    fs.writeFileSync(metadataPath, JSON.stringify(metadata, null, 2), 'utf-8')

    return context
}

/**
 * Parses a JSON string description to extract icon names and categories.
 *
 * The function expects the input description to be a JSON string containing
 * an object with `names` and `categories` arrays. Each element in these arrays
 * should be a string. If the description meets these criteria, it returns an
 * object containing the `names` and `categories` arrays. If the description
 * does not meet the expected format or an error occurs during parsing,
 * `null` is returned and an error message is logged.
 * @param description - A JSON string representing an icon description.
 * @returns An object with `names` and `categories` arrays if valid; otherwise, null.
 */
const parseDescription = (description: string) => {
    try {
        const parsed = JSON.parse(description)

        if (
            parsed &&
            typeof parsed === 'object' &&
            Array.isArray(parsed.names) &&
            Array.isArray(parsed.categories) &&
            parsed.names.every(isString) &&
            parsed.categories.every(isString)
        ) {
            return parsed as { names: string[]; categories: string[] }
        }

        throw new Error('Description format invalid: Missing required arrays or invalid elements.')
    } catch (error) {
        console.error(`Error parsing description: ${(error as Error).message}`)
        return null
    }
}
