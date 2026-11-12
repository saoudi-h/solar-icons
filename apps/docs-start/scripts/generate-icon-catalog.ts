import { createHash } from 'node:crypto'
import { mkdir, readFile, rename, rm, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import { parseSvgs, transformDuotoneAccent } from '@solar-icons/core'

import icons from '../generated/descriptions'
import { categories } from '../generated/utils'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const outputDir = path.join(appRoot, 'public/data')
const outputFile = path.join(outputDir, 'icons.json')
const generatedDir = path.join(appRoot, 'src/generated')
const chunksDir = path.join(generatedDir, 'icon-chunks')
const loadersFile = path.join(generatedDir, 'icon-chunk-loaders.ts')
const styleSlugs = ['bold', 'bold-duotone', 'broken', 'linear', 'line-duotone', 'outline'] as const
const chunkSize = 48

// Category tags are shared in memory and stored only once in the payload.
const categoryTags = Object.fromEntries(
    categories.map(category => [
        category,
        icons.find(icon => icon.category === category)!.categoryTags,
    ])
)
const catalog = icons.map(
    ({ name, category, categoryTags: iconCategoryTags, tags, origin, addedAt }) => ({
        name,
        category,
        tags,
        ...(JSON.stringify(iconCategoryTags) !== JSON.stringify(categoryTags[category])
            ? { categoryTags: iconCategoryTags }
            : {}),
        ...(origin === 'extended' ? { origin } : {}),
        ...(addedAt ? { addedAt } : {}),
    })
)

await mkdir(outputDir, { recursive: true })
await mkdir(generatedDir, { recursive: true })
// Preserve the public JSON contract; only the bundled catalogue is compact.
const categoryOffsets = new Map<string, number>()
const publicCatalog = icons.map(({ name, category, categoryTags, tags, origin, addedAt }) => {
    const offset = categoryOffsets.get(category) ?? 0
    categoryOffsets.set(category, offset + 1)
    return {
        name,
        category,
        categoryTags,
        tags,
        chunk: Math.floor(offset / chunkSize),
        ...(origin ? { origin } : {}),
        ...(addedAt ? { addedAt } : {}),
    }
})
await writeIfChanged(outputFile, `${JSON.stringify(publicCatalog)}\n`)
await writeIfChanged(
    path.join(generatedDir, 'icon-catalog.json'),
    JSON.stringify({ categoryTags, icons: catalog })
)

// Build exports from the same normalized source as the framework packages.
// Six styles travel together in one immutable file per icon.
const svgDir = path.join(outputDir, 'icon-svgs')
await mkdir(svgDir, { recursive: true })
const { groups } = await parseSvgs({
    svgsDir: path.resolve(appRoot, '../../packages/core/svgs'),
    preview: false,
})
const groupsByName = new Map(groups.map(group => [group.kebabName, group]))
const svgFiles: Record<string, string> = {}
for (const { name } of catalog) {
    const group = groupsByName.get(name)
    if (!group) throw new Error(`Missing SVG source for ${name}`)
    const styles = Object.fromEntries(
        Object.values(group.styles).map(icon => {
            const body = (transformDuotoneAccent(icon.duotoneAccentInner, false) ?? '') + icon.inner
            return [
                icon.styleKebab,
                `<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke-width="1.5" class="solar solar-${name}-${icon.styleKebab}">${body}</svg>`,
            ]
        })
    )
    if (styleSlugs.some(style => !styles[style])) throw new Error(`Missing SVG style for ${name}`)
    const body = JSON.stringify(styles)
    const hash = createHash('sha256').update(body).digest('hex').slice(0, 12)
    const filename = `${name}.${hash}.json`
    await writeIfChanged(path.join(svgDir, filename), body)
    svgFiles[name] = filename
}
await writeIfChanged(path.join(generatedDir, 'icon-svg-files.json'), JSON.stringify(svgFiles))

// SVG previews are data, not thousands of linked React modules in Vite dev.
const previewDir = path.join(outputDir, 'icon-previews')
await mkdir(previewDir, { recursive: true })
const previewFiles: Record<string, string> = {}
const initialNames = new Set([
    // The dense default grid shows about 120 icons on a 1440×900 screen.
    ...icons.slice(0, 144).map(icon => icon.name),
    ...icons
        .filter(icon => icon.category === categories[0])
        .slice(0, 96)
        .map(icon => icon.name),
])
const initialIcons: Record<string, string> = {}
let chunkCount = 0
for (const style of styleSlugs) {
    for (const category of categories) {
        const categoryIcons = icons.filter(icon => icon.category === category)
        for (let offset = 0; offset < categoryIcons.length; offset += chunkSize) {
            const chunk = Math.floor(offset / chunkSize)
            const contents: Record<string, string> = {}
            for (const { name } of categoryIcons.slice(offset, offset + chunkSize)) {
                const group = groupsByName.get(name)!
                const icon = Object.values(group.styles).find(icon => icon.styleKebab === style)!
                const body =
                    (transformDuotoneAccent(icon.duotoneAccentInner, false) ?? '') + icon.inner
                contents[name] = body
                if (style === 'bold-duotone' && initialNames.has(name)) initialIcons[name] = body
            }
            const body = JSON.stringify(contents)
            const hash = createHash('sha256').update(body).digest('hex').slice(0, 12)
            const filename = `${style}-${category}-${chunk}.${hash}.json`
            await writeIfChanged(path.join(previewDir, filename), body)
            previewFiles[`${style}/${category}:${chunk}`] = filename
            chunkCount += 1
        }
    }
}
await writeIfChanged(
    path.join(generatedDir, 'icon-preview-files.json'),
    JSON.stringify(previewFiles)
)
await writeIfChanged(
    path.join(generatedDir, 'icon-preview-initial.json'),
    JSON.stringify(initialIcons)
)
await writeIfChanged(
    loadersFile,
    `export const iconChunkSize = ${chunkSize}\nexport type IconStyle = ${styleSlugs.map(style => JSON.stringify(style)).join(' | ')}\n`
)
// Obsolete JS chunks are no longer part of the explorer's module graph.
await rm(chunksDir, { recursive: true, force: true })
console.log(
    `Generated ${catalog.length} icon records, ${chunkCount} SVG preview sets and ${initialNames.size} initial previews.`
)

async function writeIfChanged(filename: string, body: string) {
    const previous = await readFile(filename, 'utf8').catch(() => undefined)
    if (previous !== body) {
        // Never expose a partially written JSON module to a running dev server.
        const temporary = `${filename}.${process.pid}.tmp`
        await writeFile(temporary, body)
        await rename(temporary, filename)
    }
}
