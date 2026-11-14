import { createFileRoute, notFound } from '@tanstack/react-router'
import { DocsLayout } from 'fumadocs-ui/layouts/docs'
import { DocsPage, PageLastUpdate } from 'fumadocs-ui/layouts/docs/page'
import { MarkdownCopyButton, ViewOptionsPopover } from 'fumadocs-ui/layouts/docs/page'
import { DocsBody, DocsDescription, DocsTitle } from 'fumadocs-ui/page'
import { use } from 'react'

import { DocsRate } from '~/components/docs/rate'
import { TocActiveMarker } from '~/components/docs/toc-active-marker'
import { useMDXComponents } from '~/components/mdx'
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
        const isV1 = page.slugs[0] === 'v1'
        const packageSlug = page.slugs[2]
        const isV2Package =
            page.slugs[0] === 'v2' && page.slugs[1] === 'packages' && Boolean(packageSlug)
        const packageTitles: Record<string, string> = {
            react: 'React SVG Icons (@solar-icons/react)',
            'react-native': 'React Native SVG Icons (@solar-icons/react-native)',
            vue: 'Vue 3 SVG Icons (@solar-icons/vue)',
            nuxt: 'Nuxt SVG Icons (@solar-icons/nuxt)',
            svelte: 'Svelte 5 SVG Icons (@solar-icons/svelte)',
            solid: 'SolidJS SVG Icons (@solar-icons/solid)',
            angular: 'Angular SVG Icons (@solar-icons/angular)',
            js: 'Vanilla JavaScript SVG Icons (@solar-icons/js)',
            static: 'Static SVG Assets & Sprites (@solar-icons/static)',
            cli: 'Solar Icons CLI (@solar-icons/cli)',
            mcp: 'Solar Icons MCP Server (@solar-icons/mcp)',
            codemod: 'Solar Icons v1 to v2 Codemod (@solar-icons/codemod)',
            flutter: 'Flutter Solar Icons (flutter_solar_icons)',
            rails: 'Ruby on Rails Solar Icons (solar_icons)',
            blade: 'Laravel Blade Solar Icons (solar-icons/blade)',
            blazor: 'Blazor Solar Icons (SolarIcons.Blazor)',
        }
        const isV2Index = page.slugs.length === 1 && page.slugs[0] === 'v2'
        const seoTitle =
            isV2Package && packageSlug
                ? (packageTitles[packageSlug] ?? `${page.data.title} Package`)
                : isV2Index
                  ? 'Documentation (v2)'
                  : page.data.title

        return seo({
            title: seoTitle,
            description: page.data.description ?? '',
            path,
            image: `/og/${page.slugs.join('/')}/image.png`,
            noIndex: isV1,
        })
    },
    component: DocsRoute,
})

function DocsRoute() {
    const { slugs } = Route.useLoaderData()
    const page = source.getPage(slugs)
    if (!page) throw notFound()

    const { toc, lastModified } = use(page.data.load())
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
                            githubUrl={`https://github.com/saoudi-h/solar-icons/blob/main/apps/docs-start/content/docs/${page.path}`}
                        />
                    </div>
                    <DocsBody>
                        <TocActiveMarker />
                        <MDX components={useMDXComponents()} />
                    </DocsBody>
                    <DocsRate />
                    {lastModified ? <PageLastUpdate date={lastModified} /> : null}
                </DocsPage>
            </DocsLayout>
        </>
    )
}
