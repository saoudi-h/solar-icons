import { createFileRoute } from '@tanstack/react-router'

import { IconsContent } from '@/components/icons-page/IconsContent'
import { categories } from '@/generated/utils'
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
            title: 'Explore Solar Icons',
            description: 'Browse all six styles',
            path: '/icons',
            image: '/og/icons/image.png',
        }),
    component: IconsPage,
})

function IconsPage() {
    return <IconsContent />
}
