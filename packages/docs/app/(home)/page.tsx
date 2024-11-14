import { FeatureSection } from '@/components/home-page/sections/feature'
import { HeroSection } from '@/components/home-page/sections/hero'
import { PackageSection } from '@/components/home-page/sections/package'
import { config } from '@/config'
export default function HomePage() {
    return (
        <main className="relative flex min-h-dvh w-full gap-9 bg-background py-4 md:gap-12 md:px-10 md:py-[34px] flex-1 flex-col justify-center text-center">
            <HeroSection />
            <FeatureSection />
            <PackageSection {...config.packageSection} />
        </main>
    )
}
