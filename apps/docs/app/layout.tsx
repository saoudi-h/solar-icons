import { cn } from '@/lib/utils'
import './global.css'
import { Bricolage_Grotesque, Poppins, Victor_Mono } from 'next/font/google'
import { type ReactNode } from 'react'
import { Provider as JotaiProvider } from 'jotai'
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

export default function Layout({ children }: { children: ReactNode }) {
    return (
        <html
            lang="en"
            className={cn(heading.variable, body.variable, mono.variable, body.className)}
            suppressHydrationWarning>
            <meta name="apple-mobile-web-app-title" content="Solar Icons" />
            <body className="flex flex-col min-h-screen">
                <JotaiProvider>
                    <Providers>{children}</Providers>
                </JotaiProvider>
            </body>
        </html>
    )
}
