import { access, copyFile, mkdir, readdir } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const sourceDir = path.resolve(appRoot, '../docs/public')
const publicDir = path.join(appRoot, 'public')

async function copyMissingAssets(source: string, destination: string): Promise<void> {
    await mkdir(destination, { recursive: true })

    for (const entry of await readdir(source, { withFileTypes: true })) {
        if (entry.isDirectory()) {
            await copyMissingAssets(
                path.join(source, entry.name),
                path.join(destination, entry.name)
            )
            continue
        }

        if (entry.name === 'robots.txt') continue

        const target = path.join(destination, entry.name)
        try {
            await access(target)
        } catch {
            await copyFile(path.join(source, entry.name), target)
        }
    }
}

await copyMissingAssets(sourceDir, publicDir)
console.log('Copied missing static assets from the existing docs site.')
