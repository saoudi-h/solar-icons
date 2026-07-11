import { createEnv } from '@t3-oss/env-nextjs'
import { z } from 'zod'

export const env = createEnv({
    skipValidation: process.env.CI === 'true' || !!process.env.SKIP_ENV_VALIDATION,
    client: {
        // Next.js
        NEXT_PUBLIC_SITE_URL: z.string().min(1),

        // Umami
        NEXT_PUBLIC_UMAMI_ID: z.string().min(1),
        NEXT_PUBLIC_UMAMI_URL: z.string().min(1),
    },
    server: {
        // Node.js
        NODE_ENV: z.enum(['development', 'production', 'test']),

        // GitHub
        GITHUB_APP_ID: z.string().min(1),
        GITHUB_APP_PRIVATE_KEY: z.string().min(1),
    },
    runtimeEnv: {
        // Next.js
        NEXT_PUBLIC_SITE_URL: process.env.NEXT_PUBLIC_SITE_URL,
        // Node.js
        NODE_ENV: process.env.NODE_ENV,

        // GitHub
        GITHUB_APP_ID: process.env.GITHUB_APP_ID,
        GITHUB_APP_PRIVATE_KEY: process.env.GITHUB_APP_PRIVATE_KEY,

        // Umami
        NEXT_PUBLIC_UMAMI_ID: process.env.NEXT_PUBLIC_UMAMI_ID,
        NEXT_PUBLIC_UMAMI_URL: process.env.NEXT_PUBLIC_UMAMI_URL,
    },
})
