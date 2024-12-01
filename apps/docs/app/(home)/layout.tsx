'use client'
import type { ReactNode } from 'react'
import { HomeLayout } from 'fumadocs-ui/layouts/home'
import { baseOptions } from '@/app/layout.config'
import { Footer } from '@/components/ui-blocks/footer'
import { config } from '@/config'
import { useAtom } from 'jotai'
import { forcedThemeAtom } from '@/atom/forcedThemeAtom'

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
