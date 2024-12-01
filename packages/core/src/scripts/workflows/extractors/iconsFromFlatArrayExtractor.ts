import type { IconDataExtractor } from '../types'

// eslint-disable-next-line @typescript-eslint/no-explicit-any
export const iconsFromFlatArrayExtractor: IconDataExtractor = function* (data: any) {
    if (!Array.isArray(data)) {
        throw new Error('Expected data to be an array of icons.')
    }

    for (const icon of data) {
        yield {
            iconName: icon.name,
            category: icon.category,
            tags: icon.tags,
            categoryTags: icon.categoryTags,
        }
    }
}
