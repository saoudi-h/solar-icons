import type { UserConfig } from 'tsdown/config'
import { defineConfig } from 'tsdown/config'

/**
 * Configuration for building the Nuxt module
 */
const config: UserConfig = defineConfig({
    entry: ['./src/nuxt.ts'],
    outDir: './dist',
    dts: { vue: false, sourcemap: false },
    platform: 'node',
    target: 'node16',
    format: ['esm', 'cjs'],
    external: [
        '@nuxt/kit',
        'pathe',
        'fs/promises',
        'fs',
        'path',
        'node:fs',
        'node:path',
        'node:module',
    ],
    minify: true,
    clean: false,
    exports: false,
    onSuccess() {
        console.info('🎯 Nuxt module build succeeded!')
    },
})

export default config
