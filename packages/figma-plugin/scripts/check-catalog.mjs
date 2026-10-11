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
// Embedded icons are the linear chunks only (other styles download as
// packs): compare against the static pack output recombined, not icons.json.
const expectedLinear = {}
for (const file of fs.readdirSync(path.join(staticRoot, 'dist/figma')).sort()) {
    const match = file.match(/^linear-(.+)\.json$/)
    if (!match) continue
    expectedLinear[match[1]] = readJson(path.join(staticRoot, 'dist/figma', file)).icons
}
if (stableSerialize(embeddedIcons) !== stableSerialize(expectedLinear)) {
    mismatches.push('embedded linear icons differ from packages/static/dist/figma packs')
}
// Every style × category pack must exist, parse, and carry the version.
const packManifest = readJson(path.join(staticRoot, 'dist/figma/manifest.json'))
for (const chunk of packManifest.chunks) {
    const packPath = path.join(staticRoot, 'dist/figma', `${chunk}.json`)
    if (!fs.existsSync(packPath)) {
        mismatches.push(`figma pack missing: ${chunk}.json`)
        continue
    }
    const pack = readJson(packPath)
    if (pack.version !== staticPackage.version || typeof pack.icons !== 'object') {
        mismatches.push(`figma pack invalid: ${chunk}.json`)
    }
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
    `Figma catalog sync is valid: ${expectedProvenance.packageVersion}, ${expectedProvenance.logicalIconCount} logical icons, ${expectedProvenance.mapEntryCount} SVG entries, ${expectedProvenance.catalogHash}`
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
