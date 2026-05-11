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
        '@takumi-rs/image-response',
    ],
    async rewrites() {
        return [
            {
                source: '/docs/:path*.mdx',
                destination: '/llms.mdx/docs/:path*',
            },
        ]
    },
}

export default withAnalyzer(withMDX(config))
