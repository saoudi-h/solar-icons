import { createFileRoute } from '@tanstack/react-router'

export const Route = createFileRoute('/docs/$path/mdx')({
    server: {
        handlers: {
            GET: () => new Response('ok'),
        },
    },
})
