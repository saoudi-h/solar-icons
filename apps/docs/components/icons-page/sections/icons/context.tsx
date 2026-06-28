import type { IconData } from '@/generated/descriptions'
import { STYLES, type Weight } from '@solar-icons/core/runtime'
import { SolarProvider } from '@solar-icons/react'
import { atom } from 'jotai'
import { parseAsStringLiteral, useQueryState } from 'nuqs'
import type { ReactNode } from 'react'
import { useCallback, useMemo } from 'react'
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

/**
 * Grid view mode in the URL (`?view=grouped|flat`). Default
 * `'grouped'`. The view is part of the resource description (it's
 * how the user wants to browse the icon set), not transient UI
 * state, so it lives in the URL.
 */
export function useViewModeURL() {
    return useQueryState('view', parseAsStringLiteral(['grouped', 'flat']).withDefault('grouped'))
}

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

export function useSelectedIcon(): IconData | null {
    const [iconBase] = useSelectedIconName()
    const [weight] = useStyleURL()
    return useMemo(() => {
        if (!iconBase) return null
        const fullName = buildFullIconName(iconBase, weight)
        return getAllIcons().find(i => i.name === fullName) ?? null
    }, [iconBase, weight])
}

interface IconProviderWrapperProps {
    children: ReactNode
    defaultColor?: string
    defaultSize?: number
    defaultWeight?: Weight
}

export const DEFAULT_VALUES = {
    // #3b82f6 (Tailwind blue-500): ~50% luminance, saturated enough to read
    // on both light and dark page backgrounds without theme syncing.
    color: '#3b82f6',
    size: 64,
    strokeWidth: 1.5,
    secondaryColor: '#f59e0b',
    secondaryOpacity: 0.5,
} as const

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
            {children}
        </SolarProvider>
    )
}
