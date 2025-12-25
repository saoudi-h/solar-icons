import { createMDX } from 'fumadocs-mdx/next'

const withMDX = createMDX()

/** @type {import('next').NextConfig} */
const config = {
    reactCompiler: true,
    reactStrictMode: true,
    typescript: {
        ignoreBuildErrors: true,
    },
}

export default withMDX(config)
