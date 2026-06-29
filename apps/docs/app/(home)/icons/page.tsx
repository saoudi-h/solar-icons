import { IconsContent } from '@/components/icons-page/IconsContent'
import type { Metadata } from 'next'

// The icons route reads `?icon=`, `?view=`, `?search=` and
// `?style=` from the URL via `nuqs`'s `useQueryState`, which
// calls `useSearchParams()` under the hood. Static prerendering
// can't render that at build time, so opt out of the prerender
// pass — the page is rendered per request, the rest of the
// site is still statically generated.
export const dynamic = 'force-dynamic'

export const metadata: Metadata = {
    title: 'Explore Icons',
    description: 'Browse and discover the complete Solar Icons collection',
    openGraph: {
        title: 'Explore Icons',
        description: 'Browse and discover the complete Solar Icons collection',
        images: '/og/icons/image.png',
    },
    twitter: {
        images: '/og/icons/image.png',
    },
}

export default function IconsPage() {
    return <IconsContent />
}
