import fs from 'node:fs'
import path from 'node:path'

/**
 * Registry consistency guard.
 *
 * `registry.json` at the repository root is the single source of
 * truth for every published package and agent skill. Every surface
 * that lists them must agree, or this check fails:
 *
 * - the README registry table (link, version badge, summary, row count)
 * - the package documentation pages and their sidebar meta.json
 * - the Figma plugin Info tab (embedded by the build from this file)
 * - the Community ecosystem artwork
 * - the agent skill document
 *
 * Adding a package means adding one registry.json entry, then fixing
 * whatever this script flags. Nothing is listed by vigilance.
 */

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')

type RegistrySkill = {
    name: string
    slug: string
    registry: string
    package: string
    summary: string
    /** Source lives in its own repository, not this monorepo. */
    external?: boolean
    /** Repository-relative source directory, absent for external entries. */
    path?: string
}

type RegistryPackage = RegistrySkill & {
    logo: string
}

type RegistryManifest = { packages: RegistryPackage[]; skills: RegistrySkill[] }

const REGISTRY_PATH = path.join(REPOSITORY_ROOT, 'registry.json')
const README_PATH = path.join(REPOSITORY_ROOT, 'README.md')
const PRESENTATION_PATH = path.join(
    REPOSITORY_ROOT,
    'packages/figma-plugin/community/presentation.html'
)
const DOCS_PAGES_DIRECTORY = path.join(REPOSITORY_ROOT, 'apps/docs/content/docs/v2/packages')
const DOCS_META_PATH = path.join(DOCS_PAGES_DIRECTORY, 'meta.json')
const UI_HTML_PATH = path.join(REPOSITORY_ROOT, 'packages/figma-plugin/dist/ui.html')

const problems: string[] = []

const registry = JSON.parse(fs.readFileSync(REGISTRY_PATH, 'utf8')) as RegistryManifest

// Manifest shape: every field present, every identity unique.
const seenSlugs = new Set<string>()
const seenPackages = new Set<string>()
for (const entry of [...registry.packages, ...registry.skills]) {
    for (const field of ['name', 'slug', 'registry', 'package', 'guide', 'summary'] as const) {
        if (typeof entry[field] !== 'string' || entry[field].length === 0) {
            problems.push(`registry entry is missing "${field}": ${entry.package ?? '(unknown)'}`)
        }
    }
    if (!entry.external && typeof entry.path !== 'string') {
        problems.push(`registry entry is missing "path": ${entry.package}`)
    }
    if (seenSlugs.has(entry.slug)) problems.push(`duplicate slug: ${entry.slug}`)
    seenSlugs.add(entry.slug)
    if (seenPackages.has(entry.package)) {
        problems.push(`duplicate package: ${entry.package}`)
    }
    seenPackages.add(entry.package)
}
for (const entry of registry.packages) {
    if (typeof entry.logo !== 'string' || !entry.logo.includes(':')) {
        problems.push(`package "${entry.package}" needs a "set:icon" logo`)
    }
}

// Source directories exist; packages carry a manifest, skills a SKILL.md.
for (const entry of [...registry.packages, ...registry.skills]) {
    if (entry.external) continue
    const entryRoot = path.join(REPOSITORY_ROOT, entry.path ?? '')
    if (!fs.existsSync(entryRoot)) {
        problems.push(`"${entry.package}" path does not exist: ${entry.path}`)
        continue
    }
    if (entry.registry === 'skills.sh') {
        if (!fs.existsSync(path.join(entryRoot, 'SKILL.md'))) {
            problems.push(`skill "${entry.package}" has no SKILL.md`)
        }
    } else if (entry.registry === 'pub.dev') {
        if (!fs.existsSync(path.join(entryRoot, 'pubspec.yaml'))) {
            problems.push(`"${entry.package}" has no pubspec.yaml in ${entry.path}`)
        }
    } else if (entry.registry === 'rubygems.org') {
        if (!fs.existsSync(path.join(entryRoot, `${entry.package}.gemspec`))) {
            problems.push(`"${entry.package}" has no gemspec in ${entry.path}`)
        }
    } else if (!fs.existsSync(path.join(entryRoot, 'package.json'))) {
        problems.push(`"${entry.package}" has no package.json in ${entry.path}`)
    }
}

// Documentation pages exist and the sidebar lists exactly the registry.
const meta = JSON.parse(fs.readFileSync(DOCS_META_PATH, 'utf8')) as { pages: string[] }
for (const entry of registry.packages) {
    if (!fs.existsSync(path.join(DOCS_PAGES_DIRECTORY, `${entry.slug}.mdx`))) {
        problems.push(`"${entry.package}" has no docs page: ${entry.slug}.mdx`)
    }
    if (!meta.pages.includes(entry.slug)) {
        problems.push(`"${entry.package}" is missing from the docs sidebar meta.json`)
    }
}
for (const slug of meta.pages) {
    if (!registry.packages.some(entry => entry.slug === slug)) {
        problems.push(`docs sidebar lists "${slug}", which is not in registry.json`)
    }
}

// README table: row count, install link, version badge, guide link, sized logo.
const readme = fs.readFileSync(README_PATH, 'utf8')
const tableRows = readme.split('\n').filter(line => line.startsWith('| [') && line.includes('<img'))
if (tableRows.length !== registry.packages.length) {
    problems.push(
        `README table has ${tableRows.length} package rows, registry.json has ${registry.packages.length}`
    )
}
const DOCS_BASE = 'https://solar-icons.vercel.app/docs/v2/'
for (const entry of registry.packages) {
    const row = tableRows.find(candidate =>
        candidate.includes(`[\`${entry.package}\`](${registryUrl(entry)}`)
    )
    if (!row) {
        problems.push(`README is missing the link for ${entry.package}`)
        continue
    }
    if (!row.includes(badgeUrl(entry))) {
        problems.push(`README is missing the version badge for ${entry.package}`)
    }
    if (!row.includes(`[Guide](${DOCS_BASE}${entry.guide})`)) {
        problems.push(`README is missing the guide link for ${entry.package}`)
    }
    const logo = row.match(/<img src="([^"]+)" alt="([^"]+)" width="(\d+)" height="(\d+)">/)
    if (!logo) {
        problems.push(`README logo for ${entry.package} needs explicit width and height`)
        continue
    }
    const [, src, alt, width, height] = logo
    if (Number(width) > 24 || Number(height) > 24) {
        problems.push(`README logo for ${entry.package} is too large: ${width}x${height}`)
    }
    if (alt !== entry.name) {
        problems.push(`README logo alt for ${entry.package} should be "${entry.name}"`)
    }
    if (!fs.existsSync(path.join(REPOSITORY_ROOT, src))) {
        problems.push(`README logo file does not exist for ${entry.package}: ${src}`)
    }
}
for (const skill of registry.skills) {
    if (!readme.includes(`skills add ${skill.package}`)) {
        problems.push(`README is missing the install command for skill ${skill.package}`)
    }
}

// Community ecosystem artwork lists every package by name.
const presentation = fs.readFileSync(PRESENTATION_PATH, 'utf8')
for (const entry of registry.packages) {
    if (!presentation.includes(`<span>${entry.name}</span>`)) {
        problems.push(`ecosystem artwork is missing ${entry.name}`)
    }
}

// A built plugin embeds the same manifest, when a build exists.
if (fs.existsSync(UI_HTML_PATH)) {
    const uiHtml = fs.readFileSync(UI_HTML_PATH, 'utf8')
    const match = uiHtml.match(
        /<script id="solar-registry" type="application\/json">([\s\S]*?)<\/script>/
    )
    if (!match) {
        problems.push(
            'dist/ui.html has no embedded registry block; rebuild with pnpm check:figma-catalog'
        )
    } else if (JSON.stringify(JSON.parse(match[1])) !== JSON.stringify(registry)) {
        problems.push(
            'the plugin bundle embeds a registry that differs from registry.json; rebuild with pnpm check:figma-catalog'
        )
    }
}

if (problems.length > 0) {
    console.error('Registry consistency check failed:')
    for (const problem of problems) console.error(`- ${problem}`)
    process.exit(1)
}

console.info(
    `Registry check passed: ${registry.packages.length} packages, ${registry.skills.length} skill(s), every listing surface in sync.`
)

function registryUrl(entry: RegistrySkill): string {
    switch (entry.registry) {
        case 'npm':
            return `https://www.npmjs.com/package/${entry.package}`
        case 'pub.dev':
            return `https://pub.dev/packages/${entry.package}`
        case 'packagist':
            return `https://packagist.org/packages/${entry.package}`
        case 'rubygems.org':
            return `https://rubygems.org/gems/${entry.package}`
        case 'skills.sh':
            return `https://skills.sh/${entry.package}`
        default:
            throw new Error(`Unknown registry: ${entry.registry}`)
    }
}

function badgeUrl(entry: RegistryPackage): string {
    switch (entry.registry) {
        case 'npm':
            return `https://img.shields.io/npm/v/${encodeURIComponent(entry.package)}?logo=npm`
        case 'pub.dev':
            return `https://img.shields.io/pub/v/${entry.package}?logo=dart`
        case 'packagist':
            return `https://img.shields.io/packagist/v/${entry.package}?logo=packagist`
        case 'rubygems.org':
            return `https://img.shields.io/gem/v/${entry.package}?logo=rubygems`
        default:
            return ''
    }
}
