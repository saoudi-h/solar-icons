'use client'
import { baseOptions } from '@/app/layout.config'
import { forcedThemeAtom } from '@/atom/forcedThemeAtom'
import { Footer } from '@/components/ui-blocks/footer'
import { config } from '@/config'
import { HomeLayout } from 'fumadocs-ui/layouts/home'
import { useAtom } from 'jotai'
import type { ReactNode } from 'react'

export default function Layout({ children }: { children: ReactNode }): React.ReactElement {
    const [forcedTheme] = useAtom(forcedThemeAtom)
    return (
        <HomeLayout {...baseOptions} disableThemeSwitch={!!forcedTheme}>
            <>
                {children}
                <Footer {...config.footer} />
            </>
        </HomeLayout>
    )
}
