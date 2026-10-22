/**
 * Builds the static equivalent of Next's image optimizer.
 *
 * For every image the shared components load through `next/image`, each width
 * candidate is resized and re-encoded exactly like Next does, so the browser
 * downloads the same bytes in both apps and renders the same pixels.
 */
import { mkdir, readFile, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import sharp from 'sharp'

import { allSizes, defaultQuality, optimizedImageSources } from '../src/utils/image-optimization'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const publicDir = path.join(appRoot, 'public')
const outputDir = path.join(publicDir, 'optimized')

await mkdir(outputDir, { recursive: true })

let total = 0

for (const source of optimizedImageSources) {
    const input = await readFile(path.join(publicDir, source.file.replace(/^\//, '')))
    const key = source.file.slice(source.file.lastIndexOf('/') + 1).replace(/\.[^.]+$/, '')
    const targetDir = path.join(outputDir, key)
    await mkdir(targetDir, { recursive: true })

    for (const width of allSizes) {
        const optimized = await sharp(input)
            .rotate()
            .resize(width, undefined, { withoutEnlargement: true })
            .webp({ quality: defaultQuality })
            .toBuffer()
        await writeFile(path.join(targetDir, `${width}.webp`), optimized)
        total += optimized.length
    }

    console.log(`Optimized ${source.file}.`)
}

console.log(`Wrote optimized images to ${path.relative(appRoot, outputDir)} (${total} bytes).`)
