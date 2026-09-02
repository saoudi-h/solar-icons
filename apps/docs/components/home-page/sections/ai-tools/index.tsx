'use client'

import { Icon } from '@iconify/react'
import { ArrowRightIcon } from '@solar-icons/react/linear/arrow-right'
import Link from 'next/link'
import React from 'react'

import { SectionMotion } from '@/components/ui-blocks/animations/SectionMotion'
import { Button } from '@/components/ui/button'
import { Heading } from '@/components/ui/heading'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { cn } from '@/lib/utils'

const aiTools = [
    {
        name: 'MCP',
        packageName: '@solar-icons/mcp',
        role: 'Catalog access',
        icon: 'bxl:mcp',
    },
    {
        name: 'Skill',
        packageName: 'solar-icons',
        role: 'Agent guidance',
        icon: 'material-symbols:code',
    },
    {
        name: 'CLI',
        packageName: '@solar-icons/cli',
        role: 'Local search',
        icon: 'catppuccin:powershell',
    },
] as const

export const AiToolsSection = () => {
    return (
        <SectionMotion id="ai-tools" className="container self-center px-3 py-12 text-left md:px-0">
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
                            Give your agent the right icons.
                        </Heading>
                        <p className="max-w-xl text-sm/relaxed text-muted-foreground md:text-base">
                            Install the package for your framework, then use MCP, Skill, or CLI to
                            find exact names and imports.
                        </p>
                        <Button asChild size="lg" className="rounded-full">
                            <Link href="/docs/v2/ai-tools">
                                Explore AI tools
                                <ArrowRightIcon />
                            </Link>
                        </Button>
                    </div>

                    <div
                        className={cn(
                            'relative rounded-2xl border p-4 md:col-span-7 md:p-6',
                            'border-border/60 bg-background/35'
                        )}>
                        <div
                            className={cn(
                                'absolute inset-y-8 left-9 w-px bg-linear-to-b from-primary/80',
                                'via-pink-500/60 to-teal-500/70 md:left-11'
                            )}
                        />
                        <div className="relative flex flex-col">
                            {aiTools.map(tool => (
                                <div
                                    key={tool.name}
                                    className={cn(
                                        'flex items-center gap-4 border-b border-border/50 py-4',
                                        'first:pt-0 last:border-0 last:pb-0'
                                    )}>
                                    <div
                                        className={cn(
                                            'relative flex size-10 shrink-0 items-center',
                                            'justify-center rounded-xl',
                                            'border border-border/70 bg-background text-foreground'
                                        )}>
                                        <Icon
                                            icon={tool.icon}
                                            aria-hidden="true"
                                            className="size-5"
                                        />
                                    </div>
                                    <div className="min-w-0 flex-1">
                                        <div
                                            className={cn(
                                                'flex flex-wrap items-baseline',
                                                'gap-x-2 gap-y-1'
                                            )}>
                                            <p className="font-semibold text-foreground">
                                                {tool.name}
                                            </p>
                                            <code
                                                className={cn(
                                                    'font-mono text-[11px]',
                                                    'text-muted-foreground'
                                                )}>
                                                {tool.packageName}
                                            </code>
                                        </div>
                                        <p className="mt-1 text-xs text-muted-foreground">
                                            {tool.role}
                                        </p>
                                    </div>
                                </div>
                            ))}
                        </div>
                    </div>
                </div>
            </div>
        </SectionMotion>
    )
}
