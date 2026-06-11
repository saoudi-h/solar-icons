'use client'

import Script from 'next/script'

export function Analytics() {
    const websiteId = process.env.NEXT_PUBLIC_UMAMI_WEBSITE_ID
    if (!websiteId) return null

    return (
        <Script
            defer
            src="/assets/js/system.js"
            data-website-id={websiteId}
            data-host-url="/assets/js"
            data-performance="true"
            strategy="afterInteractive"
        />
    )
}
