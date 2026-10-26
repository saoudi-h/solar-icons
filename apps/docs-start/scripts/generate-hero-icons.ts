/**
 * Generates the icon data of the home page hero.
 *
 * The hero shows two rings of icons that change category over time. Shipping
 * every category as React components would weigh far too much, so each
 * category becomes one small static JSON file with the SVG markup of its 34
 * icons in the six styles. The browser loads the next category when it is
 * idle, and only one category at a time.
 *
 * The first category is also written to `src/generated`, so it ships with
 * the page and the first paint never waits for a request.
 */
import { createHash } from 'node:crypto'
import { mkdir, rm, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import { parseSvgs, transformDuotoneAccent, type ParsedIconGroup } from '@solar-icons/core'

import { readCoreMetadata } from './catalog-source'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const coreSvgs = path.resolve(appRoot, '../../packages/core/svgs')
const outputDir = path.join(appRoot, 'public/data/hero')
const generatedDir = path.join(appRoot, 'src/generated')

const INNER_COUNT = 14
const OUTER_COUNT = 20
/** A category needs this many icons to fill both rings without a visible repeat. */
const MIN_ICONS = 17
const FIRST_CATEGORY = 'devices'
const INITIAL_STYLE = 'Bold'

const STYLES = ['Bold', 'BoldDuotone', 'Broken', 'Linear', 'LineDuotone', 'Outline'] as const

const metadata = readCoreMetadata<{ categories: Record<string, { icons: string[] }> }>(
    'metadata.json'
)
const { groups } = await parseSvgs({ svgsDir: coreSvgs, preview: false })
const groupsByName = new Map<string, ParsedIconGroup>(groups.map(group => [group.kebabName, group]))

/** Short categories reuse their own icons so both rings always render full. */
function takeCycled(icons: string[], start: number, count: number): string[] {
    return Array.from({ length: count }, (_, index) => icons[(start + index) % icons.length]!)
}

function toLabel(slug: string): string {
    return slug
        .split('-')
        .map(word => word.charAt(0).toUpperCase() + word.slice(1))
        .join(' ')
}

/**
 * The icons are drawn at 32px on a 24px grid, so two decimals are far below
 * what the eye can tell apart, and they cut the weight of every path.
 */
function roundNumbers(markup: string): string {
    return markup.replace(/\d+\.\d{3,}/g, value => String(Number(Number(value).toFixed(2))))
}

function markupOf(group: ParsedIconGroup, style: (typeof STYLES)[number]): string {
    const icon = group.styles[style]
    // The accent comes first, like in the React components, so the main
    // shape is painted over it.
    return roundNumbers(`${transformDuotoneAccent(icon.duotoneAccentInner) ?? ''}${icon.inner}`)
}

/** One file per category and style, so a visitor only loads what is shown. */
interface HeroIconSet {
    inner: string[]
    outer: string[]
    /** The SVG markup of each icon, in the style of the file. */
    icons: Record<string, string>
}

const categories: { slug: string; label: string; sets: Record<string, HeroIconSet> }[] = []

for (const [slug, { icons }] of Object.entries(metadata.categories)) {
    if (icons.length < MIN_ICONS) continue

    const inner = takeCycled(icons, 0, INNER_COUNT)
    const outer = takeCycled(icons, INNER_COUNT, OUTER_COUNT)
    const names = [...new Set([...inner, ...outer])]
    const sets: Record<string, HeroIconSet> = {}

    for (const style of STYLES) {
        sets[style] = {
            inner,
            outer,
            icons: Object.fromEntries(
                names.map(name => {
                    const group = groupsByName.get(name)
                    if (!group) {
                        throw new Error(`The icon "${name}" of the category "${slug}" is missing.`)
                    }
                    return [name, markupOf(group, style)]
                })
            ),
        }
    }

    categories.push({ slug, label: toLabel(slug), sets })
}

if (!categories.some(category => category.slug === FIRST_CATEGORY)) {
    throw new Error(`The first hero category "${FIRST_CATEGORY}" is missing.`)
}

// The first category leads, the others keep the catalogue order.
categories.sort((a, b) => Number(b.slug === FIRST_CATEGORY) - Number(a.slug === FIRST_CATEGORY))

await rm(outputDir, { recursive: true, force: true })
await mkdir(generatedDir, { recursive: true })

/**
 * The file name carries a hash of the content, so a file never changes under
 * its name and the browser can keep it forever. The manifest of the names
 * ships with the page, so a deployment never points at an outdated file.
 */
const manifest: Record<string, Record<string, string>> = {}

for (const { slug, sets } of categories) {
    await mkdir(path.join(outputDir, slug), { recursive: true })
    manifest[slug] = {}
    for (const [style, set] of Object.entries(sets)) {
        const body = JSON.stringify(set)
        const hash = createHash('sha256').update(body).digest('hex').slice(0, 10)
        const filename = `${style}.${hash}.json`
        await writeFile(path.join(outputDir, slug, filename), body)
        manifest[slug][style] = filename
    }
}

// The first paint ships with the page: first category, first style only.
await writeFile(
    path.join(generatedDir, 'hero-initial.json'),
    JSON.stringify(categories[0]!.sets[INITIAL_STYLE])
)
await writeFile(
    path.join(generatedDir, 'hero-categories.json'),
    `${JSON.stringify(
        categories.map(({ slug, label }) => ({ slug, label, files: manifest[slug] }))
    )}\n`
)

console.log(`Hero icons written: ${categories.length} categories x ${STYLES.length} styles.`)
