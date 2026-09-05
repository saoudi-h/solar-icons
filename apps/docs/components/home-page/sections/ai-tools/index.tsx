'use client'

import { ArrowRightIcon } from '@solar-icons/react/linear/arrow-right'
import Link from 'next/link'
import React from 'react'

import { SectionMotion } from '@/components/ui-blocks/animations/SectionMotion'
import { Button } from '@/components/ui/button'
import { Heading } from '@/components/ui/heading'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { cn } from '@/lib/utils'

import { AiToolsCards } from './AiToolsCards'

export const AiToolsSection = () => {
    return (
        <SectionMotion
            id="ai-tools"
            className="w-full max-w-384 self-center px-3 py-12 text-left md:px-0">
            <div
                className={`
                  relative w-full gap-2 overflow-hidden rounded-2xl bg-accent/30 py-12
                  md:rounded-3xl
                `}>
                <NoiseSvg className="pointer-events-none absolute inset-0 size-full opacity-30" />
                <div
                    className={`
                      absolute top-0 left-1/3 size-1/2 -translate-1/2 rounded-full bg-linear-to-b
                      from-teal-950/80 to-transparent blur-3xl
                    `}></div>
                <div
                    className={`
                      absolute top-0 left-2/3 size-1/3 -translate-1/2 rounded-full bg-linear-to-b
                      from-pink-700/50 to-transparent blur-3xl
                    `}></div>
                <div
                    className="absolute inset-0"
                    style={{
                        background:
                            'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                    }}
                />

                <div
                    className={cn(
                        'relative grid gap-10 p-6',
                        'md:grid-cols-12 md:items-center md:gap-14 md:p-12'
                    )}>
                    <div className="flex flex-col items-start gap-5 md:col-span-5">
                        <Heading size="h1" className="max-w-xl text-3xl md:text-5xl">
                            Give your agent
                            <br className="hidden md:inline" />
                            <span className="text-muted-foreground">the right icons.</span>
                        </Heading>
                        <p className="max-w-xl text-sm/relaxed text-muted-foreground md:text-base">
                            Install the package for your framework, then use MCP, Skill, or CLI to
                            find exact names and imports.
                        </p>
                        <Button
                            asChild
                            size="lg"
                            variant="outline"
                            colors="secondary"
                            className="rounded-full">
                            <Link href="/docs/v2/ai-tools">
                                Explore AI tools
                                <ArrowRightIcon />
                            </Link>
                        </Button>
                    </div>

                    <div className="w-full md:col-span-7">
                        <AiToolsCards />
                    </div>
                </div>
            </div>
        </SectionMotion>
    )
}
