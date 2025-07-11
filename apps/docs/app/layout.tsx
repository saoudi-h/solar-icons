import { baseUrl, createMetadata } from '@/lib/metadata'
import { cn } from '@/lib/utils'
import { Provider as JotaiProvider } from 'jotai'
import type { Viewport } from 'next'
import { Bricolage_Grotesque, Poppins, Victor_Mono } from 'next/font/google'
import { type ReactNode } from 'react'
import './global.css'
import Providers from './Providers'

const heading = Bricolage_Grotesque({
    subsets: ['latin'],
    variable: '--font-heading',
})

const body = Poppins({
    subsets: ['latin'],
    weight: '400',
    variable: '--font-body',
})

const mono = Victor_Mono({
    subsets: ['latin'],
    variable: '--font-mono',
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
            className={cn(heading.variable, body.variable, mono.variable, body.className)}
            suppressHydrationWarning>
            <meta name="apple-mobile-web-app-title" content="Solar Icons" />
            <body className="flex min-h-screen flex-col">
                <JotaiProvider>
                    <Providers>{children}</Providers>
                </JotaiProvider>
            </body>
        </html>
    )
}
