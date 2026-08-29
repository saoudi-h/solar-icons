import { resolve } from 'node:path'

import tailwindcss from '@tailwindcss/vite'
import { defineConfig } from 'vite'

const STATIC_DIST = resolve(__dirname, '../../packages/static/dist')

export default defineConfig({
    plugins: [tailwindcss()],
    server: {
        port: 4000,
        fs: {
            allow: ['.', STATIC_DIST],
        },
    },
    build: {
        target: 'esnext',
    },
})
