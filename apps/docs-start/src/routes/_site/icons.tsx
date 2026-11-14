import { createFileRoute } from '@tanstack/react-router'
import { catalogStats, categories } from '~generated/utils'

import { IconsContent } from '~/components/icons-page/IconsContent'
import { seo } from '~/utils/seo'

const styles = ['bold', 'bold-duotone', 'broken', 'linear', 'line-duotone', 'outline'] as const

type IconSearch = {
    [key: string]: unknown
    icon?: string
    view?: 'flat' | 'grouped'
    search?: string
    style?: (typeof styles)[number]
    category?: string
    origin?: 'all' | 'extended'
}

function validateSearch(search: Record<string, unknown>): IconSearch {
    return {
        ...search,
        icon: typeof search.icon === 'string' ? search.icon : undefined,
        view: search.view === 'flat' || search.view === 'grouped' ? search.view : undefined,
        search: typeof search.search === 'string' ? search.search : undefined,
        style: styles.includes(search.style as (typeof styles)[number])
            ? (search.style as (typeof styles)[number])
            : undefined,
        category:
            typeof search.category === 'string' &&
            (categories as readonly string[]).includes(search.category)
                ? search.category
                : undefined,
        origin: search.origin === 'all' || search.origin === 'extended' ? search.origin : undefined,
    }
}

export const Route = createFileRoute('/_site/icons')({
    validateSearch,
    head: () =>
        seo({
            title: `Explore ${catalogStats.formattedIconCount} SVG Icons in ${catalogStats.styleCount} Styles`,
            description: `Browse, filter, and copy ${catalogStats.formattedIconCount} SVG icons across ${catalogStats.styleCount} styles for React, Vue, Svelte, Flutter, Blade, Rails, Blazor, and Figma.`,
            path: '/icons',
            image: '/og/icons/image.png',
        }),
    component: IconsPage,
})

function IconsPage() {
    return <IconsContent />
}
