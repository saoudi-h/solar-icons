import { siteUrl } from '@/lib/metadata'
import { blogSource } from '@/lib/source'

export const revalidate = false

function escapeXml(str: string) {
    return str
        .replace(/&/g, '&amp;')
        .replace(/</g, '&lt;')
        .replace(/>/g, '&gt;')
        .replace(/"/g, '&quot;')
        .replace(/'/g, '&apos;')
}

export function GET() {
    const pages = [...blogSource.getPages()]
        .filter(
            p =>
                (p.data.status as string | undefined) !== 'draft' ||
                process.env.NODE_ENV !== 'production'
        )
        .sort((a, b) => {
            const da =
                a.data.date instanceof Date
                    ? a.data.date.getTime()
                    : new Date(a.data.date as string).getTime()
            const db =
                b.data.date instanceof Date
                    ? b.data.date.getTime()
                    : new Date(b.data.date as string).getTime()
            return db - da
        })

    const site = siteUrl.toString().replace(/\/$/, '')

    const items = pages
        .map(page => {
            const date =
                page.data.date instanceof Date ? page.data.date : new Date(page.data.date as string)
            const url = `${site}${page.url}`
            return `    <item>
      <title>${escapeXml(page.data.title)}</title>
      <link>${escapeXml(url)}</link>
      <guid>${escapeXml(url)}</guid>
      <description>${escapeXml(page.data.description ?? '')}</description>
      <pubDate>${date.toUTCString()}</pubDate>
      <author>${escapeXml(page.data.author as string)}</author>
    </item>`
        })
        .join('\n')

    const xml = `<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0">
  <channel>
    <title>Solar Icons Blog</title>
    <link>${escapeXml(`${site}/blog`)}</link>
    <description>Stories, guides and product notes from Solar Icons.</description>
    <language>en</language>
${items}
  </channel>
</rss>`

    return new Response(xml, {
        headers: {
            'Content-Type': 'application/rss+xml; charset=utf-8',
        },
    })
}
