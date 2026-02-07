'use client'
import { baseOptions } from '@/app/layout.config'
import { forcedThemeAtom } from '@/atom/forcedThemeAtom'
import { Footer } from '@/components/ui-blocks/footer'
import { config } from '@/config'
import { HomeLayout } from 'fumadocs-ui/layouts/home'
import { useAtom } from 'jotai'
import { usePathname } from 'next/navigation'
import type { ReactNode } from 'react'



export default function Layout({ children }: { children: ReactNode }): React.ReactElement {
    const [forcedTheme] = useAtom(forcedThemeAtom)
    const pathname = usePathname()
    const themeDisabled = pathname === '/icons' && !!forcedTheme

    return (
        <HomeLayout {...baseOptions} themeSwitch={{ enabled: !themeDisabled }} >
            <>
                {children}
                <Footer {...config.footer} />
            </>
        </HomeLayout>
    )
}
