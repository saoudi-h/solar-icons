import { STYLES, type Weight } from '@solar-icons/core/runtime'
import { SolarProvider, useSolar } from '@solar-icons/react'
import { atom } from 'jotai'
import { useTheme } from 'next-themes'
import { parseAsStringLiteral, useQueryState } from 'nuqs'
import type { ReactNode } from 'react'
import { useCallback, useEffect, useMemo, useRef, useState } from 'react'

import type { IconData } from '@/generated/descriptions'

import { getAllIcons } from './utils'

export const displayedIconsAtom = atom<IconData[]>([])
export const filteredIconsAtom = atom<IconData[]>([])
export const filteredCountAtom = atom(get => get(filteredIconsAtom).length)

/**
 * Last category the user navigated to from the sidebar. UI-only
 * navigation state (sidebar scroll target + active highlight), not
 * persisted in the URL — the URL is for the *resource* (the icon
 * being viewed) and the search/viewMode/style, not for transient
 * navigation positions within the page.
 */
export const activeCategoryAtom = atom<string | null>(null)

const STYLE_SLUGS = ['bold', 'bold-duotone', 'broken', 'linear', 'line-duotone', 'outline'] as const
type StyleSlug = (typeof STYLE_SLUGS)[number]

const STYLE_SLUG_TO_WEIGHT: Record<StyleSlug, Weight> = {
    bold: 'Bold',
    'bold-duotone': 'BoldDuotone',
    broken: 'Broken',
    linear: 'Linear',
    'line-duotone': 'LineDuotone',
    outline: 'Outline',
}

const WEIGHT_TO_STYLE_SLUG: Record<Weight, StyleSlug> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

/**
 * Build the full icon name from a base name + weight. The icon data
 * stores names as `${base}-${style-slug}` (e.g. `home-bold`,
 * `arrow-right-linear`), so the full name is just a concatenation.
 */
export function buildFullIconName(base: string, weight: Weight): string {
    return `${base}-${WEIGHT_TO_STYLE_SLUG[weight]}`
}

/**
 * Kebab-case style slug for a given weight (e.g. `BoldDuotone` -> `bold-duotone`).
 * Used by the icon-detail code snippets to render v2 per-style import paths.
 */
export function weightToStyleSlug(weight: Weight): StyleSlug {
    return WEIGHT_TO_STYLE_SLUG[weight]
}

/**
 * Inverse of {@link buildFullIconName}. Strips the weight suffix
 * from a full icon name. Returns `null` if no known suffix matches
 * — the icon's weight is unknown and we can't route it via the
 * `?icon=base&style=slug` shape.
 */
export function splitFullIconName(fullName: string): { base: string; weight: Weight } | null {
    for (const weight of STYLES) {
        const suffix = `-${WEIGHT_TO_STYLE_SLUG[weight]}`
        if (fullName.endsWith(suffix)) {
            return { base: fullName.slice(0, -suffix.length), weight }
        }
    }
    return null
}

/**
 * Style (icon weight) in the URL (`?style=bold|linear|...`). The
 * URL value is the kebab-case slug; the hook exposes the
 * PascalCase `Weight` used by the icon components. Default
 * `'bold-duotone'` to match the previous `weightAtom` default.
 */
export function useStyleURL(): readonly [Weight, (value: Weight) => void] {
    const [slug, setSlug] = useQueryState(
        'style',
        parseAsStringLiteral(STYLE_SLUGS).withDefault('bold-duotone')
    )
    const weight = STYLE_SLUG_TO_WEIGHT[slug]
    const setWeight = useCallback(
        (value: Weight) => {
            setSlug(WEIGHT_TO_STYLE_SLUG[value])
        },
        [setSlug]
    )
    return [weight, setWeight] as const
}

export function useSearchKeyword(): readonly [string, (value: string) => void] {
    const [param, setParam] = useQueryState('search')
    const keyword = param ?? ''
    const setKeyword = useCallback(
        (value: string) => {
            setParam(value === '' ? null : value)
        },
        [setParam]
    )
    return [keyword, setKeyword] as const
}

const ORIGIN_FILTERS = ['all', 'extended'] as const
type OriginFilter = (typeof ORIGIN_FILTERS)[number]

/** URL-backed filter for the original catalogue versus project extensions. */
export function useOriginFilter(): readonly [OriginFilter, (value: OriginFilter) => void] {
    const [param, setParam] = useQueryState(
        'origin',
        parseAsStringLiteral(ORIGIN_FILTERS).withDefault('all')
    )
    const setOrigin = useCallback(
        (value: OriginFilter) => setParam(value === 'all' ? null : value),
        [setParam]
    )
    return [param, setOrigin] as const
}

/**
 * Grid view mode in the URL (`?view=grouped|flat`). Default
 * `'flat'` — the first view of the icon set is a 200-icon
 * smorgasbord across all categories, much more representative
 * than the first alphabetical section ('Arrows') in grouped
 * mode. The view is part of the resource description (it's how
 * the user wants to browse the icon set), not transient UI
 * state, so it lives in the URL.
 */
export function useViewModeURL() {
    return useQueryState('view', parseAsStringLiteral(['grouped', 'flat']).withDefault('flat'))
}

export {
    useWeightNamespace,
    useWeightNamespaceContext,
    WeightNamespaceProvider,
} from './weight-namespace'

/**
 * Base name of the icon currently open in the detail panel
 * (`?icon=home`). The URL is the source of truth — the full
 * `IconData` is derived from the base name + the current style
 * (see {@link useSelectedIcon}). Click handlers in `IconCard` and
 * the close button in `FloatingDrawer` write to this query param.
 */
export function useSelectedIconName() {
    return useQueryState('icon')
}

/**
 * The selected icon, augmented with a computed `fullName` (the
 * base name + the current style's slug, e.g. `home-bold`). The
 * icon data is keyed by base name only — the `Icon` component
 * is generic and takes the weight as a prop — so the lookup is
 * by base name and the full name is computed on the fly. Use
 * `selectedIcon.name` for the base name (matching the
 * `IconCard`'s `isSelected` check), and `selectedIcon.fullName`
 * for anything that needs the weight-suffixed name (display
 * title, code-example import path, SVG download URL).
 */
export type SelectedIcon = IconData & { fullName: string }

export function useSelectedIcon(): SelectedIcon | null {
    const [iconBase] = useSelectedIconName()
    const [weight] = useStyleURL()
    return useMemo(() => {
        if (!iconBase) return null
        const icon = getAllIcons().find(i => i.name === iconBase)
        if (!icon) return null
        return { ...icon, fullName: buildFullIconName(iconBase, weight) }
    }, [iconBase, weight])
}

interface IconProviderWrapperProps {
    children: ReactNode
    defaultColor?: string
    defaultSize?: number
    defaultWeight?: Weight
}

/**
 * Curated duotone defaults, one pair per theme. The old single compromise
 * pair (blue-500 + amber-500) read muddy on dark and washed out on light;
 * each theme now gets luminous (dark) or deep (light) hues tuned for its
 * page background. Only the defaults follow the theme — any explicit user
 * pick (color picker, reset-to-theme) wins and is never overridden.
 */
export const THEME_DEFAULT_COLORS = {
    light: { color: '#6d28d9', secondaryColor: '#ea580c' },
    dark: { color: '#8b5cf6', secondaryColor: '#fbbf24' },
} as const

export const DEFAULT_VALUES = {
    // Baseline for SSR and first paint: the dark set. The server cannot
    // know the visitor's theme, so both server and pre-mount client renders
    // use these fixed values (deterministic, hydration-safe). The theme
    // applier below swaps in the light set after mount when untouched.
    ...THEME_DEFAULT_COLORS.dark,
    size: 64,
    strokeWidth: 1.5,
    secondaryOpacity: 0.5,
} as const

/**
 * Concrete duotone defaults for the current theme. Resolves to the dark
 * set before mount so the first client render matches SSR exactly
 * (same mounted pattern as the hero readouts and `SiteThemeToggle`).
 */
export function useThemeDefaultColors(): (typeof THEME_DEFAULT_COLORS)[keyof typeof THEME_DEFAULT_COLORS] {
    const [mounted, setMounted] = useState(false)
    useEffect(() => {
        setMounted(true)
    }, [])
    const { resolvedTheme } = useTheme()
    if (!mounted || resolvedTheme !== 'light') return THEME_DEFAULT_COLORS.dark
    return THEME_DEFAULT_COLORS.light
}

const KNOWN_DEFAULT_COLORS = new Set<string>(
    Object.values(THEME_DEFAULT_COLORS).map(pair => pair.color)
)
const KNOWN_DEFAULT_SECONDARY_COLORS = new Set<string>(
    Object.values(THEME_DEFAULT_COLORS).map(pair => pair.secondaryColor)
)

/**
 * Follows the theme with the curated defaults until the visitor picks
 * their own colors. A slot is only overwritten while it still holds a
 * known default (or is unset) — any custom hex is left alone, including
 * across later theme toggles. Rendered inside `SolarProvider` (which is
 * uncontrolled after mount, so initial props alone cannot do this).
 */
function ThemeColorDefaults(): ReactNode {
    const defaults = useThemeDefaultColors()
    const { color, secondaryColor, setColor, setSecondaryColor } = useSolar()
    const appliedRef = useRef<string | null>(null)
    useEffect(() => {
        const key = `${defaults.color}|${defaults.secondaryColor}`
        if (appliedRef.current === key) return
        appliedRef.current = key
        if (color === undefined || KNOWN_DEFAULT_COLORS.has(color)) setColor(defaults.color)
        if (secondaryColor === undefined || KNOWN_DEFAULT_SECONDARY_COLORS.has(secondaryColor)) {
            setSecondaryColor(defaults.secondaryColor)
        }
    }, [defaults, color, secondaryColor, setColor, setSecondaryColor])
    return null
}

export const ShowcaseProvider: React.FC<IconProviderWrapperProps> = ({
    children,
    defaultColor = DEFAULT_VALUES.color,
    defaultSize = DEFAULT_VALUES.size,
}) => {
    return (
        <SolarProvider
            color={defaultColor}
            size={defaultSize}
            strokeWidth={DEFAULT_VALUES.strokeWidth}
            secondaryColor={DEFAULT_VALUES.secondaryColor}
            secondaryOpacity={DEFAULT_VALUES.secondaryOpacity}>
            <ThemeColorDefaults />
            {children}
        </SolarProvider>
    )
}
