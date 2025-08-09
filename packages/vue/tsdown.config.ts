import type { UserConfig } from 'tsdown/config'
import { defineConfig } from 'tsdown/config'
import Vue from 'unplugin-vue/rolldown'

const config: UserConfig = defineConfig({
    plugins: [Vue({ isProduction: true })],
    entry: [
        './src/index.ts', // Principal export
        './src/lib/index.ts', // Utils export
        './src/category.ts', // Icons By category export
    ],
    dts: { vue: true, sourcemap: false },
    platform: 'node',
    unused: {
        level: 'error',
        ignore: ['typescript'],
    },
    format: ['esm', 'cjs'],
    publint: true,
    exports: {
        customExports(pkg) {
            pkg['./package.json'] = {
                default: './package.json',
            }
            return pkg
        },
    },
    fixedExtension: true,
    minify: true,
    unbundle: false,
    onSuccess() {
        console.info('🙏 Build succeeded!')
    },
    clean: true,
})

export default config
