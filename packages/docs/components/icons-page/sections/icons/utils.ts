import icons, { IconData } from '@/core/generated/descriptions'

import { CategoryOption } from '.'

import Fuse from 'fuse.js'

const fuse = new Fuse(icons, {
    keys: ['name', 'tags', 'category', 'categoryTags'],
    threshold: 0.3,
})

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
            threshold: 0.3, 
        })
        return fuseSearch.search(keyword.toLowerCase()).map(r => r.item)
    }

    return preFilteredIcons
}