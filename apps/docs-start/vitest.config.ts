import { fileURLToPath } from 'node:url'

import { defineConfig } from 'vitest/config'

export default defineConfig({
    resolve: { alias: { '~': fileURLToPath(new URL('./src', import.meta.url)) } },
    test: {
        globals: true,
        include: ['worker/**/*.test.ts', 'src/components/icons-page/**/*.test.ts'],
    },
})
