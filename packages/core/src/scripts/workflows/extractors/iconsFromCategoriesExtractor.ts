import type { IconDataExtractor } from '../types'

export const iconsFromCategoriesExtractor: IconDataExtractor = function* (data: {
    categories: { [category: string]: { icons: string[]; tags: string[] } }
}) {
    for (const [category, { icons, tags }] of Object.entries(data.categories)) {
        for (const iconName of icons) {
            yield {
                iconName,
                category,
                tags,
            }
        }
    }
}
