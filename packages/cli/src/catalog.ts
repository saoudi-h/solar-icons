import { existsSync, readFileSync, readdirSync } from 'node:fs'
import { createRequire } from 'node:module'
import { dirname, join, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

export type IconDescription = {
    name: string
    category: string
    categoryTags: string[]
    tags: string[]
}

export const STYLES = [
    'bold',
    'bold-duotone',
    'broken',
    'linear',
    'line-duotone',
    'outline',
] as const
export type Style = (typeof STYLES)[number]

export const FRAMEWORKS = [
    'react',
    'vue',
    'svelte',
    'solid',
    'angular',
    'react-native',
    'nuxt',
    'static',
    'js',
] as const
export type Framework = (typeof FRAMEWORKS)[number]

const STYLE_PASCAL: Record<Style, string> = {
    bold: 'Bold',
    'bold-duotone': 'BoldDuotone',
    broken: 'Broken',
    linear: 'Linear',
    'line-duotone': 'LineDuotone',
    outline: 'Outline',
}

export function styleToPascal(style: Style): string {
    return STYLE_PASCAL[style]
}

export function toPascalKebab(kebab: string): string {
    return kebab
        .split('-')
        .map(p => p.charAt(0).toUpperCase() + p.slice(1))
        .join('')
}

/**
 * Generic per-file component name (style in path, no suffix).
 * e.g. home + linear → HomeIcon
 */
export function perFileComponentName(kebabName: string): string {
    return `${toPascalKebab(kebabName)}Icon`
}

/**
 * Root/top-level component name (style in name, path is package root).
 * e.g. home + bold → HomeBoldIcon
 */
export function rootComponentName(kebabName: string, style: Style, framework: Framework): string {
    const pascal = toPascalKebab(kebabName)
    const sp = styleToPascal(style)
    if (framework === 'angular') return `Solar${pascal}${sp}`
    return `${pascal}${sp}Icon`
}

export function componentName(kebabName: string, style: Style, framework: Framework): string {
    // keep for backwards compat — returns root name (style in name)
    return rootComponentName(kebabName, style, framework)
}

/**
 * Per-file import snippet (recommended, tree-shakable).
 * Style is in the path, component name is generic (no style suffix).
 * Verified against docs: apps/docs/content/docs/v2/packages/{react,vue,svelte,solid}.mdx
 *   react:  import { HeartIcon } from '@solar-icons/react/bold/heart'
 *   vue:    import { HeartIcon } from '@solar-icons/vue/bold/heart'
 *   svelte: import HeartIcon from '@solar-icons/svelte/bold/heart'  (default)
 *   solid:  import { HeartIcon } from '@solar-icons/solid/bold/heart'
 *   angular:import { SolarHeartBold } from '@solar-icons/angular' (style in name, root)
 */
export function importSnippet(name: string, style: Style, framework: Framework): string {
    const kebab = name
    const generic = perFileComponentName(name)
    const rooted = rootComponentName(name, style, framework)
    switch (framework) {
        case 'react':
            return `import { ${generic} } from "@solar-icons/react/${style}/${kebab}";`
        case 'vue':
            return `import { ${generic} } from "@solar-icons/vue/${style}/${kebab}";`
        case 'svelte':
            return `import ${generic} from "@solar-icons/svelte/${style}/${kebab}";`
        case 'solid':
            return `import { ${generic} } from "@solar-icons/solid/${style}/${kebab}";`
        case 'angular':
            return `import { ${rooted} } from "@solar-icons/angular"; // usage: <svg ${rooted.charAt(0).toLowerCase() + rooted.slice(1)}></svg> (directive)`
        case 'react-native':
            return `import { ${generic} } from "@solar-icons/react-native/${style}/${kebab}";`
        case 'nuxt':
            return `// nuxt.config: modules: ["@solar-icons/nuxt"] → auto-import <${rooted} />`
        case 'static':
            return `import url from "@solar-icons/static/${style}/${kebab}.svg"; // <img src={url} alt="${kebab}" />`
        case 'js':
            return `import { createIcons, icons } from "@solar-icons/js"; // icons["${kebab}-${style}"]`
        default:
            return `import { ${generic} } from "@solar-icons/${framework}/${style}/${kebab}";`
    }
}

export function rootImportSnippet(name: string, style: Style, framework: Framework): string {
    const rooted = rootComponentName(name, style, framework)
    switch (framework) {
        case 'svelte':
            return `import { ${rooted} } from "@solar-icons/svelte";`
        case 'angular':
            return `import { ${rooted} } from "@solar-icons/angular";`
        case 'static':
        case 'js':
        case 'nuxt':
            return importSnippet(name, style, framework)
        default:
            return `import { ${rooted} } from "@solar-icons/${framework}";`
    }
}

function tryReadJson(path: string): unknown | null {
    if (!existsSync(path)) return null
    try {
        return JSON.parse(readFileSync(path, 'utf8'))
    } catch {
        return null
    }
}

let cachedDescriptions: IconDescription[] | null = null
let cachedCategories: string[] | null = null

export function loadDescriptions(): IconDescription[] {
    if (cachedDescriptions) return cachedDescriptions

    // 1) Direct ESM json import fallback via file resolve
    // Try resolve @solar-icons/static package root
    const candidates: string[] = []

    // Try Node's resolver via createRequire
    try {
        const req = createRequire(import.meta.url)
        const pkgJson = req.resolve('@solar-icons/static/package.json')
        const pkgDir = dirname(pkgJson)
        candidates.push(join(pkgDir, 'dist', 'metadata-descriptions.json'))
        candidates.push(join(pkgDir, 'metadata-descriptions.json'))
    } catch {}

    // Fallback: relative to this file in monorepo (dev)
    try {
        const here = dirname(fileURLToPath(import.meta.url))
        // dist/cli.mjs is at packages/cli/dist/cli.mjs -> ../../
        candidates.push(resolve(here, '../../static/dist/metadata-descriptions.json'))
        candidates.push(resolve(here, '../../../packages/static/dist/metadata-descriptions.json'))
        candidates.push(resolve(here, '../../core/src/metadata-descriptions.json'))
        candidates.push(resolve(here, '../../../packages/core/src/metadata-descriptions.json'))
    } catch {}

    for (const p of candidates) {
        const data = tryReadJson(p)
        if (Array.isArray(data) && data.length > 0) {
            cachedDescriptions = data as IconDescription[]
            return cachedDescriptions
        }
    }

    throw new Error(
        'Could not locate Solar Icons metadata. Ensure @solar-icons/static is installed or run inside the solar-icons monorepo. Tried:\n' +
            candidates.join('\n')
    )
}

export function listCategories(): string[] {
    if (cachedCategories) return cachedCategories
    const descs = loadDescriptions()
    const set = new Set<string>()
    for (const d of descs) set.add(d.category)
    cachedCategories = [...set].sort()
    return cachedCategories
}

/**
 * Totale counts for generation / --json usage.
 */
export function catalogStats(): {
    icons: number
    categories: number
    styles: number
    variations: number
} {
    const descs = loadDescriptions()
    const cats = new Set(descs.map(d => d.category))
    return {
        icons: descs.length,
        categories: cats.size,
        styles: STYLES.length,
        variations: descs.length * STYLES.length,
    }
}

export function resolveSvgPath(name: string, style: Style): string | null {
    const candidates: string[] = []
    try {
        const req = createRequire(import.meta.url)
        const pkgJson = req.resolve('@solar-icons/static/package.json')
        const pkgDir = dirname(pkgJson)
        candidates.push(join(pkgDir, 'dist', 'icons', style, `${name}.svg`))
    } catch {}
    try {
        const here = dirname(fileURLToPath(import.meta.url))
        candidates.push(resolve(here, '../../static/dist/icons', style, `${name}.svg`))
        candidates.push(resolve(here, '../../../packages/static/dist/icons', style, `${name}.svg`))
        // fallback core search (-pas optimal mais dev)
        // we do a glob-like: try each category? but we avoid find here — we try direct
    } catch {}

    for (const p of candidates) {
        if (existsSync(p)) return p
    }
    // last resort: try finding via static's icons.json keys (content available but not path)
    // For npx users without file, we return null and caller can fallback to CDN url
    return null
}

export function cdnSvgUrl(name: string, style: Style, version = 'latest'): string {
    return `https://cdn.jsdelivr.net/npm/@solar-icons/static@${version}/dist/icons/${style}/${name}.svg`
}

// --- Overview (dynamic, not hardcoded) ---

export const FIGMA_URL = 'https://www.figma.com/community/plugin/1664759238792120976/solar-icons'
export const DOCS_URL = 'https://solar-icons.vercel.app/'
export const ICONS_URL = 'https://solar-icons.vercel.app/icons'

function tryReadCliVersion(): string {
    const candidates: string[] = []
    try {
        const req = createRequire(import.meta.url)
        const pkgJson = req.resolve('@solar-icons/cli/package.json')
        const data = tryReadJson(pkgJson) as { version?: string } | null
        if (data?.version) return data.version
        candidates.push(pkgJson)
    } catch {}
    try {
        const here = dirname(fileURLToPath(import.meta.url))
        candidates.push(resolve(here, '../../package.json'))
        candidates.push(resolve(here, '../../../packages/cli/package.json'))
        candidates.push(resolve(here, '../package.json'))
    } catch {}
    for (const p of candidates) {
        const data = tryReadJson(p) as { version?: string } | null
        if (data?.version) return data.version
    }
    return 'unknown'
}

export type PackageInfo = { name: string; version: string; description: string; directory: string }

function tryReadPackages(): PackageInfo[] {
    const candidates: string[] = []
    try {
        const here = dirname(fileURLToPath(import.meta.url))
        // packages/cli/dist/cli.mjs -> ../../.. is monorepo root
        candidates.push(resolve(here, '../../..', 'packages'))
        candidates.push(resolve(here, '../../../packages'))
        candidates.push(resolve(here, '../../packages'))
        // when running via bun ./src/cli.ts, here is packages/cli/src
        candidates.push(resolve(here, '..', '..', 'packages'))
        candidates.push(resolve(here, '../packages'))
    } catch {}
    // also try cwd
    try {
        candidates.push(resolve(process.cwd(), 'packages'))
    } catch {}

    for (const packagesDir of candidates) {
        if (!existsSync(packagesDir)) continue
        try {
            const entries = readdirSync(packagesDir, { withFileTypes: true })
            const pkgs: PackageInfo[] = []
            for (const e of entries) {
                if (!e.isDirectory()) continue
                const pkgJsonPath = join(packagesDir, e.name, 'package.json')
                if (!existsSync(pkgJsonPath)) continue
                const data = tryReadJson(pkgJsonPath) as {
                    name?: string
                    version?: string
                    description?: string
                    private?: boolean
                } | null
                if (!data?.name?.startsWith('@solar-icons/')) continue
                if (data.private) continue
                pkgs.push({
                    name: data.name,
                    version: data.version ?? 'unknown',
                    description: data.description ?? '',
                    directory: `packages/${e.name}`,
                })
            }
            if (pkgs.length > 0) {
                pkgs.sort((a, b) => a.name.localeCompare(b.name))
                return pkgs
            }
        } catch {}
    }
    return []
}

export type Overview = {
    catalog: { icons: number; categories: number; styles: number; variations: number }
    packages: PackageInfo[]
    cliVersion: string
    figma: string
    docs: string
    iconsExplorer: string
}

export function getOverview(): Overview {
    const catalog = catalogStats()
    const packages = tryReadPackages()
    const cliVersion = tryReadCliVersion()
    return {
        catalog,
        packages,
        cliVersion,
        figma: FIGMA_URL,
        docs: DOCS_URL,
        iconsExplorer: ICONS_URL,
    }
}
