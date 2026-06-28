import { baseOptions } from '@/app/layout.config'
import { Footer } from '@/components/ui-blocks/footer'
import { config } from '@/config'
import { HomeLayout } from 'fumadocs-ui/layouts/home'
import type { ReactNode } from 'react'

export default function Layout({ children }: { children: ReactNode }): React.ReactElement {
    return (
        <HomeLayout {...baseOptions}>
            <>
                {children}
                <Footer {...config.footer} />
            </>
        </HomeLayout>
    )
}
