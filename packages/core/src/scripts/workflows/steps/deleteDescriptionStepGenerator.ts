import fs from 'node:fs'
import type { Context } from '../types'
import { isNodeError } from '../utils'

/**
 * Generates a step that removes an icon's description from a metadata file.
 *
 * If the icon is found in the metadata file, it is removed. If the icon is not
 * found, this step does nothing.
 * @param metadataPath - The path to the metadata file.
 * @returns A step that removes an icon's description from the metadata file.
 */
export const deleteDescriptionStepGenerator =
    (metadataPath: string) => async (context: Context) => {
        const { iconName } = context

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

        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        const index = metadata.findIndex((item: any) => item.name === iconName)
        if (index >= 0) {
            metadata.splice(index, 1)
        }

        fs.writeFileSync(metadataPath, JSON.stringify(metadata, null, 2), 'utf-8')

        return context
    }
