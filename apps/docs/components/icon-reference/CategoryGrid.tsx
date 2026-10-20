import Link from 'next/link'

import { categoryCards } from '@/generated/categories'
import { categoryIcons } from '@/generated/categoryIcons'

/**
 * Category index of the icon reference. Each card shows a
 * representative icon of the category, the number of icons it holds,
 * and links to the explorer already scrolled on that category
 * (`/icons?view=grouped&category=<slug>`).
 *
 * The data comes from `generated/categories.ts`, which the catalog
 * script builds from `packages/core/src/metadata.json`. The list can
 * therefore never drift from the catalogue.
 *
 * The textual form of the same list lives in the page source (a
 * generated block), so `/llms-full.txt` and the "Copy Markdown" button
 * expose the categories as text.
 */
export function CategoryGrid() {
    return (
        <div className="my-6 grid grid-cols-2 gap-3 sm:grid-cols-3 lg:grid-cols-4">
            {categoryCards.map(category => {
                const Icon = categoryIcons[category.representative]
                if (!Icon) return null
                return (
                    <Link
                        key={category.slug}
                        href={`/icons?view=grouped&category=${category.slug}`}
                        className={`
                          group flex items-center gap-3 rounded-xl border border-border bg-card p-3
                          text-foreground no-underline transition-colors
                          hover:border-primary/60 hover:bg-accent/40
                          focus-visible:ring-1 focus-visible:ring-ring focus-visible:outline-hidden
                        `}>
                        <Icon
                            weight="BoldDuotone"
                            size={32}
                            className={`
                              shrink-0 text-foreground transition-colors
                              group-hover:text-primary
                            `}
                        />
                        <span className="flex min-w-0 flex-col">
                            <span className="truncate text-sm font-medium">{category.label}</span>
                            <span className="font-mono text-xs text-muted-foreground tabular-nums">
                                {category.count}
                            </span>
                        </span>
                    </Link>
                )
            })}
        </div>
    )
}
