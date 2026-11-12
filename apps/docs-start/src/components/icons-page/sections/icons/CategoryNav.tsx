'use client'
import { CATEGORIES } from '@solar-icons/core/runtime'
import { useAtom, useAtomValue } from 'jotai'
import { useMemo } from 'react'

import { cn } from '~/lib/utils'

import {
    activeCategoryAtom,
    categoryNavigationAtom,
    filteredIconsAtom,
    useViewModeURL,
} from './context'
import { ExtendedFilterToggle } from './OriginControls'

interface CategoryNavProps {
    className?: string
}

export const CategoryNav: React.FC<CategoryNavProps> = ({ className }) => {
    const [viewMode, setViewMode] = useViewModeURL()
    const [activeCategory, setActiveCategory] = useAtom(activeCategoryAtom)
    const filteredIcons = useAtomValue(filteredIconsAtom)

    const counts = useMemo(() => {
        const map = new Map<string, number>()
        for (const icon of filteredIcons) {
            const key = String(icon.category)
            map.set(key, (map.get(key) ?? 0) + 1)
        }
        return map
    }, [filteredIcons])

    const [, requestCategoryNavigation] = useAtom(categoryNavigationAtom)

    const handleClick = (category: string) => {
        if (viewMode !== 'grouped') setViewMode('grouped')
        setActiveCategory(category)
        requestCategoryNavigation(count => count + 1)
    }

    const categories = CATEGORIES as string[]

    return (
        <nav className={cn('flex flex-col gap-px text-sm', className)} aria-label="Categories">
            <ExtendedFilterToggle />
            <span aria-hidden="true" className="mx-2.5 my-1.5 h-px bg-foreground/10" />
            {categories.map(category => {
                const count = counts.get(category) ?? 0
                if (count === 0) return null
                const isActive = activeCategory === category
                return (
                    <button
                        key={category}
                        type="button"
                        onClick={() => handleClick(category)}
                        className={cn(
                            `
                              flex h-8 shrink-0 items-center justify-between gap-2 rounded-md
                              px-2.5 text-left transition-colors
                              focus-visible:ring-2 focus-visible:ring-primary/70
                              focus-visible:outline-hidden
                            `,
                            isActive
                                ? 'bg-foreground/[0.08] font-medium text-foreground'
                                : `
                                  text-muted-foreground
                                  hover:bg-foreground/[0.06] hover:text-foreground
                                `
                        )}>
                        <span className="truncate capitalize">{category.replace(/-/g, ' ')}</span>
                        <span
                            className={cn(
                                'shrink-0 font-mono text-xs tabular-nums',
                                isActive ? 'text-foreground' : `text-muted-foreground/60`
                            )}>
                            {count}
                        </span>
                    </button>
                )
            })}
        </nav>
    )
}
