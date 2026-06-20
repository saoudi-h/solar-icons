import React from '@vitejs/plugin-react'
import { readdirSync, statSync } from 'fs'
import { join } from 'path'
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
    const iconsDir = join(process.cwd(), 'src/icons')
    const categories = readdirSync(iconsDir).filter(name => {
        const path = join(iconsDir, name)
        return statSync(path).isDirectory() && name !== 'style'
    })

    const entries: Record<string, string> = {
        index: './src/index.ts',
        'lib/index': './src/lib/index.ts',
        'lib/types': './src/lib/types.ts',
    }

    for (const style of styles) {
        const kebab = STYLE_KEBAB[style]
        entries[`icons/style/${kebab}`] = `./src/icons/style/${kebab}.ts`
    }

    for (const category of categories) {
        entries[`icons/${category}`] = `./src/icons/${category}.ts`

        for (const style of styles) {
            const kebab = STYLE_KEBAB[style]
            entries[`icons/${category}/${kebab}`] = `./src/icons/${category}/${kebab}.ts`
        }
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

    dts: false,

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
                types: './dist/types/index.d.ts',
                import: './dist/index.mjs',
            }
            pkg['./lib/*'] = {
                types: './dist/types/lib/*.d.ts',
                import: './dist/lib/*.mjs',
            }

            pkg['./category'] = {
                types: './dist/types/icons/index.d.ts',
                import: './dist/icons/index.mjs',
            }

            pkg['./category/*'] = {
                types: './dist/types/icons/*.d.ts',
                import: './dist/icons/*.mjs',
            }

            pkg['./*'] = {
                types: './dist/types/icons/style/*.d.ts',
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
        console.info(`✨ @solar-icons/react-perf build succeeded!`)
    },

    clean: true,

    external: ['react', 'react-dom', 'react/jsx-runtime'],
})

export default config
