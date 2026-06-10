import { FeaturesSection } from '@/components/home-page/sections/features'
import { HeroSection } from '@/components/home-page/sections/hero'
import { PackagesSection } from '@/components/home-page/sections/packages'
import { config } from '@/config'
import type { Metadata } from 'next'

export const metadata: Metadata = {
    title: 'Solar Icons',
    description: 'The icon library for React applications and more',
    openGraph: {
        title: 'Solar Icons',
        description: 'The icon library for React applications and more',
        images: '/og/home/image.webp',
    },
    twitter: {
        images: '/og/home/image.webp',
    },
}

export default function HomePage() {
    return (
        <main
            className={`
              relative flex min-h-dvh w-full flex-1 flex-col justify-center
              gap-9 bg-background py-4 text-center
              md:gap-12 md:px-10 md:py-[34px]
            `}>
            <HeroSection {...config.heroSection} />
            <FeaturesSection />
            <PackagesSection {...config.packageSection} />
        </main>
    )
}
