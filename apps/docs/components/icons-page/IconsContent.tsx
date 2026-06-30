'use client'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { IconShowcase } from './sections/icons'

export function IconsContent() {
    return (
        // h-dvh + overflow-hidden pins the page to exactly the
        // viewport — no page-level scroll. The two scrollable
        // frames (categories sidebar + icon grid) handle their
        // own scrolling inside this fixed box. Below the fold is
        // empty padding only, never content.
        <main
            className="
              relative flex w-full flex-1 flex-col justify-start gap-9
              overflow-hidden bg-background p-4 text-center
              md:gap-12 md:px-10 md:py-[34px]
            ">
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
