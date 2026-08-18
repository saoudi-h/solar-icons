/**
 * Codegen helpers shared by every framework package.
 *
 * Until V3-09 + Path A, each `scripts/parser-hook.ts` (and each
 * `src/lib/dynamic-icon.{tsx,vue,svelte}`) re-implemented the same
 * small set of helpers — `applyDuotoneStyle` (with `<g>` groupDepth
 * tracking), the `Weight → kebab/key` map, and the `StyleComponents`
 * shape. Path A centralizes the data here so the framework packages
 * only own the framework-specific pieces.
 *
 * Invariants:
 *   - `Weight` and `IconWeight` are the same union (kept as an alias
 *     for the codegen layer; framework code can use either).
 *   - `StyleKey` and the `WEIGHT_MAP` values must stay in sync — if
 *     you add a style to `IconWeight`, also add it to `WEIGHT_MAP`.
 *   - `applyDuotoneStyle` is the only place the duotone-accent SVG
 *     transform is implemented; the per-package `parser-hook.ts`
 *     files must use it, not duplicate it.
 */

import type { DeprecatedIconAlias, IconDescription, IconWeight } from './types.js'

/** Alias for {@link IconWeight} for use in the codegen layer. */
export type Weight = IconWeight

/** The six weights in canonical order (Bold, BoldDuotone, Broken, Linear, LineDuotone, Outline). */
export const WEIGHTS: readonly Weight[] = [
    'Bold',
    'BoldDuotone',
    'Broken',
    'Linear',
    'LineDuotone',
    'Outline',
]

/** The kebab-case directory name (and styles-object key) for each style. */
export type StyleKey = 'bold' | 'bold-duotone' | 'broken' | 'linear' | 'line-duotone' | 'outline'

/** Shape of the `styles` object accepted by `DynamicIcon` and friends. */
export type StyleComponentsMap<T> = { [K in StyleKey]: T }

/** Mapping from a {@link Weight} (PascalCase) to its {@link StyleKey}. */
export const WEIGHT_MAP: Readonly<Record<Weight, StyleKey>> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

/**
 * Build a map of canonical icon names to their deprecated compatibility names.
 *
 * The metadata file remains the source of truth; framework generators only
 * decide how to expose the resulting aliases in their native module shape.
 */
export function buildDeprecatedAliasMap(
    descriptions: readonly IconDescription[]
): Map<string, DeprecatedIconAlias[]> {
    const aliasMap = new Map<string, DeprecatedIconAlias[]>()
    for (const entry of descriptions) {
        if (entry.deprecatedAliases?.length) {
            aliasMap.set(entry.name, entry.deprecatedAliases)
        }
    }
    return aliasMap
}

/** Build a map of canonical icon names to non-deprecated PascalCase aliases. */
export function buildAliasMap(descriptions: readonly IconDescription[]): Map<string, string[]> {
    const aliasMap = new Map<string, string[]>()
    const toPascalCase = (value: string): string =>
        value
            .split('-')
            .map(part => part.charAt(0).toUpperCase() + part.slice(1))
            .join('')

    for (const entry of descriptions) {
        if (entry.aliases?.length) {
            aliasMap.set(entry.name, entry.aliases.map(toPascalCase))
        }
    }
    return aliasMap
}

const DUOTONE_CSS_VARS_HTML =
    'style="color: var(--solar-secondary-color, currentColor); opacity: var(--solar-secondary-opacity, 0.5)"'

const DUOTONE_CSS_VARS_JSX =
    'style={{ color: "var(--solar-secondary-color, currentColor)", opacity: "var(--solar-secondary-opacity, 0.5)" }}'

export type DuotoneFormat = 'html' | 'jsx'

/**
 * Transform a duotone-accent string so that `opacity="0.5"` is replaced
 * with a CSS custom property that consumers can override.
 *
 * Tracks `<g>` nesting depth so the transform only fires on top-level
 * elements (avoids double-application on elements already inside a
 * duotone group). The format flag selects the attribute syntax:
 *
 *   - `'html'` (default) — used by Vue, Svelte, Angular.
 *   - `'jsx'`            — used by React, Solid (object-style prop).
 *
 * Returns `null` for `null` input (no accent = nothing to transform).
 */
export function applyDuotoneStyle(
    accent: string | null,
    format: DuotoneFormat = 'html'
): string | null {
    if (!accent) return null
    const styleAttr = format === 'jsx' ? DUOTONE_CSS_VARS_JSX : DUOTONE_CSS_VARS_HTML
    let groupDepth = 0
    return accent
        .replace(/\s+opacity="0\.5"/g, '')
        .split('\n')
        .map(line => {
            const trimmed = line.trim()
            if (!trimmed) return line
            if (trimmed.startsWith('</')) {
                if (trimmed.startsWith('</g')) groupDepth--
                return line
            }
            if (groupDepth > 0) return line
            if (trimmed.startsWith('<g')) groupDepth++
            if (trimmed.endsWith('/>')) {
                return trimmed.slice(0, -2) + ` ${styleAttr}/>`
            }
            return trimmed.replace('>', ` ${styleAttr}>`)
        })
        .join('\n')
}
