import { source } from '@/lib/source'
import { notFound } from 'next/navigation'
import { readFileSync } from 'node:fs'
import { generateOGImage } from './og'

const body = readFileSync('./app/og/[...slug]/Poppins-Regular.ttf')
const heading = readFileSync('./app/og/[...slug]/BricolageGrotesque_24pt-Bold.ttf')

export async function GET(_req: Request, { params }: { params: Promise<{ slug: string[] }> }) {
    const { slug } = await params
    const page = source.getPage(slug.slice(0, -1))
    if (!page) notFound()

    return generateOGImage({
        primaryTextColor: 'rgb(240,240,240)',
        title: page.data.title,
        description: page.data.description,
        fonts: [
            {
                name: 'body',
                data: body,
                weight: 400,
            },
            {
                name: 'heading',
                data: heading,
                weight: 700,
            },
        ],
    })
}

export function generateStaticParams(): {
    slug: string[]
}[] {
    return source.generateParams().map(page => ({
        ...page,
        slug: [...page.slug, 'image.png'],
    }))
}
