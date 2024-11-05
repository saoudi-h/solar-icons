import { resolve } from 'node:path'
import react from '@vitejs/plugin-react'
import { defineConfig } from 'vite'
import pkg from './package.json'

export default defineConfig({
    plugins: [react({ jsxRuntime: 'classic' })],
    build: {
        minify: true,
        target: 'ES2017',
        lib: {
            entry: resolve(__dirname, 'src/index.ts'),
        },
        rollupOptions: {
            external: Object.keys(pkg.peerDependencies),
            input: './src/index.ts',
            output: [
                {
                    format: 'esm',
                    dir: 'dist/esm',
                    preserveModules: true,
                    preserveModulesRoot: 'src',
                    entryFileNames: '[name].mjs',
                },
                {
                    format: 'cjs',
                    dir: 'dist/cjs',
                    preserveModules: true,
                    preserveModulesRoot: 'src',
                    entryFileNames: '[name].cjs',
                },
            ],
        },
    },
    resolve: {
        alias: {
            '@': '/src',
        },
    },
})
