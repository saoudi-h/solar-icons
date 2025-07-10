import { source } from '@/lib/source'
import { DocsPage, DocsBody, DocsDescription, DocsTitle } from 'fumadocs-ui/page'
import { notFound } from 'next/navigation'
import { createRelativeLink } from 'fumadocs-ui/mdx'
import { getMDXComponents } from '@/mdx-components'
import { Rate } from '@/components/ui-blocks/rate'
import { onRateAction } from '@/lib/github'

export default async function Page(props: { params: Promise<{ slug?: string[] }> }) {
    const params = await props.params
    const page = source.getPage(params.slug)
    if (!page) notFound()

    const MDXContent = page.data.body

    return (
        <DocsPage toc={page.data.toc} full={page.data.full}>
            <DocsTitle>{page.data.title}</DocsTitle>
            <DocsDescription>{page.data.description}</DocsDescription>
            <DocsBody>
                <MDXContent
                    components={getMDXComponents({
                        // this allows you to link to other pages with relative file paths
                        a: createRelativeLink(source, page),
                    })}
                />
            </DocsBody>
            <Rate onRateAction={onRateAction} />
        </DocsPage>
    )
}

export async function generateStaticParams() {
    return source.generateParams()
}

export async function generateMetadata(props: { params: Promise<{ slug?: string[] }> }) {
    const { slug = [] } = await props.params
    const page = source.getPage(slug)
    if (!page) notFound()

    const image = {
        url: ['/og', ...slug, 'image.png'].join('/'),
        width: 1200,
        height: 630,
    }

    return {
        title: page.data.title,
        description: page.data.description,
        openGraph: {
            url: `/docs/${page.slugs.join('/')}`,
            images: [image],
        },
        twitter: {
            images: [image],
        },
    }
}
