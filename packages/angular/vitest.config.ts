import angular from '@analogjs/vite-plugin-angular'
import { resolve } from 'path'
import { defineConfig } from 'vitest/config'

export default defineConfig({
    plugins: [angular({ tsconfig: resolve(__dirname, 'tsconfig.spec.json') })],
    test: {
        globals: true,
        environment: 'jsdom',
        setupFiles: ['./src/test-setup.ts'],
        include: ['src/**/*.spec.ts'],
        coverage: {
            provider: 'v8',
            reporter: ['text', 'json', 'html'],
            include: ['src/lib/**/*.ts'],
            exclude: ['src/lib/**/*.spec.ts', 'src/icons/**'],
        },
    },
})
