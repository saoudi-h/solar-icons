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
    images: {
        remotePatterns: [
            {
                protocol: 'https',
                hostname: 'github.com',
                pathname: '/saoudi-h.png',
            },
        ],
    },
    typescript: {
        ignoreBuildErrors: true,
    },
    serverExternalPackages: ['ts-morph', 'typescript', 'oxc-transform', 'twoslash', 'shiki'],
    async rewrites() {
        return [
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
                has: [{ type: 'host', value: 'solar-icons.vercel.app' }],
                destination: 'https://solar-icons.dev/docs/v2',
                permanent: true,
            },
            {
                source: '/:path*',
                has: [{ type: 'host', value: 'solar-icons.vercel.app' }],
                destination: 'https://solar-icons.dev/:path*',
                permanent: true,
            },
            {
                source: '/docs',
                destination: '/docs/v2',
                permanent: false,
            },
        ]
    },
}

export default withAnalyzer(withMDX(config))
