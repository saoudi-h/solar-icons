import { llms } from 'fumadocs-core/source'
import { createFileRoute } from '@tanstack/react-router'

import { source } from '~/lib/source'

/**
 * Prerendered to `/llms.txt`. The file is written by the TanStack Start
 * prerenderer because the response is not HTML.
 */
export const Route = createFileRoute('/llms-txt')({
    server: {
        handlers: {
            GET: async () => {
                const index = await llms(source).index()

                return new Response(index, {
                    headers: {
                        'Content-Type': 'text/plain; charset=utf-8',
                    },
                })
            },
        },
    },
})
