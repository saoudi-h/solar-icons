import { resolve } from 'node:path'
import { defineConfig } from 'vite'
import solid from 'vite-plugin-solid'
import pkg from './package.json'

export default defineConfig({
    plugins: [solid()],
    build: {
        minify: true,
        target: 'ES2017',
        lib: {
            entry: resolve(__dirname, 'src/index.ts'),
        },
        rollupOptions: {
            external: [
                ...Object.keys(pkg.peerDependencies),
                'solid-js/web',
                'solid-js/store',
            ],
            input: {
                index: './src/index.ts',
                category: './src/category.ts',
                'lib/index': './src/lib/index.ts',
            },
            output: [
                {
                    format: 'esm',
                    dir: 'dist/esm',
                    preserveModules: true,
                    preserveModulesRoot: 'src',
                    entryFileNames: '[name].mjs',
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
