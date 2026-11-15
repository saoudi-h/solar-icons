import fs from 'node:fs'
import path from 'node:path'

import { describe, expect, it } from 'vitest'

const STYLES = ['bold', 'bold-duotone', 'broken', 'line-duotone', 'linear', 'outline'] as const

function walkFiles(dir: string, predicate: (filePath: string) => boolean): string[] {
    const results: string[] = []
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
        const fullPath = path.join(dir, entry.name)
        if (entry.isDirectory()) {
            results.push(...walkFiles(fullPath, predicate))
        } else if (predicate(fullPath)) {
            results.push(fullPath)
        }
    }
    return results
}

function extractModuleSpecifiers(code: string): string[] {
    const specifiers: string[] = []
    const patterns = [
        /(?:^|[;\n])\s*(?:import|export)\s+(?:type\s+)?(?:[\s\S]*?\s+from\s+)?["']([^"']+)["']/gm,
        /\bimport\(\s*["']([^"']+)["']\s*\)/g,
    ]
    for (const regex of patterns) {
        for (const match of code.matchAll(regex)) {
            if (match[1]) specifiers.push(match[1])
        }
    }
    return specifiers
}

describe('Package Exports & Dist Integrity', () => {
    const rootDir = path.resolve(import.meta.dirname, '..')
    const distPath = path.resolve(rootDir, 'dist')
    const pkg = JSON.parse(fs.readFileSync(path.resolve(rootDir, 'package.json'), 'utf8'))
    const exportsMap = pkg.exports as Record<string, any>
    const importsMap = pkg.imports as Record<string, Record<string, string>>

    it('should validate all static exports targets and conditions', () => {
        expect(exportsMap['.']).toBeDefined()
        expect(exportsMap['./lib']).toBeDefined()
        expect(exportsMap['./lib/IconBase']).toBeDefined()
        expect(exportsMap['./lib/SolarProvider']).toBeDefined()
        expect(exportsMap['./dynamic']).toBeDefined()

        for (const key of ['.', './lib', './lib/IconBase', './lib/SolarProvider', './dynamic']) {
            const target = exportsMap[key]
            for (const [cond, relPath] of Object.entries(target)) {
                expect(typeof relPath, `${key}.${cond}`).toBe('string')
                expect(
                    fs.existsSync(path.resolve(rootDir, relPath as string)),
                    `Missing ${key}.${cond} -> ${relPath}`
                ).toBe(true)
            }
        }

        // Solid condition must be exposed in exports so vite-plugin-solid treats the package as a Solid library
        expect(exportsMap['./lib/IconBase'].solid).toBe('./dist/runtime/jsx/IconBase.jsx')
        expect(exportsMap['./lib/SolarProvider'].solid).toBe('./dist/runtime/jsx/SolarProvider.jsx')
    })

    it('should validate all wildcard exports targets', () => {
        const libWildcard = exportsMap['./lib/*']
        expect(libWildcard).toBeDefined()
        for (const libName of ['index', 'types', 'IconBase', 'SolarProvider', 'dynamic-icon']) {
            expect(
                fs.existsSync(path.resolve(rootDir, libWildcard.import.replace('*', libName))),
                `Missing lib/${libName}.mjs`
            ).toBe(true)
            expect(
                fs.existsSync(path.resolve(rootDir, libWildcard.types.replace('*', libName))),
                `Missing lib/${libName}.d.mts`
            ).toBe(true)
        }

        const styleWildcard = exportsMap['./*']
        expect(styleWildcard).toBeDefined()
        for (const style of STYLES) {
            expect(
                fs.existsSync(path.resolve(rootDir, styleWildcard.import.replace('*', style)))
            ).toBe(true)
            expect(
                fs.existsSync(path.resolve(rootDir, styleWildcard.types.replace('*', style)))
            ).toBe(true)
        }

        const dynamicWildcard = exportsMap['./dynamic/*']
        expect(dynamicWildcard).toBeDefined()
        expect(
            fs.existsSync(path.resolve(rootDir, dynamicWildcard.import.replace('*', 'arrow-up')))
        ).toBe(true)
        expect(
            fs.existsSync(path.resolve(rootDir, dynamicWildcard.types.replace('*', 'arrow-up')))
        ).toBe(true)

        for (const style of STYLES) {
            const perStyle = exportsMap[`./${style}/*`]
            expect(perStyle, `Missing ./${style}/* export`).toBeDefined()
            expect(
                fs.existsSync(path.resolve(rootDir, perStyle.import.replace('*', 'arrow-up')))
            ).toBe(true)
            expect(
                fs.existsSync(path.resolve(rootDir, perStyle.types.replace('*', 'arrow-up')))
            ).toBe(true)
        }
    })

    it('should validate package.json #imports conditional targets', () => {
        expect(importsMap).toBeDefined()
        for (const subpath of ['#lib/IconBase', '#lib/SolarProvider']) {
            const conds = importsMap[subpath]
            expect(conds, `Missing imports.${subpath}`).toBeDefined()
            if (!conds) continue
            expect(Object.keys(conds)).toEqual([
                'solid',
                'worker',
                'browser',
                'deno',
                'node',
                'default',
            ])
            for (const [cond, relPath] of Object.entries(conds)) {
                expect(
                    fs.existsSync(path.resolve(rootDir, relPath)),
                    `Missing ${subpath}.${cond} -> ${relPath}`
                ).toBe(true)
            }
        }
    })

    it('should not leak @solar-icons/core into dist/ and must export DynamicIcon types cleanly', () => {
        expect(fs.existsSync(path.join(distPath, 'core'))).toBe(false)

        const dynJs = fs.readFileSync(path.join(distPath, 'lib/dynamic-icon.mjs'), 'utf8')
        expect(dynJs).not.toContain('core/dist')
        expect(dynJs).not.toContain('@solar-icons/core')
        expect(dynJs).toContain('DynamicIcon')

        const dynDts = fs.readFileSync(path.join(distPath, 'lib/dynamic-icon.d.mts'), 'utf8')
        expect(dynDts).not.toContain('core/dist')
        expect(dynDts).not.toContain('@solar-icons/core')
        expect(dynDts).toContain('export type DynamicIconProps')
        expect(dynDts).toContain('export declare function DynamicIcon')
    })

    it('should keep all dist/ imports internal, declared, and free of client-only template calls in icon modules', () => {
        const allowedBare = new Set([
            'solid-js',
            'solid-js/web',
            'solid-js/store',
            ...Object.keys(pkg.dependencies ?? {}),
            ...Object.keys(pkg.peerDependencies ?? {}),
        ])

        const runtimeAndLibFiles = [
            path.join(distPath, 'index.mjs'),
            path.join(distPath, 'index.d.mts'),
            path.join(distPath, 'icons/styled.mjs'),
            path.join(distPath, 'icons/styled.d.mts'),
            ...walkFiles(path.join(distPath, 'lib'), p => /\.(?:mjs|d\.mts)$/.test(p)),
            ...walkFiles(path.join(distPath, 'runtime'), p => /\.(?:mjs|jsx)$/.test(p)),
            ...walkFiles(path.join(distPath, 'icons/style'), p => /\.(?:mjs|d\.mts)$/.test(p)),
        ]

        // Also validate representative icon files across every style + dynamic + all dist/lib
        for (const style of [...STYLES, 'dynamic']) {
            runtimeAndLibFiles.push(
                path.join(distPath, `icons/${style}/arrow-up.mjs`),
                path.join(distPath, `icons/${style}/arrow-up.d.mts`),
                path.join(distPath, `icons/${style}/add-circle.mjs`)
            )
        }

        for (const file of runtimeAndLibFiles) {
            const content = fs.readFileSync(file, 'utf8')
            expect(content, `${file} leaked ../core`).not.toMatch(/core\/dist/)
            expect(content, `${file} imported @solar-icons/core`).not.toContain('@solar-icons/core')

            for (const spec of extractModuleSpecifiers(content)) {
                if (spec.startsWith('#')) {
                    expect(
                        importsMap[spec],
                        `${file} uses undeclared subpath import ${spec}`
                    ).toBeDefined()
                } else if (spec.startsWith('.')) {
                    const resolved = path.resolve(path.dirname(file), spec)
                    const resolvedInDist = resolved.startsWith(distPath + path.sep)
                    expect(resolvedInDist, `${file} escapes dist via ${spec}`).toBe(true)

                    const candidates = file.endsWith('.d.mts')
                        ? [resolved, resolved.replace(/\.mjs$/, '.d.mts')]
                        : [resolved]
                    const exists = candidates.some(c => fs.existsSync(c))
                    expect(exists, `${file} has broken relative import ${spec}`).toBe(true)
                } else {
                    expect(
                        allowedBare.has(spec),
                        `${file} imports undeclared external "${spec}"`
                    ).toBe(true)
                }
            }
        }

        // Regression check from scripts/AGENT.md: static icons must never emit nested-<svg> template() calls
        const sampleStaticIcon = fs.readFileSync(
            path.join(distPath, 'icons/linear/arrow-up.mjs'),
            'utf8'
        )
        expect(sampleStaticIcon).not.toContain('template(')
    })
})
