import {
    HeadContent,
    Link,
    Scripts,
    createRootRoute,
} from '@tanstack/react-router'
import type { ReactNode } from 'react'

import appCss from '~/styles/app.css?url'
import { site } from '~/utils/site'
import { umamiEnabled, umamiId, umamiUrl } from '~/utils/umami'

/**
 * Applies the persisted theme before the first paint. Mirrors the
 * `next-themes` behaviour of the current app (class attribute on `<html>`,
 * `theme` key in localStorage) without pulling a dependency.
 */
const themeScript = `(function(){try{var s=localStorage.getItem('theme');var d=s?s==='dark':window.matchMedia('(prefers-color-scheme: dark)').matches;var e=document.documentElement;e.classList.toggle('dark',d);e.style.colorScheme=d?'dark':'light';}catch(e){}})()`

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
                <script
                    // biome-ignore lint/security/noDangerouslySetInnerHtml: the theme must be applied before the first paint
                    dangerouslySetInnerHTML={{ __html: themeScript }}
                />
            </head>
            <body className="min-h-screen bg-background text-foreground antialiased">
                {children}
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
