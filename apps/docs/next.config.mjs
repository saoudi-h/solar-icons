import { createMDX } from 'fumadocs-mdx/next'

const withMDX = createMDX()

/** @type {import('next').NextConfig} */
const config = {
    experimental: {
        reactCompiler: true
    },
    reactStrictMode: true,
}

export default withMDX(config)
