import Fuse, { type Expression, type IFuseOptions } from 'fuse.js'
import type { IconMetadata } from './data'

const SEARCH_OPTIONS: IFuseOptions<IconMetadata> = {
    keys: ['name', 'tags', 'category', 'categoryTags'],
    threshold: 0.2,
    ignoreLocation: true,
}

export function createIconSearch(icons: IconMetadata[]): Fuse<IconMetadata> {
    return new Fuse(icons, SEARCH_OPTIONS)
}

export function searchIcons(
    fuse: Fuse<IconMetadata>,
    icons: IconMetadata[],
    keyword: string,
    category: string
): IconMetadata[] {
    const terms = keyword.toLowerCase().trim().split(/\s+/).filter(Boolean)
    const matches = terms.length
        ? fuse.search((terms.length > 1 ? { $and: terms } : terms[0]) as Expression).map(result => result.item)
        : icons

    return category ? matches.filter(icon => icon.category === category) : matches
}
