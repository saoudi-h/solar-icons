import fs from 'node:fs/promises'
import path from 'node:path'
import { fixIconName } from '../utils'
import pc from 'picocolors'

const __dirname = import.meta.dirname
const METADATA_PATH = path.resolve(__dirname, '../metadata.json')

async function updateMetadata() {
    const content = await fs.readFile(METADATA_PATH, 'utf-8')
    const metadata = JSON.parse(content)

    for (const category in metadata.categories) {
        metadata.categories[category].icons = metadata.categories[category].icons.map(icon => fixIconName(icon))
        // Remove duplicates if any were created by renaming
        metadata.categories[category].icons = [...new Set(metadata.categories[category].icons)]
    }

    await fs.writeFile(METADATA_PATH, JSON.stringify(metadata, null, 2), 'utf-8')
}

console.log(pc.blue('Updating metadata.json with corrected names...'))
try {
    await updateMetadata()
    console.log(pc.green('metadata.json updated successfully.'))
} catch (error) {
    console.error(pc.red('Error updating metadata.json:'), error)
}
