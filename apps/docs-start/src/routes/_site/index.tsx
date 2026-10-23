import { createFileRoute } from '@tanstack/react-router'

import { AiToolsSection } from '~/components/home-page/sections/ai-tools'
import { CommunitySection } from '~/components/home-page/sections/community'
import { FeaturesSection } from '~/components/home-page/sections/features'
import { HeroSection } from '~/components/home-page/sections/hero'
import { PackagesSection } from '~/components/home-page/sections/packages'
import { config } from '~/config'
import { seo } from '~/utils/seo'

export const Route = createFileRoute('/_site/')({
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
        <main
            className={`
              relative flex min-h-dvh w-full flex-1 flex-col justify-center gap-9 bg-background py-4
              text-center
              md:gap-12 md:px-10 md:py-[34px]
            `}>
            <HeroSection {...config.heroSection} />
            <FeaturesSection />
            <PackagesSection {...config.packageSection} />
            <CommunitySection />
            <AiToolsSection />
        </main>
    )
}
