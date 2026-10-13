import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import { buildCatalogProvenance, stableSerialize } from './catalog-provenance.mjs'

const directory = path.dirname(fileURLToPath(import.meta.url))
const pluginRoot = path.resolve(directory, '..')
const repositoryRoot = path.resolve(pluginRoot, '../..')
const staticRoot = path.join(repositoryRoot, 'packages/static')
const outputPath = path.join(pluginRoot, 'dist/ui.html')

const staticIcons = readJson(path.join(staticRoot, 'dist/icons.json'))
const staticMetadata = readJson(path.join(staticRoot, 'dist/metadata-descriptions.json'))
const staticPackage = readJson(path.join(staticRoot, 'package.json'))
const html = readFile(outputPath)

const embeddedIcons = readEmbeddedJson(html, 'solar-icon-data')
const embeddedMetadata = readEmbeddedJson(html, 'solar-icon-metadata')
const embeddedProvenance = readEmbeddedJson(html, 'solar-catalog-provenance')
const expectedProvenance = buildCatalogProvenance({
    icons: staticIcons,
    metadata: staticMetadata,
    packageVersion: staticPackage.version,
})

const mismatches = []
// Embedded icons are the bundle's offline slice: every style,
// the chunks the build's data budget could afford. Chunks left
// out are fetched from the CDN at launch, so only the embedded
// subset is compared here, normalized exactly like the build.
const metadataByName = new Map(
    staticMetadata.map(entry => [entry.name, entry])
)
const expected = {}
for (const [key, svg] of Object.entries(staticIcons)) {
    const match = key.match(/^(.*)-(bold-duotone|line-duotone|bold|broken|linear|outline)$/)
    if (!match) continue
    const name = match[1]
    const style = match[2]
    const entry = metadataByName.get(name)
    // Alias keys have no metadata entry and are never embedded.
    if (!entry) continue
    expected[style] = expected[style] || {}
    expected[style][entry.category] = expected[style][entry.category] || {}
    expected[style][entry.category][name] = svg
        .replace(/^<svg[^>]*>/, '')
        .replace(/<\/svg>$/, '')
        .replace(/>\s+</g, '><')
        .trim()
}
let embeddedEntries = 0
for (const [style, categories] of Object.entries(embeddedIcons)) {
    for (const [category, entries] of Object.entries(categories)) {
        for (const [name, body] of Object.entries(entries)) {
            const expectedBody = expected[style]?.[category]?.[name]
            if (expectedBody === undefined) {
                mismatches.push(`embedded ${style}/${category}/${name} is not in the catalog`)
            } else if (body !== expectedBody) {
                mismatches.push(`embedded body differs from the catalog: ${style}/${name}`)
            }
            embeddedEntries += 1
        }
    }
}
// Linear is the offline guarantee: it must ship whole.
const countIcons = chunks =>
    Object.values(chunks ?? {}).reduce(
        (sum, entries) => sum + Object.keys(entries).length,
        0
    )
const linearCatalogCount = countIcons(expected.linear)
const linearEmbeddedCount = countIcons(embeddedIcons.linear)
if (linearEmbeddedCount !== linearCatalogCount) {
    mismatches.push(
        `linear is not fully embedded: ${linearEmbeddedCount}/${linearCatalogCount}`
    )
}
if (stableSerialize(embeddedMetadata) !== stableSerialize(staticMetadata)) {
    mismatches.push(
        'embedded icon metadata differs from packages/static/dist/metadata-descriptions.json'
    )
}
if (stableSerialize(embeddedProvenance) !== stableSerialize(expectedProvenance)) {
    mismatches.push('embedded catalog provenance does not match the static package')
}
const placeholders = [
    '__SOLAR_VERSION_VALUE__',
    '__SOLAR_ICON_DATA__',
    '__SOLAR_ICON_METADATA__',
    '__SOLAR_CATALOG_PROVENANCE__',
    '__SOLAR_PACKAGE_LOGOS__',
]
if (placeholders.some(placeholder => html.includes(placeholder))) {
    mismatches.push('generated UI still contains an unreplaced build placeholder')
}

if (mismatches.length > 0) {
    console.error('Figma catalog sync check failed:')
    for (const mismatch of mismatches) console.error(`- ${mismatch}`)
    process.exit(1)
}

console.info(
    `Figma catalog sync is valid: ${expectedProvenance.packageVersion}, ${expectedProvenance.logicalIconCount} logical icons, ${expectedProvenance.mapEntryCount} SVG entries, ${embeddedEntries}/${expectedProvenance.canonicalSvgCount} embedded, ${expectedProvenance.catalogHash}`
)

function readFile(filePath) {
    if (!fs.existsSync(filePath))
        throw new Error(`Required generated file was not found: ${filePath}`)
    return fs.readFileSync(filePath, 'utf8')
}

function readJson(filePath) {
    return JSON.parse(readFile(filePath))
}

function readEmbeddedJson(htmlSource, id) {
    const pattern = new RegExp(`<script id="${id}" type="application/json">([\\s\\S]*?)</script>`)
    const match = htmlSource.match(pattern)
    if (!match) throw new Error(`Embedded JSON block was not found in dist/ui.html: ${id}`)
    try {
        return JSON.parse(match[1])
    } catch (error) {
        throw new Error(`Embedded JSON block is invalid: ${id}`, { cause: error })
    }
}
