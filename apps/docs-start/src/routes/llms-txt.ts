import { createFileRoute } from '@tanstack/react-router'
import { llms } from 'fumadocs-core/source'
import { catalogStats } from '~generated/utils'

import { blogSource, source } from '~/lib/source'
import { site } from '~/utils/site'

/**
 * Prerendered to `/llms.txt`. Orders current v2 docs ahead of legacy v1 so
 * coding agents resolve maintained v2 APIs first.
 */
export const Route = createFileRoute('/llms-txt')({
    server: {
        handlers: {
            GET: async () => {
                const rawIndex = await llms(source).index()
                const lines = rawIndex.split('\n')
                const v1Start = lines.findIndex(line => line.startsWith('- V1:'))
                const v2Start = lines.findIndex(line => line.startsWith('- V2:'))

                let body = rawIndex
                if (v1Start !== -1 && v2Start > v1Start) {
                    const v2Lines = lines.slice(v2Start)
                    const blogLinks = blogSource
                        .getPages()
                        .filter(page => (page.data.status as string | undefined) !== 'draft')
                        .map(
                            page =>
                                `  - [${page.data.title}](${page.url}): ${page.data.description ?? ''}`
                        )

                    body = [
                        `# ${site.name}`,
                        '',
                        `> ${site.description}`,
                        '',
                        `- [Explore ${catalogStats.formattedIconCount} Icons](/icons): Browse and copy all ${catalogStats.styleCount} styles.`,
                        '- [Blog](/blog): Guides and engineering notes.',
                        ...blogLinks,
                        '',
                        '## Documentation (v2 - Current)',
                        '',
                        ...v2Lines,
                        '',
                        '- Legacy v1 documentation remains archived under `/docs/v1` for existing v1 users; use `/docs/v2/packages/codemod` to migrate.',
                    ].join('\n')
                }

                return new Response(body, {
                    headers: {
                        'Content-Type': 'text/plain; charset=utf-8',
                    },
                })
            },
        },
    },
})
