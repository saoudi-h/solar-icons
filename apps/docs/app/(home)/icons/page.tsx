'use client'
import { GridPlaceholder } from '@/components/icons-page/sections/icons/GridPlaceholder'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { Skeleton } from '@/components/ui/skeleton'
import dynamic from 'next/dynamic'

const IconShowcase = dynamic(() => import('../../../components/icons-page/sections/icons'), {
    ssr: false,
    loading: () => <Loading />,
})
export default function IconsPage() {
    return (
        <main
            className={`
              relative flex min-h-dvh w-full flex-1 flex-col justify-start gap-9
              bg-background px-4 py-4 text-center
              md:gap-12 md:px-10 md:py-[34px]
            `}>
            <div
                className={`
                  relative flex w-full container flex-col items-center
                  self-center
                `}>
                <div
                    className={`
                      absolute mx-4 h-full w-full container gap-2
                      self-center overflow-hidden rounded-2xl bg-default-100
                      px-3 py-12
                      md:rounded-3xl md:px-4
                    `}>
                    <NoiseSvg
                        className={`
                          pointer-events-none absolute inset-0 size-full
                          opacity-30
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
                          from-red-400/50 to-transparent blur-3xl
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
                          absolute top-0 left-1/2 size-[300%] -translate-x-1/2
                          -translate-y-1/2
                        `}
                        style={{
                            background:
                                'radial-gradient(circle at 50% 0%, transparent 0%, hsl(var(--background)/0.3) 50%, hsl(var(--background)/0.3) 100%)',
                        }}
                    />
                </div>
                <IconShowcase />
            </div>
        </main>
    )
}

function Loading() {
    return (
        <section
            className={`
              relative flex w-full container flex-col items-center
              self-center px-3
              md:px-0
            `}>
            <div
                className={`
              relative w-full gap-2 rounded-2xl
              md:rounded-3xl
            `}>
                <div className="relative flex flex-col gap-4 rounded-xl p-4">
                    <div
                        className={`
                          z-20 flex w-full flex-wrap justify-between gap-2
                          rounded-xl border border-border bg-default-100 p-2
                          shadow-xs
                        `}>
                        <div
                            className={`
                          flex flex-1 flex-wrap content-start justify-start
                          gap-2
                        `}>
                            {/* Style selector */}
                            <Skeleton
                                className={`
                              h-10 w-48 rounded-lg bg-default-200
                            `}
                            />

                            {/* Size Slider */}
                            <Skeleton
                                className={`
                              h-10 w-48 rounded-lg bg-default-200
                            `}
                            />

                            {/* Color picker */}
                            <Skeleton
                                className={`
                              h-10 w-48 rounded-lg bg-default-200
                            `}
                            />

                            {/* Search bar */}
                            <Skeleton
                                className={`
                              h-10 w-48 rounded-lg bg-default-200
                            `}
                            />

                            {/* Reset button */}
                            <Skeleton
                                className={`
                              size-10 rounded-lg bg-default-200
                            `}
                            />
                            {/* Reset button */}
                            <Skeleton
                                className={`
                              h-10 w-16 rounded-lg bg-default-200
                            `}
                            />

                            {/* Reset button */}
                            <Skeleton
                                className={`
                                  flex h-10 w-12 flex-row items-center
                                  justify-center gap-1 rounded-lg border-none!
                                  bg-default-100 p-1
                                `}></Skeleton>
                        </div>
                        {/* alternative to react Select */}
                        <Skeleton
                            className={`
                              size-10 w-full max-w-48 rounded-lg bg-default-200
                              md:max-w-64
                              lg:max-w-72
                            `}
                        />
                    </div>
                    <div
                        className={`
                          grid grid-cols-2 gap-2 rounded-xl p-4
                          text-muted-foreground
                          sm:grid-cols-3
                          md:grid-cols-4
                          lg:grid-cols-5
                          xl:grid-cols-7
                        `}>
                        <GridPlaceholder />
                    </div>
                </div>
            </div>
        </section>
    )
}
