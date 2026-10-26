import { createFileRoute, Outlet, useRouterState } from '@tanstack/react-router'
import { HomeLayout } from 'fumadocs-ui/layouts/home'

import { Footer } from '~/components/ui-blocks/footer'
import { config } from '~/config'
import { homeOptions } from '~/lib/layout-options'
import { SiteStatsProvider } from '~/lib/site-stats-context'

export const Route = createFileRoute('/_site')({
    component: SiteLayout,
})

function SiteLayout() {
    const pathname = useRouterState({ select: state => state.location.pathname })
    const isIconsPage = pathname === '/icons' || pathname.startsWith('/icons/')

    return (
        <SiteStatsProvider>
            <HomeLayout {...homeOptions}>
                <Outlet />
                {isIconsPage ? null : <Footer {...config.footer} />}
            </HomeLayout>
        </SiteStatsProvider>
    )
}
