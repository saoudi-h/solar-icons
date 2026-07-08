import type { UserConfig } from 'tsdown/config'
import { defineConfig } from 'tsdown/config'
import Vue from 'unplugin-vue/rolldown'

const styles = ['Bold', 'BoldDuotone', 'Broken', 'LineDuotone', 'Linear', 'Outline']

const STYLE_KEBAB: Record<string, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

function genEntries(styles: string[]) {
    const entries: Record<string, string> = {
        index: './src/index.ts',
        'lib/index': './src/lib/index.ts',
        'icons/styled': './src/icons/styled.ts',
        'icons/dynamic/index': './src/icons/dynamic/index.ts',
    }

    for (const style of styles) {
        const kebab = STYLE_KEBAB[style]
        entries[`icons/style/${kebab}`] = `./src/icons/style/${kebab}.ts`
    }

    return entries
}

const config: UserConfig = defineConfig({
    plugins: [Vue({ isProduction: true })],
    entry: genEntries(styles),
    dts: { vue: true, sourcemap: false },
    platform: 'node',
    unused: {
        level: 'error',
        ignore: ['typescript'],
    },
    format: ['esm'],
    exports: {
        customExports() {
            const pkg: Record<string, any> = {}

            pkg['./package.json'] = { default: './package.json' }
            pkg['.'] = {
                types: './dist/index.d.mts',
                import: './dist/index.mjs',
            }
            pkg['./lib'] = {
                types: './dist/lib/index.d.mts',
                import: './dist/lib/index.mjs',
            }
            pkg['./lib/*'] = {
                types: './dist/lib/*.d.mts',
                import: './dist/lib/*.mjs',
            }
            pkg['./dynamic'] = {
                types: './dist/icons/dynamic/index.d.mts',
                import: './dist/icons/dynamic/index.mjs',
            }
            pkg['./dynamic/*'] = {
                types: './dist/icons/dynamic/*.d.mts',
                import: './dist/icons/dynamic/*.mjs',
            }
            pkg['./*'] = {
                types: './dist/icons/style/*.d.mts',
                import: './dist/icons/style/*.mjs',
            }

            for (const style of styles) {
                const kebab = STYLE_KEBAB[style]
                pkg[`./${kebab}/*`] = {
                    types: `./dist/icons/${kebab}/*.d.mts`,
                    import: `./dist/icons/${kebab}/*.mjs`,
                }
            }

            return pkg
        },
    },
    fixedExtension: true,
    minify: true,
    unbundle: true,
    target: 'es2020',
    onSuccess() {
        console.info('🙏 Build succeeded!')
    },
    clean: true,
    external: ['vue'],
})

export default config
