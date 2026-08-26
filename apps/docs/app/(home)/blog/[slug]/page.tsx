import { ArrowLeftIcon } from '@solar-icons/react/dynamic/arrow-left'
import { ArrowRightIcon } from '@solar-icons/react/dynamic/arrow-right'
import { InlineTOC } from 'fumadocs-ui/components/inline-toc'
import type { Metadata } from 'next'
import Link from 'next/link'
import { notFound } from 'next/navigation'
import type { ComponentProps } from 'react'

import { Button } from '@/components/ui/button'
import { blogSource } from '@/lib/source'
import { getMDXComponents } from '@/mdx-components'

import { PostCover } from '../components/post-cover'
import { ShareButton } from '../components/share-button'
import { TagPill } from '../components/tag-pill'

type BlogPost = ReturnType<typeof blogSource.getPages>[number]

function isDraft(page: BlogPost) {
    return (page.data.status as string | undefined) === 'draft'
}

function isVisible(page: BlogPost) {
    return !isDraft(page) || process.env.NODE_ENV !== 'production'
}

function formatDate(value: Date | string) {
    const date = value instanceof Date ? value : new Date(value)
    return date.toLocaleDateString('en-US', {
        year: 'numeric',
        month: 'long',
        day: 'numeric',
    })
}

function ScrollTable(props: ComponentProps<'table'>) {
    return (
        <div
            tabIndex={0}
            className="
              relative my-6 overflow-auto
              focus-visible:ring-2 focus-visible:ring-ring focus-visible:outline-none
            ">
            <table {...props} />
        </div>
    )
}

export default async function BlogPostPage(props: { params: Promise<{ slug: string }> }) {
    const { slug } = await props.params
    const page = blogSource.getPage([slug])
    if (!page || !isVisible(page)) notFound()

    const MDX = page.data.body
    const tags = (page.data.tags as string[] | undefined) ?? []
    const related = [...blogSource.getPages()]
        .filter(other => isVisible(other) && other.url !== page.url)
        .sort((a, b) => {
            const first =
                a.data.date instanceof Date
                    ? a.data.date.getTime()
                    : new Date(a.data.date as string).getTime()
            const second =
                b.data.date instanceof Date
                    ? b.data.date.getTime()
                    : new Date(b.data.date as string).getTime()
            return second - first
        })
        .slice(0, 2)

    return (
        <main className="mx-auto w-full max-w-3xl min-w-0 overflow-x-clip px-6 py-10">
            <Link
                href="/blog"
                className="
                  inline-flex items-center gap-2 text-sm font-medium text-muted-foreground
                  transition-colors
                  hover:text-foreground
                ">
                <ArrowLeftIcon size={16} weight="Linear" />
                Back to blog
            </Link>

            {isDraft(page) && (
                <div className="
                  mt-6 rounded-2xl border border-warning/35 bg-warning/10 px-4 py-3 text-sm
                ">
                    Draft. This article is only visible in development. Set{' '}
                    <code className="rounded-sm bg-warning/15 px-1 py-0.5">status: published</code> to
                    publish it.
                </div>
            )}

            <div className="mt-8 flex flex-wrap gap-2">
                {tags.map(tag => (
                    <TagPill key={tag} label={tag} />
                ))}
            </div>

            <h1 className="mt-4 font-heading text-4xl/tight  font-bold md:text-5xl">
                {page.data.title}
            </h1>
            <p className="mt-4 text-base/relaxed text-muted-foreground">{page.data.description}</p>

            <div className="
              mt-8 flex flex-wrap items-center gap-3 rounded-2xl border border-border bg-card/60 p-1
            ">
                <div className="flex min-w-0 flex-1 items-center gap-3 px-3 py-2">
                    <div className="
                      flex size-9 shrink-0 items-center justify-center rounded-full bg-foreground
                      text-xs font-bold text-background
                    ">
                        {(page.data.author as string).slice(0, 2).toUpperCase()}
                    </div>
                    <div className="min-w-0">
                        <div className="truncate text-sm font-semibold">
                            {page.data.author as string}
                        </div>
                        <div className="text-xs text-muted-foreground">
                            {formatDate(page.data.date as Date)}
                        </div>
                    </div>
                </div>
                <div className="p-1">
                    <ShareButton url={page.url} />
                </div>
            </div>

            <PostCover
                post={page}
                sizes="(min-width: 768px) 720px, 100vw"
                priority
                className="mt-8 aspect-video rounded-3xl border border-border"
            />

            <div data-post-body className="prose mt-8 max-w-none min-w-0">
                <InlineTOC items={page.data.toc} />
                <MDX components={getMDXComponents({ table: ScrollTable })} />
            </div>

            <div className="mt-10 flex flex-wrap gap-2">
                <Button asChild size="lg" variant="outline" className="rounded-full">
                    <Link href="/blog" className="">
                        <ArrowLeftIcon size={16} weight="Linear" />
                        More articles
                    </Link>
                </Button>
                <Button asChild size="lg" variant="default" className="rounded-full">
                    <Link href="/docs/v2">
                        Read the docs
                        <ArrowRightIcon size={16} weight="Linear" />
                    </Link>
                </Button>
            </div>

            {related.length > 0 && (
                <section className="mt-12">
                    <h2 className="text-sm font-semibold">Keep reading</h2>
                    <div className="mt-4 grid gap-4 sm:grid-cols-2">
                        {related.map(other => (
                            <Link
                                key={other.url}
                                href={other.url}
                                className="
                                  group rounded-2xl border border-border p-5 transition-colors
                                  hover:bg-card
                                ">
                                <div className="text-xs text-muted-foreground">
                                    {formatDate(other.data.date as Date)}
                                </div>
                                <h3 className="
                                  mt-3 font-heading text-lg font-bold
                                  group-hover:text-primary
                                ">
                                    {other.data.title}
                                </h3>
                                <span className="
                                  mt-4 inline-flex items-center gap-2 text-sm font-medium
                                ">
                                    Read article
                                    <ArrowRightIcon size={16} weight="Linear" />
                                </span>
                            </Link>
                        ))}
                    </div>
                </section>
            )}
        </main>
    )
}

export async function generateMetadata(props: {
    params: Promise<{ slug: string }>
}): Promise<Metadata> {
    const { slug } = await props.params
    const page = blogSource.getPage([slug])
    if (!page || !isVisible(page)) notFound()

    return {
        title: page.data.title,
        description: page.data.description ?? `Solar Icons blog: ${page.data.title}`,
        openGraph: { url: page.url, siteName: 'Solar Icons' },
        twitter: { card: 'summary_large_image', creator: '@hakim__saoudi' },
    }
}

export function generateStaticParams(): { slug: string }[] {
    return blogSource
        .getPages()
        .filter(isVisible)
        .map(page => ({ slug: page.slugs[0] ?? '' }))
}
