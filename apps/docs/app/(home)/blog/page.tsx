import { ArrowRightIcon } from '@solar-icons/react/dynamic/arrow-right'
import type { Metadata } from 'next'
import Link from 'next/link'

import { blogSource } from '@/lib/source'

import { PostCover } from './components/post-cover'
import { TagPill } from './components/tag-pill'

type BlogPost = ReturnType<typeof blogSource.getPages>[number]

export const metadata: Metadata = {
    title: 'Blog',
    description: 'Articles about Solar Icons, interface design, and development.',
    openGraph: { siteName: 'Solar Icons' },
    twitter: { card: 'summary_large_image', creator: '@hakim__saoudi' },
}

function formatDate(value: Date | string) {
    const date = value instanceof Date ? value : new Date(value)
    return date.toLocaleDateString('en-US', {
        year: 'numeric',
        month: 'long',
        day: 'numeric',
    })
}

function isDraft(page: BlogPost) {
    return (page.data.status as string | undefined) === 'draft'
}

function isVisible(page: BlogPost) {
    return !isDraft(page) || process.env.NODE_ENV !== 'production'
}

export default async function BlogPage(props: { searchParams: Promise<{ tag?: string }> }) {
    const { tag } = await props.searchParams
    const posts = [...blogSource.getPages()].filter(isVisible).sort((a, b) => {
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
    const activeTag = tag?.toLowerCase()
    const filteredPosts = activeTag
        ? posts.filter(post =>
              (post.data.tags as string[] | undefined)?.some(
                  postTag => postTag.toLowerCase() === activeTag
              )
          )
        : posts
    const tags = Array.from(
        new Set(posts.flatMap(post => (post.data.tags as string[] | undefined) ?? []))
    ).sort()
    const featuredPost = filteredPosts.find(post => post.data.featured === true) ?? null
    const restPosts = featuredPost
        ? filteredPosts.filter(post => post.url !== featuredPost.url)
        : filteredPosts

    return (
        <main className="mx-auto w-full max-w-3xl px-6 py-10">
            <header>
                <h1 className="font-heading text-4xl font-bold md:text-5xl">Blog</h1>
                <p className="mt-4 max-w-2xl text-base/relaxed text-muted-foreground">
                    Articles about Solar Icons, interface design, and development.
                </p>
                <div className="mt-5 flex items-center gap-4 text-sm">
                    <Link href="/blog/rss.xml" className="font-medium hover:text-primary">
                        RSS
                    </Link>
                    <Link href="/docs/v2" className="font-medium hover:text-primary">
                        Documentation
                    </Link>
                </div>
            </header>

            {tags.length > 0 && (
                <nav
                    aria-label="Filter articles"
                    className="mt-8 flex flex-wrap items-center gap-2 border-y border-border py-3">
                    <Link
                        href="/blog"
                        className={`rounded-full px-3 py-1.5 text-sm font-medium transition-colors ${
                            !activeTag
                                ? 'bg-foreground text-background'
                                : 'text-muted-foreground hover:bg-accent hover:text-foreground'
                        }`}>
                        All
                    </Link>
                    {tags.map(postTag => (
                        <Link
                            key={postTag}
                            href={`/blog?tag=${encodeURIComponent(postTag)}`}
                            className={`
                              rounded-full px-3 py-1.5 text-sm font-medium transition-colors
                              ${
                                  activeTag === postTag.toLowerCase()
                                      ? 'bg-foreground text-background'
                                      : `
                                        text-muted-foreground
                                        hover:bg-accent hover:text-foreground
                                      `
                              }`}>
                            {postTag}
                        </Link>
                    ))}
                </nav>
            )}

            {filteredPosts.length === 0 && (
                <div className="py-12 text-center">
                    <p className="text-sm text-muted-foreground">No articles found.</p>
                    <Link
                        href="/blog"
                        className="mt-3 inline-block text-sm font-medium text-primary">
                        View all articles
                    </Link>
                </div>
            )}

            {filteredPosts.length > 0 && (
                <>
                    {featuredPost && (
                        <article className="mt-10">
                            <Link
                                href={featuredPost.url}
                                className="group grid gap-6 sm:grid-cols-2 sm:gap-10">
                                <div className="flex flex-col py-1">
                                    <div
                                        className="
                                          flex flex-wrap items-center gap-3 text-sm
                                          text-muted-foreground
                                        ">
                                        <time
                                            dateTime={new Date(
                                                featuredPost.data.date as Date
                                            ).toISOString()}>
                                            {formatDate(featuredPost.data.date as Date)}
                                        </time>
                                        {isDraft(featuredPost) && (
                                            <span
                                                className="
                                                  rounded-full bg-warning/15 px-2.5 py-1 font-medium
                                                  text-warning
                                                ">
                                                Draft
                                            </span>
                                        )}
                                    </div>

                                    <h2
                                        className="
                                          mt-3 font-heading text-2xl/tight font-bold
                                          transition-colors
                                          group-hover:text-primary
                                          md:text-3xl
                                        ">
                                        {featuredPost.data.title}
                                    </h2>
                                    <p
                                        className="
                                          mt-3 line-clamp-3 text-sm/relaxed text-muted-foreground
                                          sm:text-base/relaxed
                                        ">
                                        {featuredPost.data.description}
                                    </p>

                                    <div className="mt-4 flex flex-wrap gap-2">
                                        {(
                                            (featuredPost.data.tags as string[] | undefined) ?? []
                                        ).map(postTag => (
                                            <TagPill key={postTag} label={postTag} />
                                        ))}
                                    </div>

                                    <span
                                        className="
                                          mt-5 inline-flex items-center gap-2 text-sm font-semibold
                                          text-primary
                                        ">
                                        Read article
                                        <ArrowRightIcon
                                            size={16}
                                            weight="Linear"
                                            className="
                                              transition-transform
                                              group-hover:translate-x-1
                                            "
                                        />
                                    </span>
                                </div>

                                <PostCover
                                    post={featuredPost}
                                    sizes="(min-width: 640px) 350px, 100vw"
                                    priority
                                    className="
                                      order-first aspect-video rounded-3xl border border-border
                                      sm:order-0 sm:aspect-auto sm:h-full
                                    "
                                />
                            </Link>
                        </article>
                    )}

                    {restPosts.length > 0 && (
                        <section className="mt-14 border-t border-border pt-10">
                            <h2 className="text-sm font-semibold">Latest articles</h2>
                            <div className="mt-6 grid gap-x-8 gap-y-12 sm:grid-cols-2">
                                {restPosts.map(post => (
                                    <article key={post.url} className="group flex flex-col">
                                        <Link href={post.url} className="flex flex-col">
                                            <PostCover
                                                post={post}
                                                sizes="(min-width: 640px) 350px, 100vw"
                                                className="
                                                  aspect-video rounded-2xl border border-border
                                                "
                                            />

                                            <div
                                                className="
                                                  mt-4 flex flex-wrap items-center gap-3 text-sm
                                                  text-muted-foreground
                                                ">
                                                <time
                                                    dateTime={new Date(
                                                        post.data.date as Date
                                                    ).toISOString()}>
                                                    {formatDate(post.data.date as Date)}
                                                </time>
                                                {isDraft(post) && (
                                                    <span
                                                        className="
                                                          rounded-full bg-warning/15 px-2.5 py-1
                                                          font-medium text-warning
                                                        ">
                                                        Draft
                                                    </span>
                                                )}
                                            </div>

                                            <h3
                                                className="
                                                  mt-2 font-heading text-xl/snug font-bold
                                                  transition-colors
                                                  group-hover:text-primary
                                                ">
                                                {post.data.title}
                                            </h3>
                                            <p
                                                className="
                                                  mt-2 line-clamp-2 text-sm/relaxed
                                                  text-muted-foreground
                                                ">
                                                {post.data.description}
                                            </p>
                                        </Link>

                                        <div className="mt-3 flex flex-wrap gap-2">
                                            {((post.data.tags as string[] | undefined) ?? []).map(
                                                postTag => (
                                                    <TagPill key={postTag} label={postTag} />
                                                )
                                            )}
                                        </div>
                                    </article>
                                ))}
                            </div>
                        </section>
                    )}
                </>
            )}
        </main>
    )
}
