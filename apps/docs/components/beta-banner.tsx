'use client'

import { Banner } from 'fumadocs-ui/components/banner'
import { usePathname } from 'next/navigation'

export function V2BetaBanner() {
    const pathname = usePathname()
    if (!pathname.startsWith('/docs/v2')) return null

    return (
        <Banner id="v2-beta" variant="rainbow">
            Solar Icons v2 is in beta. APIs may change before the stable release.{' '}
            <a href="https://github.com/saoudi-h/solar-icons/issues" className="
              underline
            ">
                Report issues
            </a>
        </Banner>
    )
}
