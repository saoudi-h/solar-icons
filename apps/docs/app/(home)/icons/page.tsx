import { IconsContent } from '@/components/icons-page/IconsContent'
import type { Metadata } from 'next'
import { Suspense } from 'react'

// The icons route reads `?icon=`, `?view=`, `?search=` and
// `?style=` from the URL via `nuqs`'s `useQueryState`, which
// calls `useSearchParams()`. Next.js requires a `<Suspense>`
// boundary around any component that reads search params in a
// page that should be statically generated. We render the
// page as a static shell (the build pre-renders the HTML once
// and serves it from the edge cache — no per-request render
// on Vercel), then the client picks up the actual URL params
// after hydration. The `<Suspense>` fallback is empty because
// the IconsContent renders the right default state during the
// build, and the client takes over immediately.
export default function IconsPage() {
    return (
        <Suspense fallback={null}>
            <IconsContent />
        </Suspense>
    )
}

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
