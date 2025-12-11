import React from '@vitejs/plugin-react'
import { readdirSync, statSync } from 'fs'
import { join } from 'path'
import type { UserConfig } from 'tsdown/config'
import { defineConfig } from 'tsdown/config'

const styles = ['Bold', 'BoldDuotone', 'Broken', 'LineDuotone', 'Linear', 'Outline']

function genEntries(styles: string[]) {
    const iconsDir = join(process.cwd(), 'src/icons')
    const categories = readdirSync(iconsDir).filter(name => {
        const path = join(iconsDir, name)
        return statSync(path).isDirectory() && name !== 'style'
    })

    const entries: Record<string, string> = {
        index: './src/index.ts',
        'lib/index': './src/lib/index.ts',
        'icons/index': './src/icons/index.ts',
    }

    for (const style of styles) {
        entries[`icons/style/${style}`] = `./src/icons/style/${style}.ts`
    }

    for (const category of categories) {
        for (const style of styles) {
            entries[`icons/${category}/${style}`] = `./src/icons/${category}/${style}/index.ts`
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

    dts: {
        sourcemap: false,
        resolve: true,
    },

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
            pkg['./lib'] = {
                types: './dist/lib/index.d.mts',
                import: './dist/lib/index.mjs',
            }

            // Barrel exports (backward compatibility)
            for (const style of styles) {
                pkg[`./${style}`] = {
                    types: `./dist/icons/style/${style}.d.mts`,
                    import: `./dist/icons/style/${style}.mjs`,
                }
                pkg[`./category/*/${style}`] = {
                    types: `./dist/icons/*/${style}.d.mts`,
                    import: `./dist/icons/*/${style}.mjs`,
                }
            }

            return pkg
        },
    },

    format: ['esm'],

    publint: true,

    fixedExtension: true,

    minify: true,

    unbundle: true,

    target: 'es2020',

    onSuccess() {
        console.info(`✨ @solar-icons/react-perf build succeeded!`)
    },

    clean: true,

    external: ['react', 'react-dom', 'react/jsx-runtime'],
})

export default config
