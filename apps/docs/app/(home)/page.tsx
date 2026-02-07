import { FeaturesSection } from '@/components/home-page/sections/features'
import { HeroSection } from '@/components/home-page/sections/hero'
import { PackagesSection } from '@/components/home-page/sections/packages'
import { config } from '@/config'
export default function HomePage() {
    return (
        <main
            className={`
              bg-background relative flex min-h-dvh w-full flex-1 flex-col
              justify-center gap-9 py-4 text-center
              md:gap-12 md:px-10 md:py-[34px]
            `}>
            <HeroSection {...config.heroSection} />
            <FeaturesSection />
            <PackagesSection {...config.packageSection} />
        </main>
    )
}
