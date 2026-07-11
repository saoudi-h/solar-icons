'use client'

import { RocketIcon } from '@solar-icons/react/dynamic/rocket'
import Link from 'next/link'

export function V2BetaHeaderWidget() {
    return (
        <Link
            href="/docs/v2"
            className="
              hidden items-center gap-1.5 rounded-full border border-fd-border
              bg-fd-card px-3 py-1 text-xs font-medium text-fd-foreground
              transition-colors
              hover:border-fd-ring hover:bg-fd-accent
              hover:text-fd-accent-foreground
              lg:inline-flex
            ">
            <RocketIcon weight="BoldDuotone" className="size-3.5" />
            v2 is in beta
        </Link>
    )
}
