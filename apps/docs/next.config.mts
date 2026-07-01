import createBundleAnalyzer from '@next/bundle-analyzer'
import { createMDX } from 'fumadocs-mdx/next'
import type { NextConfig } from 'next'

const withAnalyzer = createBundleAnalyzer({
    enabled: process.env.ANALYZE === 'true',
})

const withMDX = createMDX()

const config: NextConfig = {
    reactCompiler: true,
    reactStrictMode: true,
    typescript: {
        ignoreBuildErrors: true,
    },
    serverExternalPackages: [
        'ts-morph',
        'typescript',
        'oxc-transform',
        'twoslash',
        'shiki',
    ],
    async rewrites() {
        return [
            {
                source: '/assets/js/system.js',
                destination: 'https://cloud.umami.is/script.js',
            },
            {
                source: '/assets/js/api/send',
                destination: 'https://cloud.umami.is/api/send',
            },
            {
                source: '/docs/:path*.mdx',
                destination: '/llms.mdx/docs/:path*',
            },
        ]
    },
    async redirects() {
        return [
            {
                source: '/docs',
                destination: '/docs/legacy',
                permanent: false,
            },
        ]
    },
}

export default withAnalyzer(withMDX(config))
