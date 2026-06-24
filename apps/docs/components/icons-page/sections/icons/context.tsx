import type { IconProps, IconWeight } from '@solar-icons/react-reactive'
import { SolarProvider } from '@solar-icons/react-reactive'
import type { IconBaseProps } from '@solar-icons/react-reactive/lib/types'
import type { ReactNode } from 'react'

import type { IconData } from '@/generated/descriptions'
import { atom } from 'jotai'
import { parseAsArrayOf, parseAsString, useQueryState } from 'nuqs'
import { useCallback } from 'react'
import type { CategoryOption } from './utils'

export const colorIconDark = atom(false)
export const displayedIconsAtom = atom<IconData[]>([])
export const filteredIconsAtom = atom<IconData[]>([])
export const filteredCountAtom = atom(get => get(filteredIconsAtom).length)
export const selectedIconAtom = atom<IconData | null>(null)

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
    defaultWeight?: IconWeight
}

export const DEFAULT_VALUES: IconProps = {
    color: '#9fcfe6',
    size: 64,
    weight: 'BoldDuotone',
}

export const ShowcaseProvider: React.FC<IconProviderWrapperProps> = ({
    children,
    defaultColor = DEFAULT_VALUES.color,
    defaultSize = DEFAULT_VALUES.size,
    defaultWeight = DEFAULT_VALUES.weight!,
}) => {
    const providerValue: IconBaseProps = {
        color: defaultColor ?? '#9fcfe6',
        size: defaultSize ?? 64,
        weight: defaultWeight,
    }
    return <SolarProvider value={providerValue}>{children}</SolarProvider>
}
