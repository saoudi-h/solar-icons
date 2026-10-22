import type { ReactNode } from 'react'

import { Link } from '@tanstack/react-router'

import type { IconCategory } from '~/routes/icons'
import { categoryCards } from '../../../../docs/generated/categories'
import { categoryIcons } from '../../../../docs/generated/categoryIcons'

/**
 * Category index of the icon reference. Each card shows a representative
 * icon of the category, the number of icons it holds, and links to the
 * explorer already scrolled on that category.
 *
 * The data comes from the catalog generated in `apps/docs/generated`, so the
 * list can never drift from the catalogue.
 *
 * The children are ignored on purpose. The page passes the markdown table of
 * the same categories to the component: it is not rendered, but it is what
 * `/llms-full.txt` and the "Copy Markdown" button expose, since both read
 * the page source.
 */
export function CategoryGrid({ children: _children }: { children?: ReactNode }) {
    return (
        <div className="my-6 grid grid-cols--2 gap-3 sm:grid-cols-3 lg:grid-cols-4">
            {categoryCards.map(category => {
                const Icon = categoryIcons[category.representative]
                if (!Icon) return null
                return (
                    <Link
                        key={category.slug}
                        to="/icons"
                        search={{
                            view: 'grouped',
                            category: category.slug as IconCategory,
                        }}
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
