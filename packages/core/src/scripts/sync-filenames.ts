import fs from 'node:fs/promises'
import path from 'node:path'
import { fixIconName } from '../utils'
import pc from 'picocolors'

const __dirname = import.meta.dirname
const SVGS_PATH = path.resolve(__dirname, '../../svgs')

async function renameFiles(dir) {
    const entries = await fs.readdir(dir, { withFileTypes: true })

    for (const entry of entries) {
        const fullPath = path.join(dir, entry.name)
        if (entry.isDirectory()) {
            await renameFiles(fullPath)
            
            // Rename directory if needed (e.g. categories or weights if we ever add renames for them)
            const newDirName = fixIconName(entry.name)
            if (newDirName !== entry.name) {
                const newDirPath = path.join(dir, newDirName)
                await fs.rename(fullPath, newDirPath)
                console.log(pc.yellow(`Renamed Dir: ${entry.name} -> ${newDirName}`))
            }
        } else if (entry.isFile() && entry.name.endsWith('.svg')) {
            const oldName = entry.name.replace('.svg', '')
            const newName = fixIconName(oldName)
            
            if (oldName !== newName) {
                const newPath = path.join(dir, `${newName}.svg`)
                await fs.rename(fullPath, newPath)
                console.log(pc.green(`Renamed SVG: ${entry.name} -> ${newName}.svg`))
            }
        }
    }
}

console.log(pc.blue('Syncing SVG filenames with new naming rules...'))
try {
    await renameFiles(SVGS_PATH)
    console.log(pc.green('Done syncing filenames.'))
} catch (error) {
    console.error(pc.red('Error syncing filenames:'), error)
}
