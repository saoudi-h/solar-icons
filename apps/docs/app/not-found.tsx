'use client'
import React from 'react'
import { Heading } from '@/components/ui/heading'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { config } from '@/config'
import { SuperButton, SuperButtonProps } from '@/components/ui/SuperButton'

export interface NotFoundProps {
    title: {
        part1: string
        part2: string
    }
    description: string
    primaryAction: SuperButtonProps
    secondaryAction: SuperButtonProps
}
const notfound = () => {
    const { title, description, primaryAction, secondaryAction } = config.notFound
    return (
        <main className="relative flex min-h-dvh w-full gap-9 bg-background py-4 md:gap-12 md:px-10 md:py-[34px] flex-1 flex-col justify-center text-center">
            <section className="relative flex flex-col items-center px-3 md:px-0 max-w-fd-container self-center w-full">
                <div className="relative gap-2 bg-accent/30 rounded-2xl md:rounded-3xl py-12 w-full overflow-hidden">
                    <NoiseSvg className="absolute inset-0 pointer-events-none size-full opacity-30" />
                    <div className="absolute rounded-full w-2/3 h-2/3 top-0 left-1/2 -translate-x-1/2 -translate-y-1/2 bg-linear-to-b from-destructive/80 to-transparent blur-3xl"></div>
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
                            {description}
                        </p>
                        <div className="flex flex-col items-center gap-3 sm:flex-row sm:gap-6 mt-6">
                            <SuperButton
                                label={primaryAction.label}
                                onClick={() => history.back()}
                                Icon={primaryAction.Icon}></SuperButton>
                            <SuperButton {...secondaryAction}></SuperButton>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    )
}

export default notfound
