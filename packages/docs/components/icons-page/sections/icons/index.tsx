'use client'
import { useState } from 'react'
import { FilterBar } from './FilterBar'
import { IconGrid } from './IconGrid'
import { SolarProvider } from '@solar-icons/react'
import { cn } from '@/lib/utils'
import { atom, useAtom } from 'jotai'
import { Category } from '@/core/generated/utils'

export const colorIconDark = atom(false)
export const categoriesAtom = atom<Category[]>([])
export const keywordAtom = atom<string>('')

export const IconShowcase = () => {
    const [isDark, setIsDark] = useAtom(colorIconDark)

    return (
        <SolarProvider value={{ weight: 'Outline', color: '#000000', size: 24 }}>
            <section className="relative flex flex-col items-center px-3 md:px-0 max-w-fd-container self-center w-full">
                <div className="relative gap-2 bg-accent/30 rounded-2xl md:rounded-3xl w-full">
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
