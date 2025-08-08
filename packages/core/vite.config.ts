import { resolve } from 'node:path'
import { defineConfig } from 'vite'
import { viteStaticCopy } from 'vite-plugin-static-copy'
import pkg from './package.json'

export default defineConfig({
    plugins: [
        viteStaticCopy({
            targets: [
                {
                    src: 'src/metadata.json',
                    dest: '.',
                },
                {
                    src: 'src/metadata-descriptions.json',
                    dest: '.',
                },
            ],
        }),
    ],
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
    esbuild: {
        jsx: 'preserve',
    },
})
