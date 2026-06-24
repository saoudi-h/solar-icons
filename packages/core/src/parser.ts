/**
 * The icon parser.
 *
 * Reads `core/svgs/`, normalizes every SVG, and exposes two iteration modes
 * for framework packages to consume:
 *   - {@link forEachIcon} — one entry per `category × style × name`. For
 *     unit-per-style packages (one component per style).
 *   - {@link forEachIconGroupedBy} — one entry per `category × name`, with
 *     all 6 styles inside. For reactive-style packages (one component per
 *     logical icon, style picked at runtime).
 *
 * Implementation contract:
 *   - The parser is the only reader of `core/svgs/`. Framework packages must
 *     not read the directory themselves.
 *   - The parser trusts the names in `svgs/` as canonical. V3-12 (issue
 *     saoudi-h/solar-icons#493) renames typos in the Figma source; the
 *     parser does not apply `fixIconName` or `ICON_RENAMES` — those aliases
 *     are dropped in V3.
 *   - The parser does not write files. The hook returns its own
 *     framework-specific output (typically a `FileDefinition[]`); the
 *     framework's `generate-assets.ts` is responsible for writing.
 */

import fs from 'node:fs'
import path from 'node:path'
import type { IconWeight } from './types'
import { toPascalCase } from './utils'

/**
 * Canonical style order. Matches `packages/core/AGENT.md` §"Known Constraints".
 * Iteration order is filesystem-dependent; this tuple is the single source of
 * truth for parsing.
 */
const CANONICAL_STYLES: ReadonlyArray<IconWeight> = [
    'Bold',
    'BoldDuotone',
    'Broken',
    'Linear',
    'LineDuotone',
    'Outline',
]

const STYLE_TO_KEBAB: Readonly<Record<IconWeight, string>> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

const HEX_COLOR_REGEX = /"#[0-9a-f]{6}"/gi
const XML_DECL_REGEX = /^[\s\S]*?<\?xml[\s\S]*?>\s*/
const SVG_OPEN_REGEX = /<svg[^>]*>/
const SVG_CLOSE_REGEX = /<\/svg>/g
const EMPTY_RECT_REGEX = /<rect\s+width="24[\d,.]+"\s+height="24[\d,.]+"\s+fill="none"[^>]*\/>\s*/g
const TITLE_REGEX = /<title[\s\S]*?<\/title>\s*/g
const DEFAULT_STROKE_WIDTH_REGEX = /\s+stroke-width=["']1\.5["']/g
const DUOTONE_ACCENT_REGEX =
    /(?:<g[^>]*\sopacity="0\.5"[^>]*>[\s\S]*?<\/g>|<\w[^>]*\sopacity="0\.5"[^>]*\/>)\s*/g

/**
 * Single icon, fully parsed and normalized.
 *
 * `inner` is the SVG body with the `<svg>` wrapper, XML declaration, empty
 * `<rect>`, `<title>`, and default `stroke-width="1.5"` stripped. Hex colors
 * are replaced with `currentColor`.
 *
 * For duotone styles (`LineDuotone`, `BoldDuotone`), the path with
 * `opacity="0.5"` is extracted into `duotoneAccentInner` so framework hooks
 * can inject the duotone CSS-var customization (V3-09). The path is removed
 * from `inner`. For non-duotone styles, `duotoneAccentInner` is `null`.
 *
 * `preview` is a base64-encoded 20x20 SVG with a white background `<rect>`,
 * used in JSDoc inline docs.
 */
export interface ParsedIcon {
    readonly name: string
    readonly category: string
    readonly style: IconWeight
    readonly styleKebab: string
    readonly kebabName: string
    readonly pascalName: string
    readonly inner: string
    readonly duotoneAccentInner: string | null
    readonly preview: string
}

/**
 * All 6 styles for a single logical icon, grouped by name.
 *
 * Consumed by reactive-style packages (the new `@solar-icons/react`
 * and `@solar-icons/vue`) that emit one component per logical icon
 * and let the consumer pick the style at runtime.
 *
 * `styles` is guaranteed to contain all 6 entries — {@link parseSvgs} throws
 * on a missing style.
 */
export interface ParsedIconGroup {
    readonly name: string
    readonly category: string
    readonly kebabName: string
    readonly pascalName: string
    readonly styles: Readonly<Record<IconWeight, ParsedIcon>>
}

/**
 * Immutable per-iteration context passed to a hook.
 *
 * The hook returns its own framework-specific output (typically a
 * `FileDefinition[]` or a similar record-of-files shape). The parser does not
 * know or constrain that shape — it only collects the hook's return value
 * into an array.
 */
export interface IconContext<TParsed> {
    readonly icon: TParsed
    readonly index: number
    readonly total: number
}

/**
 * Options for {@link parseSvgs}.
 */
export interface ParseOptions {
    /** Absolute path to the `svgs/` directory. Defaults to `<core>/svgs`. */
    readonly svgsDir?: string
    /** Generate the base64 preview for each icon. Defaults to `true`. */
    readonly preview?: boolean
}

/**
 * Result of {@link parseSvgs}. As a side effect, the result populates the
 * in-memory cache that {@link loadIcon} reads from.
 */
export interface ParseResult {
    readonly icons: ReadonlyArray<ParsedIcon>
    readonly groups: ReadonlyArray<ParsedIconGroup>
}

const cache = new Map<string, ParsedIcon>()
let groupsCache: ReadonlyArray<ParsedIconGroup> = []
let iconsCache: ReadonlyArray<ParsedIcon> = []

const cacheKey = (category: string, style: IconWeight, name: string): string =>
    `${category}/${style}/${name}`

const findDefaultSvgsDir = (): string => path.resolve(import.meta.dirname, '../svgs')

const isDirectory = (p: string): boolean => {
    try {
        return fs.statSync(p).isDirectory()
    } catch {
        return false
    }
}

const normalizeBody = (
    raw: string,
    withPreview: boolean
): { inner: string; duotoneAccentInner: string | null; preview: string } => {
    let body = raw
        .replace(XML_DECL_REGEX, '')
        .replace(SVG_OPEN_REGEX, '')
        .replace(SVG_CLOSE_REGEX, '')
        .replace(EMPTY_RECT_REGEX, '')
        .replace(TITLE_REGEX, '')
        .replace(DEFAULT_STROKE_WIDTH_REGEX, '')
        .trim()

    let duotoneAccentInner: string | null = null
    const duotoneMatch = body.match(DUOTONE_ACCENT_REGEX)
    if (duotoneMatch && duotoneMatch.length > 0) {
        duotoneAccentInner = duotoneMatch.join('\n').trim()
        body = body.replace(DUOTONE_ACCENT_REGEX, '').trim()
    }

    body = body.replace(HEX_COLOR_REGEX, '"currentColor"')
    if (duotoneAccentInner) {
        duotoneAccentInner = duotoneAccentInner.replace(HEX_COLOR_REGEX, '"currentColor"')
    }

    const preview = withPreview
        ? Buffer.from(
              raw.replace(
                  SVG_OPEN_REGEX,
                  '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"><rect width="24" height="24" fill="#FFF" />'
              )
          ).toString('base64')
        : ''

    return { inner: body, duotoneAccentInner, preview }
}

const assertIntegrity = (icons: ReadonlyArray<ParsedIcon>): void => {
    const stylesByLogical = new Map<string, Set<IconWeight>>()
    for (const icon of icons) {
        const key = `${icon.category}/${icon.name}`
        if (!stylesByLogical.has(key)) stylesByLogical.set(key, new Set())
        stylesByLogical.get(key)?.add(icon.style)
    }
    const failures: string[] = []
    for (const [key, styles] of stylesByLogical) {
        if (styles.size !== CANONICAL_STYLES.length) {
            const missing = CANONICAL_STYLES.filter(s => !styles.has(s))
            failures.push(`  - ${key}: missing [${missing.join(', ')}]`)
        }
    }
    if (failures.length > 0) {
        throw new Error(
            `Parser integrity check failed. The following logical icons are missing styles:\n${failures.join('\n')}`
        )
    }
}

const buildGroups = (icons: ReadonlyArray<ParsedIcon>): ReadonlyArray<ParsedIconGroup> => {
    const byLogical = new Map<string, ParsedIcon[]>()
    for (const icon of icons) {
        const key = `${icon.category}/${icon.name}`
        const list = byLogical.get(key)
        if (list) {
            list.push(icon)
        } else {
            byLogical.set(key, [icon])
        }
    }
    const groups: ParsedIconGroup[] = []
    for (const list of byLogical.values()) {
        const first = list[0]!
        const styles = {} as Record<IconWeight, ParsedIcon>
        for (const icon of list) {
            styles[icon.style] = icon
        }
        groups.push({
            name: first.name,
            category: first.category,
            kebabName: first.kebabName,
            pascalName: first.pascalName,
            styles,
        })
    }
    return groups
}

/**
 * Reads `core/svgs/`, normalizes every icon, and populates the in-memory
 * cache. Returns both a flat list (one entry per `category × style × name`)
 * and a grouped list (one entry per `category × name`, with all 6 styles
 * inside).
 *
 * Throws if `svgsDir` does not exist, or if any logical icon is missing one
 * or more styles (integrity check always runs).
 *
 * The two iteration modes ({@link forEachIcon} and
 * {@link forEachIconGroupedBy}) read from this cache.
 */
export const parseSvgs = async (options: ParseOptions = {}): Promise<ParseResult> => {
    const svgsDir = options.svgsDir ?? findDefaultSvgsDir()
    const withPreview = options.preview !== false

    if (!fs.existsSync(svgsDir)) {
        throw new Error(`parseSvgs: svgs directory not found: ${svgsDir}`)
    }

    const icons: ParsedIcon[] = []
    const categories = fs.readdirSync(svgsDir, 'utf-8')

    for (const category of categories) {
        const categoryDir = path.join(svgsDir, category)
        if (!isDirectory(categoryDir)) continue

        for (const style of CANONICAL_STYLES) {
            const styleDir = path.join(categoryDir, style)
            if (!isDirectory(styleDir)) continue

            const files = fs.readdirSync(styleDir, 'utf-8')
            for (const filename of files) {
                if (!filename.endsWith('.svg')) continue
                const name = filename.slice(0, -'.svg'.length).replace(/[\s\-_]+$/g, '')
                const filePath = path.join(styleDir, filename)
                const raw = fs.readFileSync(filePath, 'utf-8')
                const { inner, duotoneAccentInner, preview } = normalizeBody(raw, withPreview)
                icons.push({
                    name,
                    category,
                    style,
                    styleKebab: STYLE_TO_KEBAB[style],
                    kebabName: name,
                    pascalName: toPascalCase(name),
                    inner,
                    duotoneAccentInner,
                    preview,
                })
            }
        }
    }

    assertIntegrity(icons)
    const groups = buildGroups(icons)

    cache.clear()
    for (const icon of icons) {
        cache.set(cacheKey(icon.category, icon.style, icon.name), icon)
    }
    iconsCache = icons
    groupsCache = groups

    return { icons, groups }
}

/**
 * Iterates every `category × style × name` triple and calls `hook` for each.
 *
 * Use this for **unit-per-style** packages: one component file per
 * `category × style × name` (Svelte, Solid, Angular, the new
 * `@solar-icons/react` after V3-07, the new `@solar-icons/vue` after V3-08b).
 *
 * Throws if called before {@link parseSvgs}.
 */
export const forEachIcon = async <R>(
    hook: (ctx: IconContext<ParsedIcon>) => R | Promise<R>
): Promise<ReadonlyArray<R>> => {
    if (iconsCache.length === 0) {
        throw new Error('forEachIcon: cache is empty. Call parseSvgs first.')
    }
    const total = iconsCache.length
    const results: R[] = []
    for (let i = 0; i < total; i++) {
        const result = await hook({ icon: iconsCache[i]!, index: i, total })
        results.push(result)
    }
    return results
}

/**
 * Iterates every `category × name` and calls `hook` with all 6 styles
 * grouped together.
 *
 * Use this for **reactive-style** packages: one component per logical icon,
 * with the style picked at runtime (the new `@solar-icons/react`
 * after V3-07, `@solar-icons/vue` after V3-23).
 *
 * Throws if called before {@link parseSvgs}.
 */
export const forEachIconGroupedBy = async <R>(
    hook: (ctx: IconContext<ParsedIconGroup>) => R | Promise<R>
): Promise<ReadonlyArray<R>> => {
    if (groupsCache.length === 0) {
        throw new Error('forEachIconGroupedBy: cache is empty. Call parseSvgs first.')
    }
    const total = groupsCache.length
    const results: R[] = []
    for (let i = 0; i < total; i++) {
        const result = await hook({ icon: groupsCache[i]!, index: i, total })
        results.push(result)
    }
    return results
}

/**
 * Synchronous accessor for a single icon. Reads from the in-memory cache
 * populated by {@link parseSvgs}.
 *
 * Throws if the icon is not in the cache — call `parseSvgs` first.
 */
export const loadIcon = (category: string, style: IconWeight, name: string): ParsedIcon => {
    const icon = cache.get(cacheKey(category, style, name))
    if (!icon) {
        throw new Error(
            `loadIcon: icon not found in cache: ${cacheKey(category, style, name)}. Call parseSvgs first.`
        )
    }
    return icon
}

const DUOTONE_CSS_VARS_HTML =
    'style="color: var(--solar-duotone-color, currentColor); opacity: var(--solar-duotone-opacity, 0.5)"'
const DUOTONE_CSS_VARS_JSX =
    'style={{ color: "var(--solar-duotone-color, currentColor)", opacity: "var(--solar-duotone-opacity, 0.5)" }}'

/**
 * Transforms a duotone-accent string so that `opacity="0.5"` is replaced
 * with CSS custom properties, giving consumers full control over the accent
 * color and opacity.
 *
 * @param accent    The raw `duotoneAccentInner` value from a {@link ParsedIcon}.
 *                  May be `null`. Each element in the string has already been
 *                  extracted by {@link DUOTONE_ACCENT_REGEX} — it is either a
 *                  self-closing element (`<path … />`, `<circle … />`,
 *                  `<ellipse … />`, `<rect … />`) or a `<g>…</g>` group.
 * @param jsxStyle  When `true`, emits the JSX object syntax
 *                  (`style={{ … }}`) for React / Solid. When `false`,
 *                  emits the HTML string syntax (`style="…"`) for Vue,
 *                  Svelte, Angular, and framework-agnostic templates.
 *
 * @returns The transformed accent string, or `null` if the input was `null`.
 */
export function transformDuotoneAccent(accent: string | null, jsxStyle = false): string | null {
    if (!accent) return null
    const styleAttr = jsxStyle ? DUOTONE_CSS_VARS_JSX : DUOTONE_CSS_VARS_HTML
    return accent
        .split('\n')
        .map(line => {
            const trimmed = line.trim()
            if (!trimmed || trimmed.startsWith('</')) return line
            const withoutOpacity = trimmed.replace(/\s+opacity="0\.5"/g, '')
            if (withoutOpacity.endsWith('/>')) {
                return withoutOpacity.slice(0, -2) + ` ${styleAttr}/>`
            }
            return withoutOpacity.replace('>', ` ${styleAttr}>`)
        })
        .join('\n')
}

/**
 * Drops the in-memory cache. Test escape hatch. After calling this, the next
 * `loadIcon`, `forEachIcon`, or `forEachIconGroupedBy` call will throw until
 * {@link parseSvgs} is invoked again.
 */
export const clearCache = (): void => {
    cache.clear()
    iconsCache = []
    groupsCache = []
}
