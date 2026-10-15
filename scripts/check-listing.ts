import fs from 'node:fs'
import path from 'node:path'
import { PACK_STYLES } from '../packages/figma-plugin/src/shared/packs'

/**
 * Figma Community listing guard.
 *
 * The tagline and description are marketing copy: wording them well needs
 * judgment, so the agent drafts and the maintainer validates. But the
 * facts inside them are checkable, and this script checks them:
 *
 * - the exact icon count, every style name, every registry package name;
 * - no stale figures and no absolute offline promise the CDN download path
 *   forbids ("no CDN", "no network required");
 * - the manifest network scope stays on versioned jsDelivr Solar assets.
 *
 * Anything this script cannot judge (tone, emphasis, a new package blurb)
 * stays a human call in `community/listing-tagline.txt` and
 * `community/listing-description.md`. What can be enforced is enforced.
 */

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')
const PLUGIN_ROOT = path.join(REPOSITORY_ROOT, 'packages/figma-plugin')
const TAGLINE_PATH = path.join(PLUGIN_ROOT, 'community/listing-tagline.txt')
const DESCRIPTION_PATH = path.join(PLUGIN_ROOT, 'community/listing-description.md')
const MANIFEST_PATH = path.join(PLUGIN_ROOT, 'manifest.json')
const DESCRIPTIONS_PATH = path.join(
    REPOSITORY_ROOT,
    'packages/static/dist/metadata-descriptions.json'
)
const REGISTRY_PATH = path.join(REPOSITORY_ROOT, 'registry.json')

const problems: string[] = []

const descriptions = JSON.parse(fs.readFileSync(DESCRIPTIONS_PATH, 'utf8')) as Array<{
    name: string
}>
const iconCount = descriptions.length.toLocaleString('en-US')
const registry = JSON.parse(fs.readFileSync(REGISTRY_PATH, 'utf8')) as {
    packages: Array<{ name: string }>
}

const tagline = fs.readFileSync(TAGLINE_PATH, 'utf8')
const descriptionFile = fs.readFileSync(DESCRIPTION_PATH, 'utf8')
const description = descriptionFile.split('---\n')[1] ?? ''

// Tagline: a single line carrying the current count.
const taglineLines = tagline.split('\n').filter(line => line.trim().length > 0)
if (taglineLines.length !== 1) problems.push('the tagline must be a single line')
if (!tagline.includes(iconCount)) {
    problems.push(`the tagline is missing the icon count ${iconCount}`)
}
if (!tagline.toLowerCase().includes('style')) {
    problems.push('the tagline never mentions styles')
}

// Description: the current count, every style, every package.
if (!description.includes(iconCount)) {
    problems.push(`the description is missing the icon count ${iconCount}`)
}
for (const style of PACK_STYLES) {
    const label = style.replaceAll('-', ' ')
    if (!description.toLowerCase().includes(label)) {
        problems.push(`the description never names the ${label} style`)
    }
}
for (const entry of registry.packages) {
    if (!description.toLowerCase().includes(entry.name.toLowerCase())) {
        problems.push(`the description never names ${entry.name}`)
    }
}

// Banned claims: stale figures, and absolute offline promises the
// versioned CDN download path forbids even when nothing downloads today.
const banned: Array<[RegExp, string]> = [
    [/\b1,268\b/, 'stale icon count 1,268'],
    [/\b1,300\b/, 'stale icon count 1,300'],
    [/no[^.\n]{0,80}cdn/i, 'a "no CDN" claim the download path forbids'],
    [/no[^.\n]{0,80}network[^.\n]{0,80}require/i, 'an absolute offline claim the download path forbids'],
]
for (const [pattern, label] of banned) {
    if (pattern.test(tagline)) problems.push(`the tagline contains ${label}`)
    if (pattern.test(description)) problems.push(`the description contains ${label}`)
}

// Manifest scope: versioned Solar assets on jsDelivr, nothing else,
// with a public reasoning string.
const manifest = JSON.parse(fs.readFileSync(MANIFEST_PATH, 'utf8')) as {
    networkAccess?: { allowedDomains?: string[]; reasoning?: string }
}
const domains = manifest.networkAccess?.allowedDomains ?? []
if (domains.length === 0) problems.push('the manifest declares no network scope')
for (const domain of domains) {
    if (!domain.startsWith('https://cdn.jsdelivr.net/')) {
        problems.push(`network scope reaches beyond jsDelivr: ${domain}`)
    }
}
if (!manifest.networkAccess?.reasoning) {
    problems.push('the manifest network scope has no reasoning string')
}

if (problems.length > 0) {
    console.error('Listing consistency check failed:')
    for (const problem of problems) console.error(`- ${problem}`)
    process.exit(1)
}

console.info(
    `Listing check passed: tagline and description carry ${iconCount} icons, ${PACK_STYLES.length} styles, ${registry.packages.length} packages.`
)
