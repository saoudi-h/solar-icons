import { Heading } from '@/components/ui/heading'
import { NoiseSvg } from '@/components/ui/noise-svg'
import type { SuperButtonProps } from '@/components/ui/SuperButton'
import { SuperButton } from '@/components/ui/SuperButton'
import React from 'react'
import { HeroRotation } from './HeroRotation'

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
        <section
            className={`
              relative flex w-full max-w-fd-container flex-col items-center
              self-center px-3
              md:px-0
            `}>
            <div
                className={`
                  relative w-full gap-2 overflow-hidden rounded-2xl bg-accent/30
                  py-12
                  md:rounded-3xl
                `}>
                <NoiseSvg
                    className={`
                  pointer-events-none absolute inset-0 size-full opacity-30
                `}
                />
                <div
                    className={`
                      absolute top-0 left-1/3 h-1/2 w-1/2 -translate-x-1/2
                      -translate-y-1/2 rounded-full bg-linear-to-b
                      from-primary/80 to-transparent blur-3xl
                    `}></div>
                <div
                    className={`
                      absolute top-0 left-2/3 h-1/3 w-1/3 -translate-x-1/2
                      -translate-y-1/2 rounded-full bg-linear-to-b
                      from-warning/50 to-transparent blur-3xl
                    `}></div>
                <div
                    className="absolute inset-0"
                    style={{
                        background:
                            'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                    }}
                />
                <div
                    className={`
                      relative my-14 mt-16 flex flex-col items-center
                      justify-center gap-6
                    `}>
                    <Heading size="h1" justify="center">
                        {title.part1}
                        <br />
                        {title.part2}
                    </Heading>
                    <p
                        className={`
                          text-center text-base text-muted-foreground
                          sm:w-[466px]
                          md:text-lg md:leading-6
                        `}>
                        {content}
                    </p>
                    <div
                        className={`
                      flex flex-col items-center gap-3
                      sm:flex-row sm:gap-6
                    `}>
                        <SuperButton {...getStarted}></SuperButton>
                        <SuperButton {...exploreIcons}></SuperButton>
                    </div>
                </div>
                <HeroRotation />
            </div>
        </section>
    )
}
