import { build as esbuild } from 'esbuild'
import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import zlib from 'node:zlib'
import { build as vite } from 'vite'
import { buildCatalogProvenance } from './catalog-provenance.mjs'

const directory = path.dirname(fileURLToPath(import.meta.url))
const pluginRoot = path.resolve(directory, '..')
const repositoryRoot = path.resolve(pluginRoot, '../..')
const staticRoot = path.join(repositoryRoot, 'packages/static')
const outputDirectory = path.join(pluginRoot, 'dist')
const temporaryUiDirectory = path.join(outputDirectory, '.ui-build')

/** Byte budget for the embedded pack data, inside the bundle guard. */
const EMBED_DATA_BUDGET = 12.5 * 1024 * 1024

const icons = fs.readFileSync(path.join(staticRoot, 'dist/icons.json'), 'utf8')
const metadata = fs.readFileSync(path.join(staticRoot, 'dist/metadata-descriptions.json'), 'utf8')
const staticPackage = JSON.parse(fs.readFileSync(path.join(staticRoot, 'package.json'), 'utf8'))
const registry = JSON.parse(fs.readFileSync(path.join(repositoryRoot, 'registry.json'), 'utf8'))
const embeddedChunks = readEmbeddedChunks()
const catalogProvenance = buildCatalogProvenance({
    icons,
    metadata,
    packageVersion: staticPackage.version,
})
const packageLogos = createPackageLogos(registry)

const embeddedData = [
    embeddedChunks.json,
    JSON.stringify(registry),
    metadata,
    JSON.stringify(catalogProvenance),
]
if (embeddedData.some(value => value.toLowerCase().includes('</script'))) {
    throw new Error(
        'Embedded icon data contains a closing script tag and cannot be safely inlined.'
    )
}

fs.mkdirSync(outputDirectory, { recursive: true })
fs.rmSync(temporaryUiDirectory, { recursive: true, force: true })

await Promise.all([buildMain(), buildUi()])

const temporaryHtmlPath = path.join(temporaryUiDirectory, 'index.html')
let html = fs.readFileSync(temporaryHtmlPath, 'utf8')
html = inlineBuildAsset(
    html,
    'script',
    /<script type="module" crossorigin src="([^"]+)"><\/script>/
)
html = inlineBuildAsset(html, 'style', /<link rel="stylesheet" crossorigin href="([^"]+)">/)
html = html
    .replace('__SOLAR_VERSION_VALUE__', staticPackage.version)
    .replace('__SOLAR_ICON_DATA__', embeddedChunks.json)
    .replace('__SOLAR_REGISTRY__', JSON.stringify(registry))
    .replace('__SOLAR_ICON_METADATA__', metadata)
    .replace('__SOLAR_CATALOG_PROVENANCE__', JSON.stringify(catalogProvenance))
    .replace('__SOLAR_PACKAGE_LOGOS__', JSON.stringify(packageLogos))

const remainingPlaceholders = [
    '__SOLAR_VERSION_VALUE__',
    '__SOLAR_ICON_DATA__',
    '__SOLAR_REGISTRY__',
    '__SOLAR_ICON_METADATA__',
    '__SOLAR_CATALOG_PROVENANCE__',
    '__SOLAR_PACKAGE_LOGOS__',
].filter(placeholder => html.includes(placeholder))

if (remainingPlaceholders.length > 0) {
    throw new Error(
        `The Figma UI build placeholders were not replaced: ${remainingPlaceholders.join(', ')}`
    )
}

fs.writeFileSync(path.join(outputDirectory, 'ui.html'), html)
fs.rmSync(temporaryUiDirectory, { recursive: true, force: true })

const BUNDLE_LIMIT = 13.5 * 1024 * 1024
if (html.length > BUNDLE_LIMIT) {
    throw new Error(
        `Figma bundle is ${(html.length / 1024 / 1024).toFixed(2)} MiB, over the ${(BUNDLE_LIMIT / 1024 / 1024).toFixed(1)} MiB guard (Figma rejects over 15 MiB). Shrink the bundle before publishing.`
    )
}

const compressedSize = zlib.gzipSync(html).byteLength
console.info(
    `Built Solar Icons Figma plugin: ${catalogProvenance.logicalIconCount} icons × ${catalogProvenance.styleCount} styles, ${catalogProvenance.catalogHash}, ${(html.length / 1024 / 1024).toFixed(2)} MiB raw, ${(compressedSize / 1024 / 1024).toFixed(2)} MiB gzip, ${embeddedChunks.entries}/${catalogProvenance.canonicalSvgCount} SVG entries embedded.`
)

/**
 * Embedded pack data for the offline bundle, derived from the
 * published-shape `dist/icons.json` map and nested as
 * `{ [style]: { [category]: { [name]: body } } }`. Bodies are
 * whitespace-collapsed only. Linear always ships whole: it is the
 * offline guarantee. The other styles embed in display order
 * until the data budget is spent; the runtime fetches the
 * remaining chunks from the jsDelivr CDN at launch, so the
 * bundle never grows past the Figma limit as the catalog does.
 */
function readEmbeddedChunks() {
    const map = JSON.parse(fs.readFileSync(path.join(staticRoot, 'dist/icons.json'), 'utf8'))
    const descriptions = JSON.parse(
        fs.readFileSync(path.join(staticRoot, 'dist/metadata-descriptions.json'), 'utf8')
    )
    const categoryOf = {}
    const displayCategories = []
    for (const entry of descriptions) {
        categoryOf[entry.name] = entry.category
        if (!displayCategories.includes(entry.category)) {
            displayCategories.push(entry.category)
        }
    }
    const byStyle = {}
    for (const [key, svg] of Object.entries(map)) {
        const match = key.match(/^(.*)-(bold-duotone|line-duotone|bold|broken|linear|outline)$/)
        if (!match) continue
        const name = match[1]
        const style = match[2]
        // Alias keys (e.g. chat-square-2-linear) have no metadata
        // entry and are never browsed: the UI resolves canonical
        // names only.
        const category = categoryOf[name]
        if (!category) continue
        byStyle[style] = byStyle[style] || {}
        byStyle[style][category] = byStyle[style][category] || {}
        byStyle[style][category][name] = svg
            .replace(/^<svg[^>]*>/, '')
            .replace(/<\/svg>$/, '')
            .replace(/>\s+</g, '><')
            .trim()
    }
    if (Object.keys(byStyle.linear ?? {}).length === 0) {
        throw new Error('No linear icons found in dist/icons.json.')
    }
    const embedded = { linear: byStyle.linear }
    let bytes = JSON.stringify(embedded).length
    // Greedy fill in display order: a category embeds across the
    // fetched styles before the next category, so the first
    // browsed icons are always the ones shipped in the bundle.
    const fetchedStyles = Object.keys(byStyle)
        .filter(style => style !== 'linear')
        .sort()
    for (const category of displayCategories) {
        for (const style of fetchedStyles) {
            const chunk = byStyle[style]?.[category]
            if (!chunk) continue
            const cost = JSON.stringify(chunk).length
            if (bytes + cost > EMBED_DATA_BUDGET) continue
            embedded[style] = embedded[style] || {}
            embedded[style][category] = chunk
            bytes += cost
        }
    }
    const json = JSON.stringify(embedded)
    if (json.length > EMBED_DATA_BUDGET) {
        throw new Error(
            `Embedded pack data is ${(json.length / 1024 / 1024).toFixed(2)} MiB, over the ${(EMBED_DATA_BUDGET / 1024 / 1024).toFixed(1)} MiB budget.`
        )
    }
    const entries = Object.values(embedded).reduce(
        (sum, categories) =>
            sum +
            Object.values(categories).reduce(
                (categorySum, names) => categorySum + Object.keys(names).length,
                0
            ),
        0
    )
    return { json, entries }
}

async function buildMain() {    await esbuild({
        entryPoints: [path.join(pluginRoot, 'src/main/index.ts')],
        outfile: path.join(outputDirectory, 'code.js'),
        bundle: true,
        minify: true,
        format: 'iife',
        platform: 'browser',
        target: 'es2022',
        logLevel: 'silent',
    })
}

async function buildUi() {
    await vite({
        root: path.join(pluginRoot, 'src/ui'),
        base: './',
        configFile: false,
        logLevel: 'error',
        build: {
            outDir: temporaryUiDirectory,
            emptyOutDir: true,
            assetsInlineLimit: Number.MAX_SAFE_INTEGER,
            cssCodeSplit: false,
            minify: true,
            target: 'es2022',
            rollupOptions: {
                output: {
                    entryFileNames: 'assets/ui.js',
                    assetFileNames: 'assets/[name][extname]',
                },
            },
        },
    })
}

function inlineBuildAsset(source, type, pattern) {
    const match = source.match(pattern)
    if (!match) throw new Error(`The Vite ${type} asset was not found in the generated HTML.`)

    const relativePath = match[1].replace(/^\.\//, '')
    const asset = fs.readFileSync(path.join(temporaryUiDirectory, relativePath), 'utf8')
    const inline =
        type === 'script'
            ? `<script type="module">${asset.replaceAll('</script', '<\\/script')}</script>`
            : `<style>${asset}</style>`
    return source.replace(match[0], () => inline)
}

function createPackageLogos(registry) {
    const collections = {}
    const logos = {}
    for (const entry of registry.packages) {
        const [set, icon] = entry.logo.split(':')
        collections[set] ??= loadIconCollection(set)
        logos[entry.logo] = pickIconifyIcon(collections[set], icon)
    }
    return logos
}

function loadIconCollection(set) {
    try {
        return JSON.parse(
            fs.readFileSync(
                path.join(pluginRoot, `node_modules/@iconify-json/${set}/icons.json`),
                'utf8'
            )
        )
    } catch {
        throw new Error(
            `The Iconify set "${set}" is not installed: run pnpm add -D @iconify-json/${set} in packages/figma-plugin.`
        )
    }
}

function pickIconifyIcon(collection, name) {
    const icon = collection.icons[name]
    if (!icon) throw new Error(`The Iconify asset ${collection.prefix}:${name} was not found.`)
    return {
        body: icon.body,
        width: icon.width || collection.width || 24,
        height: icon.height || collection.height || 24,
    }
}
