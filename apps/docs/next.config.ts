import { createMDX } from 'fumadocs-mdx/next'
import type { NextConfig } from 'next'

const withMDX = createMDX()

const config: NextConfig = {
    reactCompiler: true,
    reactStrictMode: true,
    typescript: {
        ignoreBuildErrors: true,
    },
}

export default withMDX(config)
