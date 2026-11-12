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
    // Browser tests exercise a fresh dev optimizer without touching the running app's cache.
    cacheDir: process.env.PLAYWRIGHT_DEV === '1' ? 'node_modules/.vite-playwright' : undefined,
    server: {
        port: 3001,
    },
    build: {
        rolldownOptions: {
            output: {
                codeSplitting: {
                    groups: [
                        {
                            // Group the small shared shell modules while leaving docs,
                            // search and code rendering free to load independently.
                            name: 'fumadocs-runtime',
                            test: /node_modules[\\/](?:fumadocs-ui|@fumadocs[\\/]base-ui)[\\/]dist[\\/](?:provider|contexts|utils|layouts[\\/](?:home|shared))[\\/]|node_modules[\\/]fumadocs-core[\\/]dist[\\/](?:framework|utils)[\\/]/,
                            priority: 10,
                        },
                    ],
                },
            },
        },
    },
    resolve: {
        tsconfigPaths: true,
        // The Next app and this app depend on the same Fumadocs packages, but
        // pnpm installs them twice because their optional peers differ. Two
        // copies mean two React contexts: the shared components would not see
        // the provider of this app, and every link would fall back to a plain
        // anchor with a full page load.
        dedupe: ['fumadocs-core', 'fumadocs-ui', 'fumadocs-mdx', 'react', 'react-dom'],
        alias: [
            { find: /^~generated\//, replacement: path.join(appRoot, 'generated/') },
            // MDX content imports components through `~/` as well.
            { find: /^~\//, replacement: `${srcDir}/` },
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
