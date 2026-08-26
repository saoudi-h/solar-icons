import { notFound } from 'next/navigation'
import { ImageResponse } from 'next/og'

import { blogSource } from '@/lib/source'

import { loadCover, loadHeadingFont, OG_SIZE, OgTemplate } from '../components/og'

export const alt = 'Article cover - Solar Icons blog'
export const size = OG_SIZE
export const contentType = 'image/png'

type BlogPost = ReturnType<typeof blogSource.getPages>[number]

function isDraft(page: BlogPost) {
    return (page.data.status as string | undefined) === 'draft'
}

function isVisible(page: BlogPost) {
    return !isDraft(page) || process.env.NODE_ENV !== 'production'
}

export default async function OpengraphImage({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params
    const page = blogSource.getPage([slug])
    if (!page || !isVisible(page)) notFound()

    const [cover, font] = await Promise.all([
        loadCover(page.data.image as string | undefined),
        loadHeadingFont(),
    ])

    return new ImageResponse(
        <OgTemplate
            title={page.data.title}
            description={page.data.description ?? undefined}
            cover={cover}
        />,
        {
            ...size,
            fonts: [{ name: 'Bricolage', data: font, weight: 700, style: 'normal' }],
        }
    )
}
