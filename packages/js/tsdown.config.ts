import type { UserConfig } from 'tsdown/config'
import { defineConfig } from 'tsdown/config'

const styles = ['bold', 'bold-duotone', 'broken', 'linear', 'line-duotone', 'outline'] as const

const config: UserConfig = defineConfig({
    entry: { index: './src/index.ts' },

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

    unused: {
        level: 'error',
    },

    exports: {
        customExports() {
            const pkg: Record<string, unknown> = {}

            pkg['./package.json'] = './package.json'

            pkg['.'] = {
                types: './dist/index.d.mts',
                import: './dist/index.mjs',
            }

            for (const style of styles) {
                pkg[`./${style}/*`] = {
                    types: `./dist/icons/${style}/*.d.mts`,
                    import: `./dist/icons/${style}/*.mjs`,
                }
            }

            pkg['./sprite'] = {
                types: './dist/sprite.d.mts',
                import: './dist/sprite.svg',
            }

            pkg['./icons.json'] = {
                types: './dist/icons.d.mts',
                import: './dist/icons.json',
            }

            pkg['./metadata.json'] = {
                types: './dist/metadata.d.mts',
                import: './dist/metadata.json',
            }

            pkg['./metadata-descriptions.json'] = {
                types: './dist/metadata-descriptions.d.mts',
                import: './dist/metadata-descriptions.json',
            }

            return pkg
        },
    },

    onSuccess() {
        console.info('✨ @solar-icons/static build succeeded!')
    },
})

export default config
