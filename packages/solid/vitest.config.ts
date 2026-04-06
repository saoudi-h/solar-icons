import { defineConfig } from 'vitest/config'
import solid from 'vite-plugin-solid'

export default defineConfig({
    plugins: [solid({ hot: false })],
    test: {
        globals: true,
        environment: 'jsdom',
        coverage: {
            provider: 'v8',
            reporter: ['text', 'json', 'html'],
            exclude: ['node_modules/', '**/*.d.ts', '**/*.test.ts', '**/*.test.tsx', '**/__tests__/**'],
        },
    },
})
