import { ArrowLeftIcon } from '@solar-icons/react/dynamic/arrow-left'
import { ArrowRightIcon } from '@solar-icons/react/dynamic/arrow-right'
import { createFileRoute, Link, notFound } from '@tanstack/react-router'
import { InlineTOC } from 'fumadocs-ui/components/inline-toc'
import Image from 'next/image'
import type { ComponentProps } from 'react'
import { use, useState } from 'react'

import { PostCover } from '@/app/(home)/blog/components/post-cover'
import { ShareButton } from '@/app/(home)/blog/components/share-button'
import { TagPill } from '@/app/(home)/blog/components/tag-pill'
import { Button } from '@/components/ui/button'
import { useMDXComponents } from '~/components/mdx'
import { blogSource } from '~/lib/source'
import { seo } from '~/utils/seo'

interface AuthorProfile {
    name: string
    avatar?: string
}

type BlogPost = ReturnType<typeof blogSource.getPages>[number]

function isDraft(page: BlogPost) {
    return (page.data.status as string | undefined) === 'draft'
}

function isVisible(page: BlogPost) {
    return !isDraft(page) || !import.meta.env.PROD
}

function ScrollTable(props: ComponentProps<'table'>) {
    return (
        <div
            tabIndex={0}
            className="relative my-6 overflow-auto focus-visible:ring-2 focus-visible:ring-ring focus-visible:outline-none">
            <table {...props} />
        </div>
    )
}

const AUTHOR_PROFILES: Record<string, AuthorProfile> = {
    'saoudi-h': {
        name: 'saoudi-h',
        avatar: '/saoudi-h.png',
    },
    'Hakim Saoudi': {
        name: 'saoudi-h',
        avatar: '/saoudi-h.png',
    },
}

function resolveAuthorProfile(author: string): AuthorProfile {
    return AUTHOR_PROFILES[author] ?? { name: author }
}

function formatDate(value: Date | string) {
    const date = value instanceof Date ? value : new Date(value)
    return date.toLocaleDateString('en-US', {
        year: 'numeric',
        month: 'long',
        day: 'numeric',
    })
}

export const Route = createFileRoute('/_site/blog/$')({
    loader: async ({ params }) => {
        const page = blogSource.getPage([params._splat ?? ''])
        if (!page || !isVisible(page)) throw notFound()

        await page.data.preload()

        return { slug: params._splat ?? '' }
    },
    head: ({ loaderData }) => {
        const page = loaderData ? blogSource.getPage([loaderData.slug]) : undefined
        if (!page) return {}

        return seo({
            title: page.data.title,
            description: page.data.description ?? `Solar Icons blog: ${page.data.title}`,
            path: page.url,
            type: 'article',
        })
    },
    component: BlogPost,
})

function BlogPost() {
    const { slug } = Route.useLoaderData()
    const page = blogSource.getPage([slug])
    if (!page) throw notFound()

    const [avatarFailed, setAvatarFailed] = useState(false)
    const { toc } = use(page.data.load())
    const MDX = page.data.body
    const tags = (page.data.tags as string[] | undefined) ?? []
    const author = resolveAuthorProfile(page.data.author as string)
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
                to="/blog"
                search={{}}
                className="inline-flex items-center gap-2 text-sm font-medium text-muted-foreground transition-colors hover:text-foreground">
                <ArrowLeftIcon size={16} weight="Linear" />
                Back to blog
            </Link>

            {isDraft(page) && (
                <div className="mt-6 rounded-2xl border border-warning/35 bg-warning/10 px-4 py-3 text-sm">
                    Draft. This article is only visible in development. Set{' '}
                    <code className="rounded-sm bg-warning/15 px-1 py-0.5">status: published</code>{' '}
                    to publish it.
                </div>
            )}

            <div className="mt-8 flex flex-wrap gap-2">
                {tags.map(tag => (
                    <TagPill key={tag} label={tag} />
                ))}
            </div>

            <h1 className="mt-4 font-heading text-4xl/tight font-bold md:text-5xl">
                {page.data.title}
            </h1>
            <p className="mt-4 text-base/relaxed text-muted-foreground">{page.data.description}</p>

            <div className="mt-8 flex flex-wrap items-center gap-3 rounded-2xl border border-border bg-card/60 p-1">
                <div className="flex min-w-0 flex-1 items-center gap-3 px-3 py-2">
                    {author.avatar && !avatarFailed ? (
                        <Image
                            src={author.avatar}
                            alt=""
                            width={36}
                            height={36}
                            onError={() => setAvatarFailed(true)}
                            className="size-9 shrink-0 rounded-full object-cover"
                        />
                    ) : (
                        <div className="flex size-9 shrink-0 items-center justify-center rounded-full bg-foreground text-xs font-bold text-background">
                            {author.name.slice(0, 2).toUpperCase()}
                        </div>
                    )}
                    <div className="min-w-0">
                        <div className="truncate text-sm font-semibold">{author.name}</div>
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
                <InlineTOC items={toc} />
                <MDX components={useMDXComponents({ table: ScrollTable })} />
            </div>

            <div className="mt-10 flex flex-wrap gap-2">
                <Button
                    asChild
                    size="lg"
                    variant="outline"
                    colors="secondary"
                    className="rounded-full">
                    <Link to="/blog" search={{}}>
                        <ArrowLeftIcon size={16} weight="Linear" />
                        More articles
                    </Link>
                </Button>
                <Button asChild size="lg" variant="default" className="rounded-full">
                    <Link to="/docs/$" params={{ _splat: 'v2' }}>
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
                                to={other.url}
                                className="group rounded-2xl border border-border p-5 transition-colors hover:bg-card">
                                <div className="text-xs text-muted-foreground">
                                    {formatDate(other.data.date as Date)}
                                </div>
                                <h3 className="mt-3 font-heading text-lg font-bold group-hover:text-primary">
                                    {other.data.title}
                                </h3>
                                <span className="mt-4 inline-flex items-center gap-2 text-sm font-medium">
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
