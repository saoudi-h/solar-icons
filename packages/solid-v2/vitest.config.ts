import path from 'node:path'

import solid from '@solidjs/vite-plugin'
import { defineConfig } from 'vitest/config'

// In the repository the `#internal/*` subpath imports point at the sources. The
// published package maps them to the built DOM, SSR and JSX-source files instead.
const alias = {
    '#internal/icon-base': path.resolve(import.meta.dirname, 'src/lib/IconBase.tsx'),
    '#internal/solar-provider': path.resolve(import.meta.dirname, 'src/lib/SolarProvider.tsx'),
}

export default defineConfig({
    plugins: [solid()],
    resolve: { alias },
    test: {
        // `@solidjs/vite-plugin` picks the client or the server posture of each project
        // from its environment: `jsdom` compiles for the DOM, `node` for the server.
        projects: [
            {
                extends: true,
                test: {
                    name: 'client',
                    environment: 'jsdom',
                    include: ['tests/client/**/*.test.{ts,tsx}'],
                    setupFiles: ['tests/setup/no-warnings.ts'],
                },
            },
            {
                extends: true,
                test: {
                    name: 'server',
                    environment: 'node',
                    include: ['tests/server/**/*.test.{ts,tsx}'],
                    setupFiles: ['tests/setup/no-warnings.ts'],
                },
            },
            {
                // Checks the built `dist` folder and the package metadata: run after `build`.
                extends: true,
                test: {
                    name: 'package',
                    environment: 'node',
                    include: ['tests/package/**/*.test.ts'],
                    testTimeout: 120_000,
                    hookTimeout: 120_000,
                },
            },
        ],
    },
})
