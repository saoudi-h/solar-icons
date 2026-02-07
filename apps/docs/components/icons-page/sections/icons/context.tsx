import type { IconProps, IconWeight } from '@solar-icons/react'
import { SolarProvider } from '@solar-icons/react'
import type { IconBaseProps } from '@solar-icons/react/lib/types'
import type { ReactNode } from 'react'

import type { IconData } from '@/core/generated/descriptions'
import { atom } from 'jotai'
import type { CategoryOption } from './utils'

export const colorIconDark = atom(false)
export const categoriesAtom = atom<CategoryOption[]>([])
export const displayedIconsAtom = atom<IconData[]>([])
export const filteredIconsAtom = atom<IconData[]>([])
export const filteredCountAtom = atom(get => get(filteredIconsAtom).length)
export const keywordAtom = atom<string>('')
export const selectedIconAtom = atom<IconData | null>(null)

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
