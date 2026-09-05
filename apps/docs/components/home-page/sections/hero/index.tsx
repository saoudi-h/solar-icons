import React from 'react'

import { SITE_HEADER_RESERVED_HEIGHT } from '@/components/ui-blocks/site-header/constants'
import { Heading } from '@/components/ui/heading'
import { NoiseSvg } from '@/components/ui/noise-svg'
import type { SuperButtonProps } from '@/components/ui/SuperButton'
import { SuperButton } from '@/components/ui/SuperButton'

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
    const heroHeightStyle = {
        '--hero-section-mobile-height':
            'calc(100svh - ' + (SITE_HEADER_RESERVED_HEIGHT + 16) + 'px)',
        '--hero-section-desktop-height':
            'calc(100vh - ' + (SITE_HEADER_RESERVED_HEIGHT + 28) + 'px)',
    } as React.CSSProperties

    return (
        <section
            style={heroHeightStyle}
            className={`
              relative flex h-(--hero-section-mobile-height) max-h-[760px] w-full max-w-384 flex-col
              items-center self-center px-3
              md:h-(--hero-section-desktop-height) md:max-h-[900px] md:px-0
            `}>
            <div
                data-hero-section-panel
                className={`
                  relative mb-0 grid size-full min-h-0 grid-rows-[auto_minmax(0,1fr)] gap-6
                  overflow-hidden rounded-2xl bg-accent/30 py-8
                  md:mb-[34px] md:rounded-3xl md:py-12
                `}>
                <NoiseSvg className={`pointer-events-none absolute inset-0 size-full opacity-30`} />
                <div
                    className={`
                      absolute top-0 left-1/3 size-1/2 -translate-1/2 rounded-full bg-linear-to-b
                      from-primary/80 to-transparent blur-3xl
                    `}></div>
                <div
                    className={`
                      absolute top-0 left-2/3 size-1/3 -translate-1/2 rounded-full bg-linear-to-b
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
                    data-hero-section-content
                    className={`
                      relative z-10 flex flex-col items-center gap-6 px-3 pt-8 text-center
                      md:pt-16
                    `}>
                    <Heading size="h1" justify="center" className="w-full max-w-200 text-balance">
                        {title.part1} {title.part2}
                    </Heading>
                    <p
                        className={`
                          w-full max-w-[466px] px-3 text-center text-base text-balance
                          text-muted-foreground
                          sm:px-0
                          md:text-lg/6
                        `}>
                        {content}
                    </p>
                    <div
                        className={`flex flex-col items-center gap-3 min-[360px]:flex-row sm:gap-6`}>
                        <SuperButton
                            {...exploreIcons}
                            whileHover={{ rotate: 0, scale: 1 }}
                            whileTap={{ scale: 0.97 }}
                        />
                        <SuperButton
                            {...getStarted}
                            whileHover={{ rotate: 0, scale: 1 }}
                            whileTap={{ scale: 0.97 }}
                        />
                    </div>
                </div>
                <HeroRotation />
            </div>
        </section>
    )
}
