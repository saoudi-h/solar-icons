import {
    HeadContent,
    Link,
    Scripts,
    createRootRoute,
} from '@tanstack/react-router'
import { RootProvider } from 'fumadocs-ui/provider/tanstack'
import type { ReactNode } from 'react'

import { FrameworkLink } from '~/components/framework-link'
import appCss from '~/styles/app.css?url'
import { site } from '~/utils/site'
import { umamiEnabled, umamiId, umamiUrl } from '~/utils/umami'

export const Route = createRootRoute({
    head: () => {
        return {
            meta: [
                { charSet: 'utf-8' },
                { name: 'viewport', content: 'width=device-width, initial-scale=1' },
                { title: site.title },
                { name: 'description', content: site.description },
            ],
            links: [
                { rel: 'stylesheet', href: appCss },
                { rel: 'icon', href: '/favicon.ico' },
                { rel: 'manifest', href: '/manifest.json' },
            ],
        }
    },
    shellComponent: RootDocument,
    notFoundComponent: NotFound,
})

function RootDocument({ children }: { children: ReactNode }) {
    return (
        <html lang="en" suppressHydrationWarning>
            <head>
                <HeadContent />
            </head>
            <body className="flex min-h-screen flex-col">
                <RootProvider
                    components={{ Link: FrameworkLink }}
                    search={{
                        options: {
                            // The index is prerendered to `/api/search` and read
                            // by the browser, so no server is involved.
                            type: 'static',
                            api: '/api/search',
                        },
                    }}>
                    {children}
                </RootProvider>
                {umamiEnabled ? (
                    <script
                        defer
                        src="/p.js"
                        data-website-id={umamiId}
                        data-host-url={umamiUrl}
                    />
                ) : null}
                <Scripts />
            </body>
        </html>
    )
}

function NotFound() {
    return (
        <main className="mx-auto flex min-h-screen max-w-3xl flex-col justify-center gap-4 px-6">
            <h1 className="text-3xl font-semibold">404</h1>
            <p className="text-muted-foreground">
                This page does not exist.{' '}
                <Link to="/" className="underline underline-offset-4">
                    Back to the home page
                </Link>
                .
            </p>
        </main>
    )
}
