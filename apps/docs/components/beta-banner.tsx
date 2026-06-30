'use client'

import { Banner } from 'fumadocs-ui/components/banner'
import { usePathname } from 'next/navigation'

export function V3BetaBanner() {
    const pathname = usePathname()
    if (!pathname.startsWith('/docs/v3')) return null

    return (
        <Banner id="v3-beta" variant="rainbow">
            Solar Icons v3 is in beta. APIs may change before the stable release.{' '}
            <a href="https://github.com/saoudi-h/solar-icons/issues" className="
              underline
            ">
                Report issues
            </a>
        </Banner>
    )
}
