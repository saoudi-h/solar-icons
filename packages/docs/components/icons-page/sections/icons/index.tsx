'use client'
import { FilterBar } from './FilterBar'
import { IconGrid } from './IconGrid'
import { SolarProvider } from '@solar-icons/react'
import { atom, useAtom } from 'jotai'
import { Category } from '@/core/generated/utils'
import { cn } from '@/lib/utils'
import { IconData } from '@/core/generated/descriptions'

export const colorIconDark = atom(false)
export type CategoryOption = {
    value: Category
    label: Category
}

export const categoriesAtom = atom<CategoryOption[]>([])
export const displayedIconsAtom = atom<IconData[]>([])
export const filteredIconsAtom = atom<IconData[]>([])
export const displayedCountAtom = atom(get => get(displayedIconsAtom).length)
export const filteredCountAtom = atom(get => get(filteredIconsAtom).length)
export const keywordAtom = atom<string>('')

export const IconShowcase: React.FC<{ className?: string }> = ({ className }) => {
    const [isDark, setIsDark] = useAtom(colorIconDark)

    return (
        <SolarProvider value={{ weight: 'Outline', color: '#000000', size: 24 }}>
            <section className={cn("relative flex flex-col items-center px-3 md:px-0 max-w-fd-container self-center w-full", className)}>
                <div className="relative gap-2 rounded-2xl md:rounded-3xl w-full">
                    <div className="relative flex flex-col gap-4 p-4 rounded-xl">
                        <FilterBar
                            isDark={isDark}
                            setIsDark={setIsDark}
                        />
                        <IconGrid />
                    </div>
                </div>
            </section>
        </SolarProvider>
    )
}
