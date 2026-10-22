import { createFileRoute } from '@tanstack/react-router'
import { HomeLayout } from 'fumadocs-ui/layouts/home'

import {
    AiToolsSection,
    CommunitySection,
    FeaturesSection,
    HeroSection,
    PackagesSection,
} from '~/components/home/sections'
import { homeOptions } from '~/lib/layout-options'
import { seo } from '~/utils/seo'

export const Route = createFileRoute('/')({
    head: () =>
        seo({
            title: 'Solar Icons',
            description: '1,451 icons · 6 styles',
            path: '/',
            image: '/og/home/image.png',
        }),
    component: Home,
})

function Home() {
    return (
        <HomeLayout {...homeOptions}>
            <main className="relative flex w-full flex-1 flex-col items-center justify-center gap-9 bg-background py-4 text-center md:gap-12 md:px-10 md:py-[34px]">
                <HeroSection />
                <FeaturesSection />
                <PackagesSection />
                <CommunitySection />
                <AiToolsSection />
            </main>
        </HomeLayout>
    )
}
