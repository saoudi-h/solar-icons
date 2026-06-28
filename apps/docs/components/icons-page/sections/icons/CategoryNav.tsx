'use client'
import { cn } from '@/lib/utils'
import { CATEGORIES } from '@solar-icons/core/runtime'
import { useAtom, useAtomValue } from 'jotai'
import { useMemo } from 'react'
import { activeCategoryAtom, filteredIconsAtom, useViewModeURL } from './context'

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

    const handleClick = (category: string) => {
        if (viewMode !== 'grouped') setViewMode('grouped')
        setActiveCategory(category)
    }

    const categories = CATEGORIES as string[]

    return (
        <nav className={cn('flex flex-col gap-0.5 text-sm', className)} aria-label="Categories">
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
                              flex items-center justify-between gap-2 rounded-md
                              px-2.5 py-1.5 text-left transition-colors
                            `,
                            `
                              hover:bg-default-100
                              focus-visible:ring-1 focus-visible:ring-ring
                              focus-visible:outline-hidden
                            `,
                            isActive
                                ? 'bg-default-200 font-medium text-foreground'
                                : 'text-muted-foreground'
                        )}>
                        <span className="truncate capitalize">{category.replace(/-/g, ' ')}</span>
                        <span
                            className={cn(
                                'shrink-0 font-mono text-xs tabular-nums',
                                isActive ? 'text-foreground' : `
                                  text-muted-foreground/60
                                `
                            )}>
                            {count}
                        </span>
                    </button>
                )
            })}
        </nav>
    )
}
