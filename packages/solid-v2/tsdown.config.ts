import fs from 'node:fs'
import path from 'node:path'

import type { UserConfig } from 'tsdown/config'
import { defineConfig } from 'tsdown/config'
import solid from 'unplugin-solid/rolldown'

const styles = ['Bold', 'BoldDuotone', 'Broken', 'LineDuotone', 'Linear', 'Outline']
const srcDir = path.resolve(import.meta.dirname, 'src')
const isDevelopmentBuild = process.env.SOLAR_ICONS_DEV_BUILD === '1'

const STYLE_KEBAB: Record<string, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

// Solid 2 compiles JSX differently for the DOM and for the server, and the
// icons are plain component calls that compile the same either way. Only the
// two modules that render host elements (`IconBase`, `SolarProvider`) are
// built once per target. The package selects the right build through its
// `#internal/*` subpath imports (see package.json).
const TARGET_SPECIFIC_ENTRIES = {
    'lib/IconBase': './src/lib/IconBase.tsx',
    'lib/SolarProvider': './src/lib/SolarProvider.tsx',
}

function genEntries(styles: string[]) {
    const entries: Record<string, string> = {
        index: './src/index.ts',
        'lib/index': './src/lib/index.ts',
        'lib/types': './src/lib/types.ts',
        // Not reachable from a runtime barrel: without its own entry the declaration
        // output keeps only the two types that other modules reference.
        'lib/dynamic-icon': './src/lib/dynamic-icon.tsx',
        ...TARGET_SPECIFIC_ENTRIES,
        'icons/styled': './src/icons/styled.ts',
        'icons/dynamic/index': './src/icons/dynamic/index.ts',
    }

    for (const style of styles) {
        const kebab = STYLE_KEBAB[style]
        entries[`icons/style/${kebab}`] = `./src/icons/style/${kebab}.ts`
    }

    // Every icon module is an explicit entry. Reachability from the barrels is not
    // enough: a deprecated alias module is a bare re-export (`export { A as B } from
    // './a'`), which the bundler folds into its importers and would not emit, although
    // the public `./<style>/<alias>` subpath points at it.
    for (const dir of [...Object.values(STYLE_KEBAB), 'dynamic']) {
        for (const file of fs.readdirSync(path.join(srcDir, 'icons', dir))) {
            const name = file.replace(/\.tsx?$/, '')
            if (name === 'index') continue
            entries[`icons/${dir}/${name}`] = `./src/icons/${dir}/${file}`
        }
    }

    return entries
}

const shared = {
    platform: 'neutral',
    format: ['esm'],
    fixedExtension: true,
    // Demo startup does not need minified output. Keeping this opt-in mode avoids
    // spending minutes minifying thousands of generated entrypoints on every local change.
    minify: !isDevelopmentBuild,
    treeshake: !isDevelopmentBuild,
    unbundle: true,
    target: 'es2020',
    // The output folder is emptied by the `build` script (`rimraf dist`): the three
    // builds below write into the same `dist` folder.
    clean: false,
    external: [/^solid-js(\/|$)/, /^@solidjs\/web(\/|$)/, /^#internal\//],
} satisfies UserConfig

/** DOM build, hydratable, plus every declaration file. */
const main: UserConfig = defineConfig({
    ...shared,
    name: 'dom',
    plugins: [solid({ solid: { hydratable: true } })],
    entry: genEntries(styles),
    outDir: 'dist',
    dts: { sourcemap: false },
    unused: {
        level: 'error',
        ignore: ['typescript', 'solid-js', '@solidjs/web'],
    },
    publint: true,
    onSuccess() {
        console.info(`✨ @solar-icons/solid-v2 DOM build succeeded!`)
    },
})

/** Server build of the two target-specific modules, hydratable. */
const ssr: UserConfig = defineConfig({
    ...shared,
    name: 'ssr',
    plugins: [solid({ ssr: true, solid: { hydratable: true } })],
    entry: TARGET_SPECIFIC_ENTRIES,
    outDir: 'dist/ssr',
    dts: false,
})

/** JSX source of the two target-specific modules, for the `solid` export condition. */
const source: UserConfig = defineConfig({
    ...shared,
    name: 'source',
    entry: TARGET_SPECIFIC_ENTRIES,
    outDir: 'dist/source',
    dts: false,
    minify: false,
    treeshake: false,
    inputOptions: { transform: { jsx: 'preserve' } },
    outExtensions: () => ({ js: '.jsx' }),
})

export default [main, ssr, source]
