import type { MetadataRoute } from 'next'

import { siteUrl } from '@/lib/metadata'
import { blogSource, source } from '@/lib/source'

export const revalidate = false

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
    const url = (path: string): string => new URL(path, siteUrl).toString()

    const blogPages = blogSource
        .getPages()
        .filter(
            p =>
                (p.data.status as string | undefined) !== 'draft' ||
                process.env.NODE_ENV !== 'production'
        )

    return [
        {
            url: url('/'),
            changeFrequency: 'monthly',
            priority: 1,
        },
        {
            url: url('/icons'),
            changeFrequency: 'monthly',
            priority: 0.8,
        },
        {
            url: url('/blog'),
            changeFrequency: 'weekly',
            priority: 0.8,
        },
        ...(await Promise.all(
            source.getPages().map(async page => {
                return {
                    url: url(page.url),
                    lastModified: page.data.lastModified
                        ? new Date(page.data.lastModified)
                        : undefined,
                    changeFrequency: 'weekly',
                    priority: 0.5,
                } as MetadataRoute.Sitemap[number]
            })
        )),
        ...blogPages.map(page => {
            const d =
                page.data.date instanceof Date ? page.data.date : new Date(page.data.date as string)
            return {
                url: url(page.url),
                lastModified: d,
                changeFrequency: 'weekly' as const,
                priority: 0.6 as const,
            }
        }),
    ]
}
