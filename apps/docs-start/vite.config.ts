import path from 'node:path'
import { fileURLToPath } from 'node:url'

import tailwindcss from '@tailwindcss/vite'
import { tanstackStart } from '@tanstack/react-start/plugin/vite'
import viteReact from '@vitejs/plugin-react'
import { fumadocsMdx } from 'fumadocs-mdx/vite'
import { defineConfig } from 'vite'

import { collectDocsPaths } from './scripts/docs-paths'

const appRoot = fileURLToPath(new URL('.', import.meta.url))
const srcDir = path.join(appRoot, 'src')
const nextAppDir = path.resolve(appRoot, '../docs')

const docsPaths = collectDocsPaths()

const staticPages = [
    { path: '/404', prerender: { enabled: true, outputPath: '/404.html' } },
    { path: '/docs/v2', prerender: { enabled: true } },
    { path: '/docs/v1', prerender: { enabled: true } },
    { path: '/llms-txt', prerender: { enabled: true, outputPath: '/llms.txt' } },
    { path: '/llms-full-txt', prerender: { enabled: true, outputPath: '/llms-full.txt' } },
    { path: '/sitemap-xml', prerender: { enabled: true, outputPath: '/sitemap.xml' } },
    { path: '/blog-rss-xml', prerender: { enabled: true, outputPath: '/blog/rss.xml' } },
    { path: '/api-search', prerender: { enabled: true, outputPath: '/api/search' } },
    ...docsPaths.map(docsPath => ({
        path: `/llms-page/docs/${docsPath}`,
        prerender: { enabled: true, outputPath: `/docs/${docsPath}.mdx` },
    })),
]

export default defineConfig({
    server: {
        port: 3001,
    },
    resolve: {
        tsconfigPaths: true,
        alias: [
            // The content and the original site components share the Next
            // app's `@/` imports. Start's own files use `~/`.
            { find: /^@\//, replacement: `${nextAppDir}/` },
            {
                find: 'next/navigation',
                replacement: path.join(srcDir, 'compat/next-navigation.ts'),
            },
            { find: 'next/link', replacement: path.join(srcDir, 'compat/next-link.tsx') },
            { find: 'next/image', replacement: path.join(srcDir, 'compat/next-image.tsx') },
            { find: 'nuqs', replacement: path.join(srcDir, 'compat/nuqs.ts') },
        ],
    },
    plugins: [
        tailwindcss(),
        fumadocsMdx(),
        tanstackStart({
            prerender: {
                enabled: true,
                crawlLinks: true,
                autoSubfolderIndex: false,
                failOnError: true,
                // Anchors and query strings do not change the static output.
                filter: ({ path }) => !/[#?]|%23|%3F/i.test(path),
                onSuccess: ({ page }) => {
                    console.log(`Prerendered ${page.path}`)
                },
            },
            pages: staticPages,
        }),
        viteReact(),
    ],
})
