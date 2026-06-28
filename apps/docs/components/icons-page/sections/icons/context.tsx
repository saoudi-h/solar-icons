import type { IconData } from '@/generated/descriptions'
import type { Weight } from '@solar-icons/core/runtime'
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
 * being viewed) and the search/viewMode, not for transient
 * navigation positions within the page.
 */
export const activeCategoryAtom = atom<string | null>(null)

/**
 * Global weight (icon style) for the icons page. Managed in Jotai,
 * not via the V3 SolarProvider, because:
 *  - Weight is not in the V3 SolarProvider (deliberate — propagating
 *    weight via context would force icons to be client components,
 *    bad for SSR).
 *  - Icons that need to switch weight dynamically use the
 *    @solar-icons/react/dynamic subpath and read this atom via a
 *    docs-side wrapper that passes `weight` as a prop.
 * Static per-style icons (e.g. <HomeBold />) are unaffected.
 */
export const weightAtom = atom<Weight>('BoldDuotone')

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
 * Name of the icon currently open in the detail panel
 * (`?icon=home-bold`). The URL is the source of truth — the
 * `IconData` is derived from the icons list below via
 * `useSelectedIcon`. Click handlers in `IconCard` and the close
 * button in `FloatingDrawer` write to this query param.
 */
export function useSelectedIconName() {
    return useQueryState('icon')
}

export function useSelectedIcon(): IconData | null {
    const [iconName] = useSelectedIconName()
    return useMemo(() => {
        if (!iconName) return null
        return getAllIcons().find(i => i.name === iconName) ?? null
    }, [iconName])
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
