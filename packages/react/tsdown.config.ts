import React from '@vitejs/plugin-react'
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
        'lib/ssr': './src/lib/ssr.ts',
        'icons/styled': './src/icons/styled.ts',
    }

    for (const style of styles) {
        const kebab = STYLE_KEBAB[style]
        entries[`icons/style/${kebab}`] = `./src/icons/style/${kebab}.ts`
    }

    return entries
}

const config: UserConfig = defineConfig({
    plugins: [
        React({
            jsxRuntime: 'automatic',
        }),
    ],

    entry: genEntries(styles),

    dts: { sourcemap: false },

    platform: 'node',

    unused: {
        level: 'error',
        ignore: ['typescript', 'react', 'react-dom'],
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

            pkg['./ssr'] = {
                types: './dist/lib/ssr.d.mts',
                import: './dist/lib/ssr.mjs',
            }

            pkg['./*'] = {
                types: './dist/icons/style/*.d.mts',
                import: './dist/icons/style/*.mjs',
            }

            return pkg
        },
    },

    format: ['esm'],

    publint: false,

    fixedExtension: true,

    minify: true,

    treeshake: true,

    unbundle: true,

    target: 'es2020',

    onSuccess() {
        console.info(`✨ @solar-icons/react build succeeded!`)
    },

    clean: true,

    external: ['react', 'react-dom', 'react/jsx-runtime'],
})

export default config
