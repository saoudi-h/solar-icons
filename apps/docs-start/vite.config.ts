import { defineConfig } from 'vite'
import { tanstackStart } from '@tanstack/react-start/plugin/vite'
import viteReact from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
    server: {
        port: 3001,
    },
    resolve: {
        tsconfigPaths: true,
    },
    plugins: [
        tailwindcss(),
        tanstackStart({
            prerender: {
                enabled: true,
                crawlLinks: true,
                autoSubfolderIndex: false,
                failOnError: true,
                onSuccess: ({ page }) => {
                    console.log(`Prerendered ${page.path}`)
                },
            },
            pages: [
                {
                    path: '/404',
                    prerender: { enabled: true, outputPath: '/404.html' },
                },
            ],
        }),
        viteReact(),
    ],
})
