import type { UserConfig } from 'tsdown/config'
import { defineConfig } from 'tsdown/config'

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
        'lib/types': './src/lib/types.ts',
        'icons/styled': './src/icons/styled.ts',
    }

    for (const style of styles) {
        const kebab = STYLE_KEBAB[style]
        entries[`icons/style/${kebab}`] = `./src/icons/style/${kebab}.ts`
    }

    return entries
}

const config: UserConfig = defineConfig({
    entry: genEntries(styles),

    dts: {
        sourcemap: false,
    },

    platform: 'node',

    unused: {
        level: 'error',
        ignore: ['typescript', '@types/react', 'react', 'react-native', 'react-native-svg'],
    },

    exports: {
        customExports() {
            const pkg: Record<string, any> = {}

            pkg['./package.json'] = './package.json'
            pkg['.'] = {
                types: './dist/index.d.mts',
                import: './dist/index.mjs',
            }
            pkg['./lib/*'] = {
                types: './dist/lib/*.d.mts',
                import: './dist/lib/*.mjs',
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

    format: ['esm'],

    // `pnpm check:exports` already runs publint (strict) on every package, and publint
    // costs about a minute on ~10k generated modules (its tarball file system scales with
    // the square of the file count): running it here too only doubles that cost.
    publint: false,

    fixedExtension: true,

    minify: true,

    treeshake: true,

    unbundle: true,

    target: 'es2020',

    sourcemap: false,

    onSuccess() {
        console.info(`✨ @solar-icons/react-native build succeeded!`)
    },

    clean: true,

    external: ['react', 'react-native', 'react-native-svg'],
})

export default config
