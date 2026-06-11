import { Rate } from '@/components/ui-blocks/rate'
import { onRateAction, owner, repo } from '@/lib/github'
import { source } from '@/lib/source'
import { getMDXComponents } from '@/mdx-components'
import { DocsPage, PageLastUpdate } from 'fumadocs-ui/layouts/docs/page'
import { createRelativeLink } from 'fumadocs-ui/mdx'
import { DocsBody, DocsDescription, DocsTitle } from 'fumadocs-ui/page'
import { notFound } from 'next/navigation'

import { MarkdownCopyButton, ViewOptionsPopover } from 'fumadocs-ui/layouts/docs/page'

export default async function Page(props: { params: Promise<{ slug?: string[] }> }) {
    const params = await props.params
    const page = source.getPage(params.slug)
    if (!page) notFound()

    const MDXContent = page.data.body

    // URL to fetch Markdown content, only need to append .mdx to URL if you have `*.mdx` configured.
    const markdownUrl = `${page.url}.mdx`

    return (
        <DocsPage tableOfContent={{ style: 'clerk' }} toc={page.data.toc} full={!!page.data.full}>
            <DocsTitle>{page.data.title}</DocsTitle>
            <DocsDescription>{page.data.description}</DocsDescription>
            <div className="
              flex flex-row flex-wrap items-center gap-2 border-b pb-6
            ">
                <MarkdownCopyButton markdownUrl={markdownUrl} />
                <ViewOptionsPopover
                    markdownUrl={markdownUrl}
                    githubUrl={`https://github.com/${owner}/${repo}/blob/main/apps/docs/content/docs/${page.path}`}
                />
            </div>
            <DocsBody>
                <MDXContent
                    components={getMDXComponents({
                        // this allows you to link to other pages with relative file paths
                        a: createRelativeLink(source, page),
                    })}
                />
            </DocsBody>
            <Rate onRateAction={onRateAction} />
            {page.data.lastModified && <PageLastUpdate date={page.data.lastModified} />}
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
