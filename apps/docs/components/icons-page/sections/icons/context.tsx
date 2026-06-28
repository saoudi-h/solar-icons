import type { Weight } from '@solar-icons/core/runtime'
import { SolarProvider } from '@solar-icons/react'
import type { ReactNode } from 'react'

import type { IconData } from '@/generated/descriptions'
import { atom } from 'jotai'
import { parseAsArrayOf, parseAsString, useQueryState } from 'nuqs'
import { useCallback } from 'react'
import type { CategoryOption } from './utils'

export const displayedIconsAtom = atom<IconData[]>([])
export const filteredIconsAtom = atom<IconData[]>([])
export const filteredCountAtom = atom(get => get(filteredIconsAtom).length)
export const selectedIconAtom = atom<IconData | null>(null)

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

export function useSearchCategories(): readonly [
    CategoryOption[],
    (cats: CategoryOption[]) => void,
] {
    const [params, setParams] = useQueryState('categories', parseAsArrayOf(parseAsString, ';'))

    const categories = (params?.map(c => ({ value: c, label: c })) as CategoryOption[]) || []

    const setCategories = useCallback(
        (cats: CategoryOption[]) => {
            setParams(cats.length === 0 ? null : cats.map(c => c.value))
        },
        [setParams]
    )

    return [categories, setCategories] as const
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
    _defaultWeight = 'BoldDuotone',
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
