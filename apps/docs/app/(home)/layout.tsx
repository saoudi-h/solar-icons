'use client'
import { baseOptions } from '@/app/layout.config'
import { Footer } from '@/components/ui-blocks/footer'
import { config } from '@/config'
import { HomeLayout } from 'fumadocs-ui/layouts/home'
import { usePathname } from 'next/navigation'
import type { ReactNode } from 'react'

export default function Layout({ children }: { children: ReactNode }): React.ReactElement {
    const pathname = usePathname()
    // The icons page is a fixed-height scrollable frame (FilterBar
    // on top, categories sidebar + grid in the middle, detail
    // panel floating at the bottom). The Footer is a global,
    // page-level element that would force the user to scroll past
    // the icons frame to reach the bottom of the document —
    // breaking the immersive, two-internal-scrolls layout. Drop
    // the Footer on the icons route only.
    const isIconsPage = pathname === '/icons' || pathname?.startsWith('/icons/')

    return (
        <HomeLayout {...baseOptions}>
            {isIconsPage ? (
                children
            ) : (
                <>
                    {children}
                    <Footer {...config.footer} />
                </>
            )}
        </HomeLayout>
    )
}
