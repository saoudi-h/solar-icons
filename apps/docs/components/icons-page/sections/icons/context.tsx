import { ReactNode } from 'react'
import { IconWeight, SolarProvider } from '@solar-icons/react'

import { IconData } from '@/core/generated/descriptions'
import { atom } from 'jotai'
import { CategoryOption } from './utils'

export const colorIconDark = atom(false)
export const categoriesAtom = atom<CategoryOption[]>([])
export const displayedIconsAtom = atom<IconData[]>([])
export const filteredIconsAtom = atom<IconData[]>([])
export const filteredCountAtom = atom(get => get(filteredIconsAtom).length)
export const keywordAtom = atom<string>('')

interface IconProviderWrapperProps {
    children: ReactNode
    defaultColor?: string
    defaultSize?: number
    defaultWeight?: IconWeight
}

export const ShowcaseProvider: React.FC<IconProviderWrapperProps> = ({
    children,
    defaultColor = '#9fcfe6',
    defaultSize = 64,
    defaultWeight = 'BoldDuotone',
}) => {
    return (
        <SolarProvider value={{ color: defaultColor, size: defaultSize, weight: defaultWeight }}>
            {children}
        </SolarProvider>
    )
}
