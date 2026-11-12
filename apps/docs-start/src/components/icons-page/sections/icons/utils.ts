import type { Category } from '@solar-icons/core'
import Fuse from 'fuse.js'
import type { IconData } from '~generated/descriptions'

import catalog from '~/generated/icon-catalog.json'

// Reuse category tag arrays without repeating them in the downloaded catalogue.
const icons: IconData[] = catalog.icons.map(icon => ({
    ...icon,
    category: icon.category as IconData['category'],
    origin: icon.origin as IconData['origin'],
    categoryTags:
        icon.categoryTags ??
        catalog.categoryTags[icon.category as keyof typeof catalog.categoryTags],
}))
const fuseOptions = {
    keys: ['name', 'tags', 'category', 'categoryTags'],
    threshold: 0.2,
    ignoreLocation: true,
}
// Search indexes are independent of the query. Build each at most once.
const indexes = new Map<OriginFilter, Fuse<IconData>>()

export type CategoryOption = {
    value: Category
    label: Category
}
export const getAllIcons = (): IconData[] => {
    return icons as IconData[]
}

export type OriginFilter = 'all' | 'extended'

export const searchIcons = ({
    keyword,
    categories,
    origin = 'all',
}: {
    keyword?: string
    categories?: CategoryOption[] | undefined
    origin?: OriginFilter
}): IconData[] => {
    const categoryFilteredIcons = categories?.length
        ? getAllIcons().filter(icon => categories.some(c => c.value === icon.category))
        : getAllIcons()
    const preFilteredIcons =
        origin === 'extended'
            ? categoryFilteredIcons.filter(icon => icon.origin === 'extended')
            : categoryFilteredIcons

    if (keyword?.trim()) {
        let fuseSearch = categories?.length ? undefined : indexes.get(origin)
        if (!fuseSearch) {
            fuseSearch = new Fuse(preFilteredIcons, fuseOptions)
            if (!categories?.length) indexes.set(origin, fuseSearch)
        }

        const terms = keyword.toLowerCase().trim().split(/\s+/).filter(Boolean)
        const query: string | { $and: string[] } =
            terms.length > 1 ? { $and: terms } : (terms[0] as string)

        return fuseSearch.search(query).map(r => r.item)
    }

    return preFilteredIcons
}
