import { FeatureSection } from '@/components/home-page/sections/feature'
import { HeroSection } from '@/components/home-page/sections/hero'

export default function HomePage() {
    return (
        <main className="relative flex h-screen min-h-dvh w-full gap-9 overflow-y-auto bg-background p-4 md:gap-12 md:px-10 md:py-[34px] flex-1 flex-col justify-center text-center">
            <HeroSection />
            <FeatureSection />
        </main>
    )
}
