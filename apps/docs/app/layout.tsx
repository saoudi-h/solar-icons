import { Provider as JotaiProvider } from 'jotai'
import type { Viewport } from 'next'
import { JetBrains_Mono, Host_Grotesk, Aleo } from 'next/font/google'
import { type ReactNode } from 'react'

import { Analytics } from '@/components/analytics'
import { baseUrl, createMetadata } from '@/lib/metadata'
import { cn } from '@/lib/utils'

import './globals.css'
import Providers from './Providers'

const mono = JetBrains_Mono({
    subsets: ['latin'],
    variable: '--font-mono',
})

const bodyFont = Host_Grotesk({
    subsets: ['latin'],
    variable: '--font-body',
    display: 'swap',
})

const headingFont = Aleo({
    subsets: ['latin'],
    variable: '--font-heading',
    display: 'swap',
})

export const metadata = createMetadata({
    title: {
        template: '%s | Solar Icons',
        default: 'Solar Icons',
    },
    description: 'The icon library for React applications and more',
    metadataBase: baseUrl,
})

export const viewport: Viewport = {
    themeColor: [
        { media: '(prefers-color-scheme: dark)', color: '#000000' },
        { media: '(prefers-color-scheme: light)', color: '#ffffff' },
    ],
}

export default function Layout({ children }: { children: ReactNode }) {
    return (
        <html
            lang="en"
            className={cn(mono.variable, bodyFont.variable, headingFont.variable)}
            suppressHydrationWarning>
            <meta name="apple-mobile-web-app-title" content="Solar Icons" />
            <body className="flex min-h-screen flex-col font-body">
                <JotaiProvider>
                    <Providers>{children}</Providers>
                </JotaiProvider>
                <Analytics />
            </body>
        </html>
    )
}
