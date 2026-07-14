import type { IconData } from '@/generated/descriptions'
import icons from '@/generated/descriptions'
import type { Category } from '@solar-icons/core'

import Fuse from 'fuse.js'

export type CategoryOption = {
    value: Category
    label: Category
}
export const getAllIcons = (): IconData[] => {
    return icons as IconData[]
}

export const searchIcons = ({
    keyword,
    categories,
}: {
    keyword?: string
    categories?: CategoryOption[] | undefined
}): IconData[] => {
    const preFilteredIcons = categories?.length
        ? getAllIcons().filter(icon => categories.some(c => c.value === icon.category))
        : getAllIcons()

    if (keyword) {
        const fuseSearch = new Fuse(preFilteredIcons, {
            keys: ['name', 'tags', 'category', 'categoryTags'],
            threshold: 0.2, // Stricter threshold to compensate for ignoreLocation
            ignoreLocation: true, // Essential for multi-word matching out of order
        })

        const terms = keyword.toLowerCase().trim().split(/\s+/).filter(Boolean)
        const query = terms.length > 1 ? { $and: terms } : terms[0]

        return fuseSearch.search(query).map(r => r.item)
    }

    return preFilteredIcons
}
