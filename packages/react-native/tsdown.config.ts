import type { UserConfig } from 'tsdown/config'
import { defineConfig } from 'tsdown/config'

const styles = ['Bold', 'BoldDuotone', 'Broken', 'LineDuotone', 'Linear', 'Outline']

function genEntries(styles: string[]) {
    const entries: Record<string, string> = {
        index: './src/index.ts',
        'lib/index': './src/lib/index.ts',
        'lib/types': './src/lib/types.ts',
    }

    for (const style of styles) {
        entries[`icons/style/${style}`] = `./src/icons/style/${style}.ts`
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
        ignore: ['typescript', 'react', 'react-native', 'react-native-svg'],
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

            pkg['./category/*'] = {
                types: './dist/icons/*.d.mts',
                import: './dist/icons/*.mjs',
            }

            return pkg
        },
    },

    format: ['esm'],

    publint: true,

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
