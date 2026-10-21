'use client'

import { Banner } from 'fumadocs-ui/components/banner'
import { usePathname } from 'next/navigation'

import { Link } from '@/components/ui/link'

export function V1Banner() {
    const pathname = usePathname()
    if (!pathname.startsWith('/docs/v1')) return null

    return (
        <Banner id="v1-legacy" variant="rainbow">
            You are viewing the v1 documentation. Solar Icons v2 is now stable and brings CSS
            variables, built-in duotone, and one package per framework.{' '}
            <Link href="/docs/v2" className="underline">
                Explore v2
            </Link>
        </Banner>
    )
}
