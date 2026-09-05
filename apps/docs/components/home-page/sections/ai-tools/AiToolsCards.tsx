'use client'

import { Icon } from '@iconify/react'
import { ArrowRightUpIcon } from '@solar-icons/react/dynamic/arrow-right-up'
import Link from 'next/link'
import React from 'react'

const tools = [
    {
        name: 'MCP',
        packageName: '@solar-icons/mcp',
        description: 'Direct catalog access for Cursor, Claude, and coding agents.',
        icon: 'bxl:mcp',
        href: '/docs/v2/ai-tools#mcp',
    },
    {
        name: 'Skill',
        packageName: 'solar-icons',
        description: 'Framework-aware import rules and accurate icon matching.',
        icon: 'material-symbols:code',
        href: '/docs/v2/ai-tools#skills',
    },
    {
        name: 'CLI',
        packageName: '@solar-icons/cli',
        description: 'Instant terminal search and framework snippet generation.',
        icon: 'catppuccin:powershell',
        href: '/docs/v2/ai-tools#cli',
    },
] as const

export const AiToolsCards = () => {
    return (
        <div className="flex flex-col justify-center gap-7 md:pl-6">
            {tools.map(tool => (
                <Link
                    key={tool.name}
                    href={tool.href}
                    className="group flex items-start gap-4 transition-all duration-150">
                    <div className="
                      mt-0.5 flex size-11 shrink-0 items-center justify-center rounded-xl
                      bg-foreground/5 text-foreground transition-colors
                      group-hover:bg-foreground/10
                    ">
                        <Icon icon={tool.icon} className="size-5" aria-hidden="true" />
                    </div>

                    <div className="min-w-0 flex-1 text-left">
                        <div className="flex items-baseline gap-2.5">
                            <span className="
                              font-heading text-base font-bold text-foreground transition-colors
                              group-hover:text-primary
                            ">
                                {tool.name}
                            </span>
                            <span className="font-mono text-xs text-muted-foreground">
                                {tool.packageName}
                            </span>
                        </div>
                        <p className="mt-1 text-sm/relaxed text-muted-foreground">
                            {tool.description}
                        </p>
                    </div>

                    <ArrowRightUpIcon
                        size={16}
                        weight="Linear"
                        className="
                          mt-1 shrink-0 text-muted-foreground/40 opacity-0 transition-all
                          duration-150
                          group-hover:translate-x-0.5 group-hover:-translate-y-0.5
                          group-hover:text-foreground group-hover:opacity-100
                        "
                    />
                </Link>
            ))}
        </div>
    )
}
