import { createFileRoute } from '@tanstack/react-router'

import { seo } from '~/utils/seo'

export const Route = createFileRoute('/404')({
    head: () =>
        seo({
            title: 'Page not found',
            description: 'This page does not exist.',
            path: '/404',
        }),
    component: NotFoundPage,
})

function NotFoundPage() {
    return (
        <main className="mx-auto flex min-h-screen max-w-3xl flex-col justify-center gap-4 px-6">
            <h1 className="text-3xl font-semibold">404</h1>
            <p className="text-muted-foreground">
                This page does not exist. <a href="/" className="underline underline-offset-4">Back to the home page</a>.
            </p>
        </main>
    )
}
