import React from 'react'
import { HeroRotation } from './HeroRotation'
import { Heading } from '@/components/ui/heading'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { SuperButton, SuperButtonProps } from '@/components/ui/SuperButton'

export interface HeroSectionProps {
    title: {
        part1: string
        part2: string
    }
    content: string
    getStarted: SuperButtonProps
    exploreIcons: SuperButtonProps
}
export const HeroSection: React.FC<HeroSectionProps> = ({
    title,
    content,
    getStarted,
    exploreIcons,
}) => {
    return (
        <section className="relative flex flex-col items-center px-3 md:px-0 max-w-fd-container self-center w-full">
            <div className="relative gap-2 bg-accent/30 rounded-2xl md:rounded-3xl py-12 w-full overflow-hidden">
                <NoiseSvg className="absolute inset-0 pointer-events-none size-full opacity-30" />
                <div className="absolute rounded-full w-1/2 h-1/2 top-0 left-1/3 -translate-x-1/2 -translate-y-1/2 bg-gradient-to-b from-primary/80 to-transparent blur-3xl"></div>
                <div className="absolute rounded-full w-1/3 h-1/3 top-0 left-2/3 -translate-x-1/2 -translate-y-1/2 bg-gradient-to-b from-warning/50 to-transparent blur-3xl"></div>
                <div
                    className="absolute inset-0"
                    style={{
                        background:
                            'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                    }}
                />
                <div className="relative my-14 mt-16 flex flex-col items-center justify-center gap-6">
                    <Heading size="h1" justify="center">
                        {title.part1}
                        <br />
                        {title.part2}
                    </Heading>
                    <p className="text-center text-base text-muted-foreground sm:w-[466px] md:text-lg md:leading-6">
                        {content}
                    </p>
                    <div className="flex flex-col items-center gap-3 sm:flex-row sm:gap-6">
                        <SuperButton {...getStarted}></SuperButton>
                        <SuperButton {...exploreIcons}></SuperButton>
                        {/* <Button
                            asChild
                            variant="default"
                            size="xl"
                            className="rounded-full hover:shadow-md transform-origin-center hover:rotate-6 hover:scale-110 transition-all px-4">
                            <Link href={getStarted.href || '#'} className="flex flex-row gap-4">
                                <getStarted.Icon size={24} />
                                {getStarted.label}
                            </Link>
                        </Button>
                        <Button
                            asChild
                            colors="secondary"
                            variant="outline"
                            className="rounded-full hover:shadow-md transform-origin-center hover:-rotate-6 hover:scale-110 transition-all px-4"
                            size="xl">
                            <Link href={exploreIcons.href || '#'} className="flex flex-row gap-4">
                                <exploreIcons.Icon size={24} />
                                {exploreIcons.label}
                            </Link>
                        </Button> */}
                    </div>
                </div>
                <HeroRotation />
            </div>
        </section>
    )
}
