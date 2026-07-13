'use client'

import { env } from '@/env'
import Script from 'next/script'

export function Analytics() {
    return (
        <>
            <Script
                defer
                src={`${env.NEXT_PUBLIC_UMAMI_URL}/loader.js`}
                data-website-id={env.NEXT_PUBLIC_UMAMI_ID}
                data-performance="true"
                strategy="afterInteractive"
            />
            <Script
                defer
                src={`${env.NEXT_PUBLIC_UMAMI_URL}/recorder.js`}
                data-website-id={env.NEXT_PUBLIC_UMAMI_ID}
                data-sample-rate="0.15"
                data-mask-level="moderate"
                data-max-duration="300000"
                strategy="afterInteractive"
            />
        </>
    )
}
