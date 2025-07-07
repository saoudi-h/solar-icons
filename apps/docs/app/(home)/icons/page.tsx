'use client'
import { GridPlaceholder } from '@/components/icons-page/sections/icons/GridPlaceholder'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { Skeleton } from '@/components/ui/skeleton'
import dynamic from 'next/dynamic'
import React from 'react'

const IconShowcase = dynamic(() => import('../../../components/icons-page/sections/icons'), {
    ssr: false,
    loading: () => <Loading />,
})
export default function IconsPage() {
    return (
        <main className="relative flex min-h-dvh w-full gap-9 bg-background py-4 md:gap-12 px-4 md:px-10 md:py-[34px] flex-1 flex-col justify-start text-center">
            <div className="relative flex flex-col items-center max-w-fd-container self-center w-full">
                <div className="absolute gap-2 bg-default-100 rounded-2xl md:rounded-3xl py-12 w-full max-w-fd-container self-center overflow-hidden px-3 md:px-4 mx-4 h-full">
                    <NoiseSvg className="absolute size-full inset-0 pointer-events-none opacity-30" />
                    <div className="absolute rounded-full w-1/2 h-1/2 top-0 left-1/3 -translate-x-1/2 -translate-y-1/2 bg-linear-to-b from-primary/80 to-transparent blur-3xl"></div>
                    <div className="absolute rounded-full w-1/3 h-1/3 top-0 left-2/3 -translate-x-1/2 -translate-y-1/2 bg-linear-to-b from-red-400/50 to-transparent blur-3xl"></div>
                    <div
                        className="absolute inset-0"
                        style={{
                            background:
                                'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                        }}
                    />
                    <div
                        className="absolute top-0 size-[300%] left-1/2 -translate-x-1/2 -translate-y-1/2"
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
        <section className="relative flex flex-col items-center px-3 md:px-0 max-w-fd-container self-center w-full">
            <div className="relative gap-2 rounded-2xl md:rounded-3xl w-full">
                <div className="relative flex flex-col gap-4 p-4 rounded-xl">
                    <div className="bg-default-300/50 rounded-xl flex flex-wrap justify-between gap-2 p-2 w-full shadow-xs z-20">
                        <div className="flex content-start justify-start flex-wrap flex-1 gap-2">
                            {/* Style selector */}
                            <Skeleton className="w-48 h-10 rounded-lg bg-default-100" />

                            {/* Size Slider */}
                            <Skeleton className="w-48 h-10 rounded-lg bg-default-100" />

                            {/* Color picker */}
                            <Skeleton className="w-48 h-10 rounded-lg bg-default-100" />

                            {/* Search bar */}
                            <Skeleton className="w-48 h-10 rounded-lg bg-default-100" />

                            {/* Reset button */}
                            <Skeleton className="size-10 rounded-lg bg-default-100" />

                            {/* Reset button */}
                            <Skeleton className="h-10 w-12 rounded-lg border-none! bg-default-100  flex flex-row gap-1 items-center justify-center p-1"></Skeleton>
                        </div>
                        {/* alternative to react Select */}
                        <Skeleton className="size-10 max-w-48 md:max-w-64 lg:max-w-72 w-full rounded-lg bg-default-100" />
                    </div>
                    <div className="text-muted-foreground rounded-xl p-4 grid grid-cols-3 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-8 gap-2">
                        <GridPlaceholder />
                    </div>
                </div>
            </div>
        </section>
    )
}
