import fs from 'node:fs'
import path from 'node:path'

import {
    buildDeprecatedAliasMap,
    parseSvgs,
    toPascalCase,
    WEIGHT_MAP,
    WEIGHTS,
} from '@solar-icons/core'
import descriptions from '@solar-icons/core/metadata-descriptions.json' with { type: 'json' }
import { init, parse } from 'es-module-lexer'
import { beforeAll, describe, expect, it } from 'vitest'

const rootDir = path.resolve(import.meta.dirname, '../..')
const distDir = path.join(rootDir, 'dist')
const pkg = JSON.parse(fs.readFileSync(path.join(rootDir, 'package.json'), 'utf8')) as {
    name: string
    version: string
    exports: Record<string, string | Record<string, string>>
    imports: Record<string, Record<string, string>>
    peerDependencies: Record<string, string>
    dependencies?: Record<string, string>
}

const SOURCE_CONDITIONS = [
    'solid',
    'worker',
    'browser',
    'deno',
    'node',
    'import',
    'default',
    'types',
]

/** Every file target of an `exports` or `imports` entry, patterns expanded with `value`. */
function targets(entry: string | Record<string, string>, value?: string): string[] {
    const files = typeof entry === 'string' ? [entry] : Object.values(entry)
    return files.map(file => (value ? file.replace('*', value) : file))
}

const exists = (file: string) => fs.existsSync(path.join(rootDir, file))

function exportedNames(file: string): string[] {
    const [, exports] = parse(fs.readFileSync(path.join(rootDir, file), 'utf8'))
    return exports.flatMap(item => (item.type === 'reexport-all' ? [] : [item.name]))
}

beforeAll(async () => {
    await init
})

describe('package metadata', () => {
    it('keeps the Solar Icons major (2) and uses a stable semver version', () => {
        expect(pkg.name).toBe('@solar-icons/solid-v2')
        expect(pkg.version).toMatch(/^2\.\d+\.\d+$/)
    })

    it('has no runtime dependency: Solid is a peer', () => {
        expect(pkg.dependencies ?? {}).toEqual({})
        expect(Object.keys(pkg.peerDependencies).sort()).toEqual(['@solidjs/web', 'solid-js'])
        for (const range of Object.values(pkg.peerDependencies)) {
            expect(range).toMatch(/^\^2\./)
        }
    })

    it('does not depend on the Solid 1 package', () => {
        const manifest = fs.readFileSync(path.join(rootDir, 'package.json'), 'utf8')
        expect(manifest).not.toMatch(/"@solar-icons\/solid"/)
        expect(manifest).not.toMatch(/"babel-preset-solid"/)
    })
})

describe('exports map', () => {
    it('lists the same entry points as @solar-icons/solid', () => {
        expect(Object.keys(pkg.exports).sort()).toEqual(
            [
                '.',
                './*',
                './bold-duotone/*',
                './bold/*',
                './broken/*',
                './dynamic',
                './dynamic/*',
                './lib',
                './lib/*',
                './lib/IconBase',
                './lib/SolarProvider',
                './line-duotone/*',
                './linear/*',
                './outline/*',
                './package.json',
            ].sort()
        )
    })

    it('only uses known conditions, with `types` first and `solid` before the compiled ones', () => {
        for (const [key, entry] of Object.entries(pkg.exports)) {
            if (typeof entry === 'string') continue
            const conditions = Object.keys(entry)
            for (const condition of conditions) {
                expect(SOURCE_CONDITIONS, `${key}: ${condition}`).toContain(condition)
            }
            if (conditions.includes('types')) expect(conditions[0], key).toBe('types')
            if (conditions.includes('solid')) {
                expect(conditions.indexOf('solid'), key).toBeLessThan(conditions.indexOf('import'))
            }
        }
    })

    it('points every fixed entry at a file that was built', () => {
        for (const [key, entry] of Object.entries(pkg.exports)) {
            if (key.includes('*')) continue
            for (const file of targets(entry)) expect(exists(file), `${key} -> ${file}`).toBe(true)
        }
    })

    it('points every wildcard entry at built files', () => {
        const samples: Record<string, string> = {
            './lib/*': 'types',
            './dynamic/*': 'heart',
            './*': 'linear',
            './bold/*': 'heart',
            './bold-duotone/*': 'heart',
            './broken/*': 'heart',
            './line-duotone/*': 'heart',
            './linear/*': 'heart',
            './outline/*': 'heart',
        }
        for (const [key, sample] of Object.entries(samples)) {
            for (const file of targets(pkg.exports[key]!, sample)) {
                expect(exists(file), `${key} -> ${file}`).toBe(true)
            }
        }
    })

    it('points every internal subpath import at a file that was built', () => {
        expect(Object.keys(pkg.imports).sort()).toEqual([
            '#internal/icon-base',
            '#internal/solar-provider',
        ])
        for (const [key, entry] of Object.entries(pkg.imports)) {
            for (const file of targets(entry)) expect(exists(file), `${key} -> ${file}`).toBe(true)
        }
    })

    it('selects the SSR build for server runtimes and the DOM build elsewhere', () => {
        for (const entry of Object.values(pkg.imports)) {
            expect(entry.node).toBe(entry.worker)
            expect(entry.node).toBe(entry.deno)
            expect(entry.node).toContain('/dist/ssr/')
            expect(entry.browser).toBe(entry.default)
            expect(entry.default).not.toContain('/dist/ssr/')
            expect(entry.solid).toMatch(/^\.\/dist\/source\/.+\.jsx$/)
        }
    })

    it('orders the conditions like solid-js and @solidjs/web (browser before node)', () => {
        // Node with jsdom resolves with the `browser` condition: `@solidjs/web` then loads its
        // DOM build, so the icons must load their DOM build too. Without a `browser` condition
        // they would fall through to `node` and render the server build into a client runtime,
        // which produces no output at all.
        const order = ['solid', 'worker', 'browser', 'deno', 'node']
        const entries = [
            ...Object.values(pkg.imports),
            pkg.exports['./lib/IconBase'],
            pkg.exports['./lib/SolarProvider'],
        ] as Array<Record<string, string>>
        for (const entry of entries) {
            const keys = Object.keys(entry).filter(key => order.includes(key))
            expect(keys).toEqual(order)
            expect(entry.browser).not.toContain('/dist/ssr/')
        }
    })

    it('keeps the files of the package limited to dist, README and licenses', () => {
        const files = (pkg as unknown as { files: string[] }).files
        expect(files.sort()).toEqual(['LICENSE', 'LICENSE-THIRD-PARTY', 'README.md', 'dist'])
    })
})

describe('built files', () => {
    it('ships a DOM build, an SSR build and the JSX source of the target-specific modules', () => {
        for (const name of ['IconBase', 'SolarProvider']) {
            expect(exists(`dist/lib/${name}.mjs`)).toBe(true)
            expect(exists(`dist/lib/${name}.d.mts`)).toBe(true)
            expect(exists(`dist/ssr/lib/${name}.mjs`)).toBe(true)
            expect(exists(`dist/source/lib/${name}.jsx`)).toBe(true)
        }
    })

    it('compiles the DOM and SSR builds differently', () => {
        const dom = fs.readFileSync(path.join(distDir, 'lib/IconBase.mjs'), 'utf8')
        const ssr = fs.readFileSync(path.join(distDir, 'ssr/lib/IconBase.mjs'), 'utf8')
        const source = fs.readFileSync(path.join(distDir, 'source/lib/IconBase.jsx'), 'utf8')

        expect(dom).toContain('template')
        expect(dom).not.toContain('ssrElement')
        expect(ssr).toContain('ssrElement')
        expect(ssr).not.toContain('template')
        expect(source).toMatch(/<svg/)
        expect(source).not.toContain('ssrElement')
    })

    it('only imports Solid, subpath imports and local files', () => {
        const SPECIFIER = /(?:from|import)\s*["']([^"']+)["']/g
        const bad = new Map<string, string>()
        const visit = (dir: string) => {
            for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
                const file = path.join(dir, entry.name)
                if (entry.isDirectory()) visit(file)
                else if (/\.(mjs|jsx)$/.test(entry.name) && !entry.name.endsWith('.d.mts')) {
                    const text = fs.readFileSync(file, 'utf8')
                    for (const [, specifier] of text.matchAll(SPECIFIER)) {
                        const allowed =
                            specifier!.startsWith('.') ||
                            specifier!.startsWith('#internal/') ||
                            specifier === 'solid-js' ||
                            specifier === '@solidjs/web'
                        if (!allowed) bad.set(specifier!, path.relative(distDir, file))
                    }
                }
            }
        }
        visit(distDir)

        expect([...bad]).toEqual([])
    })

    it('never mentions the private core package or the Solid 1 package in the output', () => {
        const visit = (dir: string): string[] =>
            fs
                .readdirSync(dir, { withFileTypes: true })
                .flatMap(entry =>
                    entry.isDirectory()
                        ? visit(path.join(dir, entry.name))
                        : [path.join(dir, entry.name)]
                )
        const lib = visit(path.join(distDir, 'lib'))
            .concat(visit(path.join(distDir, 'ssr')))
            .concat(visit(path.join(distDir, 'source')))
        for (const file of lib) {
            const text = fs.readFileSync(file, 'utf8')
            expect(text, file).not.toContain('@solar-icons/core')
            expect(text, file).not.toContain('babel-preset-solid')
            expect(text, file).not.toContain('solid-js/web')
        }
    })
})

describe('public API', () => {
    const SVGS_DIR = path.resolve(rootDir, '../core/svgs')
    let expected: {
        perStyle: Map<string, Set<string>>
        styled: Set<string>
        dynamic: Set<string>
        files: Map<string, Set<string>>
    }

    beforeAll(async () => {
        const { icons, groups } = await parseSvgs({ svgsDir: SVGS_DIR })
        const aliases = buildDeprecatedAliasMap(descriptions)
        const perStyle = new Map<string, Set<string>>()
        const files = new Map<string, Set<string>>()
        const styled = new Set<string>()
        const dynamic = new Set<string>()

        for (const weight of WEIGHTS) {
            perStyle.set(WEIGHT_MAP[weight], new Set())
            files.set(WEIGHT_MAP[weight], new Set())
        }
        for (const icon of icons) {
            const kebab = WEIGHT_MAP[icon.style]
            perStyle.get(kebab)!.add(`${icon.pascalName}Icon`)
            files.get(kebab)!.add(icon.name)
            styled.add(`${toPascalCase(`${icon.name}-${icon.style}`)}Icon`)
            for (const alias of aliases.get(icon.name) ?? []) {
                perStyle.get(kebab)!.add(`${toPascalCase(alias.name)}Icon`)
                files.get(kebab)!.add(alias.name)
                styled.add(`${toPascalCase(`${alias.name}-${icon.style}`)}Icon`)
            }
        }
        for (const group of groups) {
            dynamic.add(`${group.pascalName}Icon`)
            for (const alias of aliases.get(group.name) ?? [])
                dynamic.add(`${toPascalCase(alias.name)}Icon`)
        }
        expected = { perStyle, styled, dynamic, files }
    })

    it('exports the runtime primitives from the root entry', () => {
        const names = exportedNames('dist/index.mjs')

        for (const name of ['IconBase', 'SolarProvider', 'useSolar']) expect(names).toContain(name)
        expect(exportedNames('dist/lib/index.mjs').sort()).toEqual(
            ['IconBase', 'SolarProvider', 'useSolar'].sort()
        )
        expect(exportedNames('dist/lib/dynamic-icon.mjs')).toEqual(['DynamicIcon'])
    })

    it('exports every icon of the catalogue from the root entry, once', () => {
        const names = exportedNames('dist/index.mjs').filter(name => name.endsWith('Icon'))

        expect(new Set(names).size).toBe(names.length)
        expect(new Set(names)).toEqual(expected.styled)
        expect(expected.styled.size).toBeGreaterThanOrEqual(9576)
    })

    it('exports every icon of each style barrel', () => {
        for (const [style, names] of expected.perStyle) {
            expect(new Set(exportedNames(`dist/icons/style/${style}.mjs`)), style).toEqual(names)
        }
    })

    it('exports every dynamic icon', () => {
        expect(new Set(exportedNames('dist/icons/dynamic/index.mjs'))).toEqual(expected.dynamic)
    })

    it('builds one module and one declaration per icon, style and alias', () => {
        for (const [style, names] of expected.files) {
            for (const name of names) {
                expect(exists(`dist/icons/${style}/${name}.mjs`), `${style}/${name}.mjs`).toBe(true)
                expect(exists(`dist/icons/${style}/${name}.d.mts`), `${style}/${name}.d.mts`).toBe(
                    true
                )
            }
        }
    })

    it('names the export of each per-icon module after the icon', () => {
        const checks: Array<[string, string]> = [
            ['dist/icons/linear/home.mjs', 'HomeIcon'],
            ['dist/icons/bold-duotone/arrow-up.mjs', 'ArrowUpIcon'],
            ['dist/icons/dynamic/heart.mjs', 'HeartIcon'],
        ]
        for (const [file, name] of checks) expect(exportedNames(file)).toEqual([name])
    })

    it('declares the public types', () => {
        const root = fs.readFileSync(path.join(distDir, 'index.d.mts'), 'utf8')
        const dynamic = fs.readFileSync(path.join(distDir, 'icons/dynamic/heart.d.mts'), 'utf8')

        const dynamicIcon = fs.readFileSync(path.join(distDir, 'lib/dynamic-icon.d.mts'), 'utf8')

        // The declaration of the runtime export, not only the props types around it.
        expect(dynamicIcon).toMatch(/export (declare )?function DynamicIcon\b/)
        expect(dynamicIcon).toContain('StyleComponentsMap')
        expect(root).toContain('IconProps')
        expect(root).toContain('SolarProviderProps')
        expect(dynamic).toContain('DynamicIconProps')
    })
})
