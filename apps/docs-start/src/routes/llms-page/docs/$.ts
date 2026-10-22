import { createFileRoute, notFound } from '@tanstack/react-router'

import { getLLMText } from '~/lib/llm-text'
import { source } from '~/lib/source'

/**
 * Prerendered to `/docs/<path>.mdx`, one file per page. The prerender
 * configuration lists every page with its output path.
 */
export const Route = createFileRoute('/llms-page/docs/$')({
    server: {
        handlers: {
            GET: async ({ params }) => {
                const slugs = params._splat?.split('/').filter(Boolean) ?? []
                const page = source.getPage(slugs)
                if (!page) throw notFound()

                return new Response(await getLLMText(page), {
                    headers: {
                        'Content-Type': 'text/markdown; charset=utf-8',
                    },
                })
            },
        },
    },
})
