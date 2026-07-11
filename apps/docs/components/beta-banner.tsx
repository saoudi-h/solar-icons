'use client'

import { Banner } from 'fumadocs-ui/components/banner'
import Link from 'next/link'
import { usePathname } from 'next/navigation'

export function V2BetaBanner() {
    const pathname = usePathname()
    if (!pathname.startsWith('/docs/v2')) return null

    return (
        <Banner id="v2-beta" variant="rainbow">
            Solar Icons v2 is in beta. APIs may change before the stable release.{' '}
            <a
                href="https://github.com/saoudi-h/solar-icons/issues"
                className="underline">
                Report issues
            </a>
        </Banner>
    )
}

export function V1Banner() {
    const pathname = usePathname()
    if (!pathname.startsWith('/docs/v1')) return null

    return (
        <Banner id="v1-stable" variant="rainbow">
            Still on v1? Solar Icons v2 (beta) brings CSS variables, built-in duotone, and one
            package per framework.{' '}
            <Link href="/docs/v2" className="underline">
                Explore v2
            </Link>
        </Banner>
    )
}
