import { IconShowcase } from '@/components/icons-page/sections/icons'
import { NoiseSvg } from '@/components/ui/noise-svg'
import React from 'react'

export default function IconsPage() {
    return (
        <main className="relative flex min-h-dvh w-full gap-9 bg-background py-4 md:gap-12 md:px-10 md:py-[34px] flex-1 flex-col justify-start text-center rounded-2xl">
            <div className="absolute gap-2 bg-accent/30 rounded-2xl md:rounded-3xl py-12 w-full max-w-fd-container self-center overflow-hidden px-3 md:px-0 h-1/2">
                <NoiseSvg className="absolute inset-0 pointer-events-none size-full bg-background/30 opacity-20" />
                <div className="absolute rounded-full w-1/2 h-1/2 top-0 left-1/3 -translate-x-1/2 -translate-y-1/2 bg-gradient-to-b from-primary/80 to-transparent blur-3xl"></div>
                <div className="absolute rounded-full w-1/3 h-1/3 top-0 left-2/3 -translate-x-1/2 -translate-y-1/2 bg-gradient-to-b from-warning/50 to-transparent blur-3xl"></div>
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
                            'radial-gradient(circle at 50% 0%, transparent 0%, hsla(var(--background)) 50%, hsla(var(--background)) 100%)',
                    }}
                />
            </div>
            <IconShowcase />
        </main>
    )
}
