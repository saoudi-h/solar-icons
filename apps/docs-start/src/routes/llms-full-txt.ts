import { createFileRoute } from '@tanstack/react-router'

import { source } from '~/lib/source'
import { getLLMText } from '~/lib/llm-text'

/**
 * Prerendered to `/llms-full.txt`.
 */
export const Route = createFileRoute('/llms-full-txt')({
    server: {
        handlers: {
            GET: async () => {
                const scanned = await Promise.all(source.getPages().map(page => getLLMText(page)))

                return new Response(scanned.join('\n\n'), {
                    headers: {
                        'Content-Type': 'text/plain; charset=utf-8',
                    },
                })
            },
        },
    },
})
