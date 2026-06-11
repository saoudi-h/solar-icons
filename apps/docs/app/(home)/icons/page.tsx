import { IconsContent } from '@/components/icons-page/IconsContent'
import type { Metadata } from 'next'

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
