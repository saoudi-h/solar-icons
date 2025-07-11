'use client'
import { Heading } from '@/components/ui/heading'
import { NoiseSvg } from '@/components/ui/noise-svg'
import type { SuperButtonProps } from '@/components/ui/SuperButton'
import { SuperButton } from '@/components/ui/SuperButton'
import { config } from '@/config'

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
        <main
            className={`
              relative flex min-h-dvh w-full flex-1 flex-col justify-center
              gap-9 bg-background py-4 text-center
              md:gap-12 md:px-10 md:py-[34px]
            `}>
            <section
                className={`
                  relative flex w-full max-w-fd-container flex-col items-center
                  self-center px-3
                  md:px-0
                `}>
                <div
                    className={`
                      relative w-full gap-2 overflow-hidden rounded-2xl
                      bg-accent/30 py-12
                      md:rounded-3xl
                    `}>
                    <NoiseSvg
                        className={`
                          pointer-events-none absolute inset-0 size-full
                          opacity-30
                        `}
                    />
                    <div
                        className={`
                          absolute top-0 left-1/2 h-2/3 w-2/3 -translate-x-1/2
                          -translate-y-1/2 rounded-full bg-linear-to-b
                          from-destructive/80 to-transparent blur-3xl
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
                            {description}
                        </p>
                        <div
                            className={`
                              mt-6 flex flex-col items-center gap-3
                              sm:flex-row sm:gap-6
                            `}>
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
