import { mkdir, rm, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import icons from '../../docs/generated/descriptions'
import { categories } from '../../docs/generated/utils'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const outputDir = path.join(appRoot, 'public/data')
const outputFile = path.join(outputDir, 'icons.json')
const generatedDir = path.join(appRoot, 'src/generated')
const chunksDir = path.join(generatedDir, 'icon-chunks')
const loadersFile = path.join(generatedDir, 'icon-chunk-loaders.ts')
const styleSlugs = ['bold', 'bold-duotone', 'broken', 'linear', 'line-duotone', 'outline'] as const
const chunkSize = 48

const categoryOffsets = new Map<string, number>()
const catalog = icons.map(({ name, category, categoryTags, tags, origin, addedAt }) => {
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

await mkdir(outputDir, { recursive: true })
await writeFile(outputFile, `${JSON.stringify(catalog)}\n`)

await rm(chunksDir, { recursive: true, force: true })
await rm(loadersFile, { force: true })

const loaderGroups = new Map<string, { style: (typeof styleSlugs)[number]; category: string; chunk: number }[]>()
let chunkModuleCount = 0

for (const style of styleSlugs) {
    for (const category of categories) {
        const categoryIcons = icons.filter(icon => icon.category === category)
        for (let offset = 0; offset < categoryIcons.length; offset += chunkSize) {
            const chunk = Math.floor(offset / chunkSize)
            const chunkIcons = categoryIcons.slice(offset, offset + chunkSize)
            const chunkId = `${category}:${chunk}`
            const moduleDir = path.join(chunksDir, style)
            const moduleFile = path.join(moduleDir, `${category}-${chunk}.ts`)

            await mkdir(moduleDir, { recursive: true })
            const importStatements = chunkIcons
                .map(
                    (icon, index) =>
                        `import { ${toComponentName(icon.name)} as Icon${index} } from '@solar-icons/react/${style}/${icon.name}'`
                )
                .join('\n')
            const records = chunkIcons
                .map((icon, index) => `    ${JSON.stringify(icon.name)}: Icon${index},`)
                .join('\n')

            await writeFile(
                moduleFile,
                `${importStatements}\n\nexport const icons: Record<string, unknown> = {\n${records}\n}\n`
            )

            const groups = loaderGroups.get(style) ?? []
            groups.push({ style, category, chunk })
            loaderGroups.set(style, groups)
            chunkModuleCount += 1
        }
    }
}

const styleEntries = styleSlugs
    .map(style => {
        const entries = (loaderGroups.get(style) ?? [])
            .map(
                ({ category, chunk }) =>
                    `        ${JSON.stringify(`${category}:${chunk}`)}: () => import('./icon-chunks/${style}/${category}-${chunk}'),`
            )
            .join('\n')
        return `    ${JSON.stringify(style)}: {\n${entries}\n    },`
    })
    .join('\n')

await mkdir(generatedDir, { recursive: true })
await writeFile(
    loadersFile,
    `export const iconChunkLoaders = {\n${styleEntries}\n} as const\n\nexport type IconStyle = keyof typeof iconChunkLoaders\n\ntype LoadedChunk = { icons: Record<string, unknown> }\n\nexport function loadIconChunk(style: IconStyle, key: string): Promise<LoadedChunk> {\n    const loader = iconChunkLoaders[style][key as keyof (typeof iconChunkLoaders)[typeof style]]\n    if (!loader) return Promise.reject(new Error(\`Unknown icon chunk: \${style}/\${key}\`))\n    return loader()\n}\n`
)

console.log(
    `Generated ${catalog.length.toLocaleString()} icon records (${Buffer.byteLength(JSON.stringify(catalog))} bytes uncompressed) and ${chunkModuleCount.toLocaleString()} lazy icon chunks.`
)

function toComponentName(name: string) {
    return (
        name
            .split('-')
            .map(part => part.charAt(0).toUpperCase() + part.slice(1))
            .join('') + 'Icon'
    )
}
