import { createFileRoute } from '@tanstack/react-router'

import { lastModifiedOf } from '~/lib/last-modified'
import { blogSource, source } from '~/lib/source'
import { siteUrl } from '~/utils/site'

/**
 * Prerendered to `/sitemap.xml`.
 */
export const Route = createFileRoute('/sitemap-xml')({
    server: {
        handlers: {
            GET: async () => {
                const url = (path: string) => new URL(path, siteUrl).toString()

                const entries: {
                    url: string
                    lastModified?: Date
                    changeFrequency: string
                    priority: number
                }[] = [
                    { url: url('/'), changeFrequency: 'monthly', priority: 1 },
                    { url: url('/icons'), changeFrequency: 'monthly', priority: 0.8 },
                    { url: url('/blog'), changeFrequency: 'weekly', priority: 0.8 },
                    ...source.getPages().map(page => ({
                        url: url(page.url),
                        lastModified: lastModifiedOf(page.data),
                        changeFrequency: 'weekly',
                        priority: 0.5,
                    })),
                    ...blogSource.getPages().map(page => ({
                        url: url(page.url),
                        lastModified:
                            page.data.date instanceof Date
                                ? page.data.date
                                : new Date(page.data.date as string),
                        changeFrequency: 'weekly',
                        priority: 0.6,
                    })),
                ]

                const body = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${entries
    .map(entry => {
        const parts = [`    <loc>${entry.url}</loc>`]
        if (entry.lastModified) {
            parts.push(
                `    <lastmod>${new Date(entry.lastModified).toISOString().slice(0, 10)}</lastmod>`
            )
        }
        parts.push(`    <changefreq>${entry.changeFrequency}</changefreq>`)
        parts.push(`    <priority>${entry.priority}</priority>`)
        return `  <url>\n${parts.join('\n')}\n  </url>`
    })
    .join('\n')}
</urlset>`

                return new Response(body, {
                    headers: {
                        'Content-Type': 'application/xml; charset=utf-8',
                    },
                })
            },
        },
    },
})
