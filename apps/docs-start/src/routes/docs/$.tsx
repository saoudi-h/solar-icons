import { createFileRoute, notFound } from '@tanstack/react-router'
import { DocsLayout } from 'fumadocs-ui/layouts/docs'
import { DocsPage, PageLastUpdate } from 'fumadocs-ui/layouts/docs/page'
import { MarkdownCopyButton, ViewOptionsPopover } from 'fumadocs-ui/layouts/docs/page'
import { DocsBody, DocsDescription, DocsTitle } from 'fumadocs-ui/page'
import { use } from 'react'

import { useMDXComponents } from '~/components/mdx'
import { lastModifiedOf } from '~/lib/last-modified'
import { VersionBanner } from '~/components/version-banner'
import { docsOptions } from '~/lib/layout-options'
import { source } from '~/lib/source'
import { seo } from '~/utils/seo'

export const Route = createFileRoute('/docs/$')({
    loader: async ({ params }) => {
        const slugs = params._splat?.split('/').filter(Boolean) ?? []
        const page = source.getPage(slugs)
        if (!page) throw notFound()

        await page.data.preload()

        return { slugs }
    },
    head: ({ loaderData }) => {
        const page = loaderData ? source.getPage(loaderData.slugs) : undefined
        if (!page) return {}

        const path = `/docs/${page.slugs.join('/')}`

        return seo({
            title: page.data.title,
            description: page.data.description ?? '',
            path,
            image: `/og/${page.slugs.join('/')}/image.png`,
        })
    },
    component: DocsRoute,
})

function DocsRoute() {
    const { slugs } = Route.useLoaderData()
    const page = source.getPage(slugs)
    if (!page) throw notFound()

    const { toc } = use(page.data.load())
    const MDX = page.data.body
    const markdownUrl = `/docs/${page.slugs.join('/')}.mdx`

    return (
        <>
            <VersionBanner />
            <DocsLayout tree={source.pageTree} {...docsOptions}>
                <DocsPage tableOfContent={{ style: 'clerk' }} toc={toc} full={!!page.data.full}>
                    <DocsTitle>{page.data.title}</DocsTitle>
                    <DocsDescription>{page.data.description}</DocsDescription>
                    <div className="flex flex-row flex-wrap items-center gap-2 border-b pb-6">
                        <MarkdownCopyButton markdownUrl={markdownUrl} />
                        <ViewOptionsPopover
                            markdownUrl={markdownUrl}
                            githubUrl={`https://github.com/saoudi-h/solar-icons/blob/main/apps/docs/content/docs/${page.path}`}
                        />
                    </div>
                    <DocsBody>
                        <MDX components={useMDXComponents()} />
                    </DocsBody>
                    {lastModifiedOf(page.data) ? (
                        <PageLastUpdate date={lastModifiedOf(page.data) as Date} />
                    ) : null}
                </DocsPage>
            </DocsLayout>
        </>
    )
}
