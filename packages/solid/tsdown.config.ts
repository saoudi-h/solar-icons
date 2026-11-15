import fs from 'node:fs'
import path from 'node:path'

import { build, defineConfig, type UserConfig } from 'tsdown'
import solid from 'unplugin-solid/rolldown'

const styles = ['Bold', 'BoldDuotone', 'Broken', 'LineDuotone', 'Linear', 'Outline']
const isDevelopmentBuild = process.env.SOLAR_ICONS_DEV_BUILD === '1'

const STYLE_KEBAB: Record<string, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

function genEntries(styleList: string[]) {
    const entries: Record<string, string> = {
        index: './src/index.ts',
        'lib/index': './src/lib/index.ts',
        'lib/types': './src/lib/types.ts',
        'icons/styled': './src/icons/styled.ts',
        'icons/dynamic/index': './src/icons/dynamic/index.ts',
    }

    for (const style of styleList) {
        const kebab = STYLE_KEBAB[style]
        entries[`icons/style/${kebab}`] = `./src/icons/style/${kebab}.ts`
    }

    return entries
}

const LIB_DIR = path.resolve(import.meta.dirname, 'src/lib')
const DYNAMIC_ICON_SRC = path.join(LIB_DIR, 'dynamic-icon.tsx')
const TYPES_SRC = path.join(LIB_DIR, 'types.ts')

function externalizeDynamicIconPlugin() {
    return {
        name: 'externalize-dynamic-icon',
        resolveId(source: string, importer?: string) {
            if (!importer) return null
            const cleanSource = source.split('?')[0] ?? ''
            if (cleanSource !== './dynamic-icon' && !cleanSource.endsWith('/lib/dynamic-icon')) {
                return null
            }
            const resolved = path.resolve(path.dirname(importer), cleanSource)
            if (resolved === DYNAMIC_ICON_SRC || `${resolved}.tsx` === DYNAMIC_ICON_SRC) {
                let rel = path.relative(path.dirname(importer), DYNAMIC_ICON_SRC)
                rel = rel.replace(/\\/g, '/').replace(/\.tsx$/, '.mjs')
                if (!rel.startsWith('.')) rel = `./${rel}`
                return { id: rel, external: true }
            }
            return null
        },
    }
}

function externalizeLocalTypesPlugin() {
    return {
        name: 'externalize-local-types',
        resolveId(source: string, importer?: string) {
            if (!importer) return null
            if (!importer.startsWith(LIB_DIR)) return null
            const cleanSource = source.split('?')[0] ?? ''
            if (cleanSource !== './types') return null
            const resolved = path.resolve(path.dirname(importer), cleanSource)
            if (resolved === TYPES_SRC || `${resolved}.ts` === TYPES_SRC) {
                return { id: './types.mjs', external: true }
            }
            return null
        },
    }
}

function buildCustomExports() {
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
    pkg['./lib/IconBase'] = {
        types: './dist/lib/IconBase.d.mts',
        solid: './dist/runtime/jsx/IconBase.jsx',
        worker: './dist/runtime/ssr/IconBase.mjs',
        browser: './dist/runtime/dom/IconBase.mjs',
        deno: './dist/runtime/ssr/IconBase.mjs',
        node: './dist/runtime/ssr/IconBase.mjs',
        import: './dist/lib/IconBase.mjs',
        default: './dist/runtime/dom/IconBase.mjs',
    }
    pkg['./lib/SolarProvider'] = {
        types: './dist/lib/SolarProvider.d.mts',
        solid: './dist/runtime/jsx/SolarProvider.jsx',
        worker: './dist/runtime/ssr/SolarProvider.mjs',
        browser: './dist/runtime/dom/SolarProvider.mjs',
        deno: './dist/runtime/ssr/SolarProvider.mjs',
        node: './dist/runtime/ssr/SolarProvider.mjs',
        import: './dist/lib/SolarProvider.mjs',
        default: './dist/runtime/dom/SolarProvider.mjs',
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
}

const SOLID_EXTERNALS = ['solid-js', 'solid-js/web', 'solid-js/store']

const config: UserConfig = defineConfig({
    plugins: [solid(), externalizeDynamicIconPlugin()],

    entry: genEntries(styles),

    dts: { sourcemap: false },

    platform: 'neutral',

    unused: {
        level: 'error',
        ignore: ['typescript', 'solid-js'],
    },

    format: ['esm'],

    publint: false,

    fixedExtension: true,

    // Demo startup does not need minified output. Keeping this opt-in mode avoids
    // spending minutes minifying thousands of generated entrypoints on every local change.
    minify: !isDevelopmentBuild,

    treeshake: !isDevelopmentBuild,

    unbundle: true,

    target: 'es2020',

    clean: true,

    deps: {
        neverBundle: SOLID_EXTERNALS,
    },

    async onSuccess() {
        const runtimeEntries = {
            IconBase: './src/lib/IconBase.tsx',
            SolarProvider: './src/lib/SolarProvider.tsx',
        }

        // 1. Bundle dynamic-icon standalone with @solar-icons/core/runtime inlined and metadata tree-shaken.
        await build({
            config: false,
            entry: { 'dynamic-icon': './src/lib/dynamic-icon.tsx' },
            outDir: 'dist/lib',
            plugins: [solid(), externalizeLocalTypesPlugin()],
            dts: { sourcemap: false },
            platform: 'neutral',
            format: ['esm'],
            fixedExtension: true,
            minify: !isDevelopmentBuild,
            treeshake: {
                moduleSideEffects: [
                    { test: /@solar-icons\/core|packages[/\\]core/, sideEffects: false },
                ],
            },
            unbundle: false,
            target: 'es2020',
            clean: false,
            deps: {
                neverBundle: SOLID_EXTERNALS,
                alwaysBundle: [/^@solar-icons\/core/, /packages[/\\]core/],
            },
            logLevel: 'error',
        })

        // 2. Emit compiled DOM runtime for IconBase & SolarProvider.
        await build({
            config: false,
            entry: runtimeEntries,
            outDir: 'dist/runtime/dom',
            plugins: [solid({ solid: { generate: 'dom', hydratable: false } })],
            dts: false,
            platform: 'neutral',
            format: ['esm'],
            fixedExtension: true,
            minify: !isDevelopmentBuild,
            treeshake: !isDevelopmentBuild,
            unbundle: true,
            target: 'es2020',
            clean: false,
            deps: {
                neverBundle: SOLID_EXTERNALS,
            },
            logLevel: 'error',
        })

        // 3. Emit compiled SSR runtime for IconBase & SolarProvider (Node/Worker/Deno without vite-plugin-solid).
        await build({
            config: false,
            entry: runtimeEntries,
            outDir: 'dist/runtime/ssr',
            plugins: [solid({ solid: { generate: 'ssr', hydratable: true } })],
            dts: false,
            platform: 'neutral',
            format: ['esm'],
            fixedExtension: true,
            minify: !isDevelopmentBuild,
            treeshake: !isDevelopmentBuild,
            unbundle: true,
            target: 'es2020',
            clean: false,
            deps: {
                neverBundle: SOLID_EXTERNALS,
            },
            logLevel: 'error',
        })

        // 4. Write conditional subpath import bridges in dist/lib/ before final JSX build + publint.
        const libDistDir = path.resolve(import.meta.dirname, 'dist/lib')
        fs.writeFileSync(
            path.join(libDistDir, 'IconBase.mjs'),
            "export { default } from '#lib/IconBase';\n"
        )
        fs.writeFileSync(
            path.join(libDistDir, 'SolarProvider.mjs'),
            "export * from '#lib/SolarProvider';\n"
        )

        // 5. Emit uncompiled JSX for Solid-aware bundlers (`solid` condition) and validate package exports.
        await build({
            config: false,
            entry: runtimeEntries,
            outDir: 'dist/runtime/jsx',
            dts: false,
            platform: 'neutral',
            format: ['esm'],
            outExtensions: () => ({ js: '.jsx' }),
            inputOptions: {
                transform: {
                    jsx: 'preserve',
                },
            },
            minify: false,
            treeshake: false,
            unbundle: true,
            target: 'es2020',
            clean: false,
            deps: {
                neverBundle: SOLID_EXTERNALS,
            },
            exports: {
                customExports: buildCustomExports,
            },
            publint: true,
            logLevel: 'error',
        })

        console.info(`✨ @solar-icons/solid build succeeded!`)
    },
})

export default config
