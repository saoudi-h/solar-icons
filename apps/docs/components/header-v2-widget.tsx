'use client'

import { RocketIcon } from '@solar-icons/react/dynamic/rocket'
import Link from 'next/link'

export function V2BetaHeaderWidget() {
    return (
        <Link
            href="/docs/v2"
            className="
              hidden items-center gap-1.5 rounded-full bg-fd-primary px-3 py-1
              text-xs font-semibold text-fd-primary-foreground shadow-sm
              transition-colors
              hover:bg-fd-primary/90
              lg:inline-flex
            ">
            <RocketIcon weight="BoldDuotone" className="size-3.5" />
            v2 is in beta
        </Link>
    )
}
