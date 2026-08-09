'use client'

import { env } from '@/env'
import Script from 'next/script'

export function Analytics() {
    return (
        <>
            <Script
                defer
                src="/p.js"
                data-host-url={env.NEXT_PUBLIC_UMAMI_URL}
                data-website-id={env.NEXT_PUBLIC_UMAMI_ID}
                data-performance="true"
                strategy="afterInteractive"
            />
            <Script
                defer
                src="/r.js"
                data-host-url={env.NEXT_PUBLIC_UMAMI_URL}
                data-website-id={env.NEXT_PUBLIC_UMAMI_ID}
                data-sample-rate="0.15"
                data-mask-level="moderate"
                data-max-duration="300000"
                strategy="afterInteractive"
            />
        </>
    )
}
