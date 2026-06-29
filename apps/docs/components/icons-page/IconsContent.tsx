'use client'
import {
    CategoryRowPlaceholder,
    GridPlaceholder,
} from '@/components/icons-page/sections/icons/GridPlaceholder'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { Skeleton } from '@/components/ui/skeleton'
import dynamic from 'next/dynamic'

const IconShowcase = dynamic(() => import('./sections/icons'), {
    ssr: false,
    loading: () => <Loading />,
})

export function IconsContent() {
    return (
        <main
            className={`
              relative flex min-h-dvh w-full flex-1 flex-col justify-start gap-9
              bg-background p-4 text-center
              md:gap-12 md:px-10 md:py-[34px]
            `}>
            <div
                className={`
                  relative container flex w-full flex-col items-center
                  self-center
                `}>
                <div
                    className={`
                      absolute container mx-4 size-full gap-2 self-center
                      overflow-hidden rounded-2xl bg-default-100 px-3 py-12
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
                          absolute top-0 left-1/3 size-1/2 -translate-1/2
                          rounded-full bg-linear-to-b from-primary/80
                          to-transparent blur-3xl
                        `}></div>
                    <div
                        className={`
                          absolute top-0 left-2/3 size-1/3 -translate-1/2
                          rounded-full bg-linear-to-b from-red-400/50
                          to-transparent blur-3xl
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
                          absolute top-0 left-1/2 size-[300%] -translate-1/2
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
              relative container flex w-full flex-col items-center self-center
              px-3
              md:px-0
            `}>
            <div
                className={`
                  relative w-full gap-2 rounded-2xl
                  md:rounded-3xl
                `}>
                <div className="relative flex flex-col gap-4 rounded-xl p-4">
                    {/* Top bar — mirrors the FilterBar layout: style, size,
                        stroke, two color pickers, view-mode, search (pushed
                        right), reset. Widths match the real components. */}
                    <div
                        className={`
                          z-20 flex w-full flex-wrap items-center gap-2
                          rounded-xl border border-border bg-default-100 p-2
                          shadow-xs
                        `}>
                        <Skeleton className="
                          h-10 w-[220px] rounded-lg bg-default-200
                        " />
                        <Skeleton className="
                          h-10 w-36 rounded-lg bg-default-200
                        " />
                        <Skeleton className="
                          h-10 w-36 rounded-lg bg-default-200
                        " />
                        <Skeleton className="
                          h-10 w-32 rounded-lg bg-default-200
                        " />
                        <Skeleton className="
                          h-10 w-32 rounded-lg bg-default-200
                        " />
                        <Skeleton className="
                          h-10 w-28 rounded-lg bg-default-200
                        " />
                        <Skeleton
                            className="
                              ml-auto h-10 w-72 rounded-lg bg-default-200
                            "
                        />
                        <Skeleton className="size-10 rounded-lg bg-default-200" />
                    </div>

                    {/* Sidebar + grid — same flex layout as the real page. */}
                    <div className="flex flex-1 gap-4">
                        <div
                            className="
                              sticky top-4 hidden w-50 shrink-0 self-start pr-1
                              md:block
                            ">
                            <div className="flex flex-col gap-0.5">
                                {Array(37)
                                    .fill(0)
                                    .map((_, i) => (
                                        <CategoryRowPlaceholder key={i} />
                                    ))}
                            </div>
                        </div>
                        <div
                            className={`
                              grid min-w-0 flex-1 grid-cols-2 gap-2
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
            </div>
        </section>
    )
}
