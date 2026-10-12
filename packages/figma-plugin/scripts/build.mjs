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

const icons = fs.readFileSync(path.join(staticRoot, 'dist/icons.json'), 'utf8')
const metadata = fs.readFileSync(path.join(staticRoot, 'dist/metadata-descriptions.json'), 'utf8')
const staticPackage = JSON.parse(fs.readFileSync(path.join(staticRoot, 'package.json'), 'utf8'))
const linearChunks = readLinearChunks()
const catalogProvenance = buildCatalogProvenance({
    icons,
    metadata,
    packageVersion: staticPackage.version,
})
const packageLogos = createPackageLogos()

const embeddedData = [linearChunks, metadata, JSON.stringify(catalogProvenance)]
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
    .replace('__SOLAR_ICON_DATA__', linearChunks)
    .replace('__SOLAR_ICON_METADATA__', metadata)
    .replace('__SOLAR_CATALOG_PROVENANCE__', JSON.stringify(catalogProvenance))
    .replace('__SOLAR_PACKAGE_LOGOS__', JSON.stringify(packageLogos))

const remainingPlaceholders = [
    '__SOLAR_VERSION_VALUE__',
    '__SOLAR_ICON_DATA__',
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

const BUNDLE_LIMIT = 10 * 1024 * 1024
if (html.length > BUNDLE_LIMIT) {
    throw new Error(
        `Figma bundle is ${(html.length / 1024 / 1024).toFixed(2)} MiB, over the ${(BUNDLE_LIMIT / 1024 / 1024).toFixed(0)} MiB guard (Figma rejects over 15 MiB). Shrink the bundle before publishing.`
    )
}

const compressedSize = zlib.gzipSync(html).byteLength
console.info(
    `Built Solar Icons Figma plugin: ${catalogProvenance.logicalIconCount} icons × ${catalogProvenance.styleCount} styles, ${catalogProvenance.catalogHash}, ${(html.length / 1024 / 1024).toFixed(2)} MiB raw, ${(compressedSize / 1024 / 1024).toFixed(2)} MiB gzip.`
)

/**
 * Linear chunks for the offline bundle, derived from the published-shape
 * `dist/icons.json` map (`<name>-linear` entries) and nested as
 * `{ [category]: { [name]: body } }`. Bodies are whitespace-collapsed only.
 * Other styles download as jsDelivr combine batches at runtime.
 */
function readLinearChunks() {
    const map = JSON.parse(fs.readFileSync(path.join(staticRoot, 'dist/icons.json'), 'utf8'))
    const descriptions = JSON.parse(
        fs.readFileSync(path.join(staticRoot, 'dist/metadata-descriptions.json'), 'utf8')
    )
    const categoryOf = {}
    for (const entry of descriptions) categoryOf[entry.name] = entry.category
    const nested = {}
    for (const [key, svg] of Object.entries(map)) {
        if (!key.endsWith('-linear')) continue
        const name = key.slice(0, -'-linear'.length)
        const category = categoryOf[name]
        // Alias keys (e.g. chat-square-2-linear) have no metadata entry and
        // are never browsed: the UI resolves canonical names only.
        if (!category) continue
        nested[category] = nested[category] || {}
        nested[category][name] = svg
            .replace(/^<svg[^>]*>/, '')
            .replace(/<\/svg>$/, '')
            .replace(/>\s+</g, '><')
            .trim()
    }
    if (Object.keys(nested).length === 0) {
        throw new Error('No linear icons found in dist/icons.json.')
    }
    return JSON.stringify(nested)
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

function createPackageLogos() {
    const devicon = JSON.parse(
        fs.readFileSync(
            path.join(pluginRoot, 'node_modules/@iconify-json/devicon/icons.json'),
            'utf8'
        )
    )
    const vscodeIcons = JSON.parse(
        fs.readFileSync(
            path.join(pluginRoot, 'node_modules/@iconify-json/vscode-icons/icons.json'),
            'utf8'
        )
    )

    return {
        javascript: pickIconifyIcon(devicon, 'javascript'),
        react: pickIconifyIcon(devicon, 'react'),
        vue: pickIconifyIcon(devicon, 'vuejs'),
        nuxt: pickIconifyIcon(devicon, 'nuxtjs'),
        svelte: pickIconifyIcon(devicon, 'svelte'),
        solid: pickIconifyIcon(devicon, 'solidjs'),
        angular: pickIconifyIcon(devicon, 'angular'),
        static: pickIconifyIcon(vscodeIcons, 'file-type-svg'),
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
