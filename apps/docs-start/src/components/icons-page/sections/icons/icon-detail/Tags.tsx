import type { FC } from 'react'

import { useSearchKeyword, useSelectedIcon } from '../context'

const TAG = `
  rounded-md px-2 py-1 text-xs transition-colors
  focus-visible:ring-2 focus-visible:ring-primary/70 focus-visible:outline-hidden
`

/** Tags of the selected icon. A tag is a shortcut to the matching search. */
export const Tags: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [, setKeyword] = useSearchKeyword()

    if (!selectedIcon) return null

    return (
        <div className="flex flex-wrap gap-1">
            {selectedIcon.tags.map(tag => (
                <button
                    key={`icon-${tag}`}
                    type="button"
                    onClick={() => setKeyword(tag)}
                    className={`
                      ${TAG}
                      bg-foreground/[0.07] text-foreground/80
                      hover:bg-foreground/[0.12] hover:text-foreground
                    `}>
                    {tag}
                </button>
            ))}
            {selectedIcon.categoryTags.map(tag => (
                <button
                    key={`category-${tag}`}
                    type="button"
                    onClick={() => setKeyword(tag)}
                    className={`
                      ${TAG}
                      text-muted-foreground ring-1 ring-foreground/10 ring-inset
                      hover:bg-foreground/[0.06] hover:text-foreground
                    `}>
                    {tag}
                </button>
            ))}
        </div>
    )
}
