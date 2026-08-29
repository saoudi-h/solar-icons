import { defineConfig } from 'tsdown/config'

export default defineConfig({
    entry: {
        index: './src/index.ts',
        cli: './src/cli.ts',
    },
    dts: { sourcemap: false },
    platform: 'node',
    format: ['esm'],
    unbundle: true,
    treeshake: true,
    fixedExtension: true,
    minify: true,
    target: 'es2020',
    clean: false,
    publint: false,
    unused: { level: 'error' },
})
