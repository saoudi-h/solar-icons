import { execFileSync } from 'node:child_process'
import fs from 'node:fs'
import os from 'node:os'
import path from 'node:path'

import { WEIGHT_MAP as CORE_WEIGHT_MAP } from '@solar-icons/core'
import { describe, expect, it } from 'vitest'

import { WEIGHT_MAP } from '../src/lib/types.js'

const RELATIVE_SPECIFIER_RE = /(?:from|import)\s*["'](\.[^"']+)["']/g

describe('Package Exports', () => {
    const rootDir = path.resolve(import.meta.dirname, '..')
    const distPath = path.resolve(rootDir, 'dist')
    const pkg = JSON.parse(fs.readFileSync(path.resolve(rootDir, 'package.json'), 'utf8'))
    const exports = pkg.exports

    it('should have a main export', () => {
        expect(exports['.']).toBeDefined()
        const mainExport = exports['.']
        const importPath = path.resolve(rootDir, mainExport.svelte || mainExport.import)
        const typesPath = path.resolve(rootDir, mainExport.types)

        expect(fs.existsSync(importPath)).toBe(true)
        expect(fs.existsSync(typesPath)).toBe(true)
    })

    it('should have a lib wildcard export', () => {
        const libExport = exports['./lib/*']
        expect(libExport).toBeDefined()

        const importPath = path.resolve(rootDir, libExport.default.replace('*', 'types'))
        expect(fs.existsSync(importPath)).toBe(true)
    })

    it('should have a style wildcard export', () => {
        const styleExport = exports['./*']
        expect(styleExport).toBeDefined()

        const styles = ['bold', 'linear', 'outline', 'bold-duotone', 'line-duotone', 'broken']
        for (const style of styles) {
            const importPath = path.resolve(rootDir, styleExport.default.replace('*', style))
            expect(fs.existsSync(importPath)).toBe(true)
        }
    })

    it('should resolve per-icon subpaths to .svelte source and .svelte.d.ts types', () => {
        const styles = ['bold', 'linear', 'outline', 'bold-duotone', 'line-duotone', 'broken']
        for (const style of styles) {
            const key = `./${style}/*`
            const sub = exports[key]
            expect(sub, `missing ${key}`).toBeDefined()
            const sveltePath = path.resolve(rootDir, sub.default.replace('*', 'heart'))
            const typesPath = path.resolve(rootDir, sub.types.replace('*', 'heart'))
            expect(fs.existsSync(sveltePath)).toBe(true)
            expect(fs.existsSync(typesPath)).toBe(true)
            expect(sveltePath.endsWith('.svelte')).toBe(true)
            expect(fs.existsSync(sveltePath.replace(/\.svelte$/, '.svelte.d.ts'))).toBe(true)
        }
    })

    it('should expose dynamic subpaths to .svelte files', () => {
        const dynamic = exports['./dynamic/*']
        expect(dynamic).toBeDefined()
        const dynamicSvelte = path.resolve(rootDir, dynamic.default.replace('*', 'heart'))
        expect(fs.existsSync(dynamicSvelte)).toBe(true)
        expect(dynamicSvelte.endsWith('.svelte')).toBe(true)
    })

    it('should have correct directory structure in dist', () => {
        expect(fs.existsSync(path.join(distPath, 'icons'))).toBe(true)
        expect(fs.existsSync(path.join(distPath, 'lib'))).toBe(true)
    })

    it('should keep local WEIGHT_MAP in sync with @solar-icons/core', () => {
        expect(WEIGHT_MAP).toEqual(CORE_WEIGHT_MAP)
    })

    it('should emit explicit relative specifiers and no @solar-icons/core or $$ComponentProps in dist', () => {
        const sampleFiles = [
            path.join(distPath, 'index.js'),
            path.join(distPath, 'index.d.ts'),
            path.join(distPath, 'lib/index.js'),
            path.join(distPath, 'lib/index.d.ts'),
            path.join(distPath, 'lib/SolarProvider.svelte'),
            path.join(distPath, 'lib/dynamic-icon.svelte'),
            path.join(distPath, 'lib/dynamic-icon.svelte.d.ts'),
            path.join(distPath, 'lib/types.d.ts'),
            path.join(distPath, 'icons/style/index.js'),
            path.join(distPath, 'icons/style/index.d.ts'),
            path.join(distPath, 'icons/bold/heart.svelte'),
            path.join(distPath, 'icons/bold/heart.svelte.d.ts'),
            path.join(distPath, 'icons/dynamic/heart.svelte'),
            path.join(distPath, 'icons/dynamic/heart.svelte.d.ts'),
        ]

        for (const file of sampleFiles) {
            const content = fs.readFileSync(file, 'utf8')
            expect(content, file).not.toContain('@solar-icons/core')
            expect(content, file).not.toContain('$$ComponentProps')
            for (const match of content.matchAll(RELATIVE_SPECIFIER_RE)) {
                expect(match[1], `missing extension in specifier in ${file}`).toMatch(
                    /\.(?:js|mjs|cjs|svelte)$/
                )
            }
        }
    })

    it('should typecheck cleanly under moduleResolution nodenext without @solar-icons/core', () => {
        const tmpDir = fs.mkdtempSync(path.join(os.tmpdir(), 'solar-svelte-nodenext-'))
        try {
            const nmDir = path.join(tmpDir, 'node_modules')
            fs.mkdirSync(path.join(nmDir, '@solar-icons'), { recursive: true })
            fs.symlinkSync(rootDir, path.join(nmDir, '@solar-icons/svelte'))
            fs.symlinkSync(
                path.resolve(rootDir, '../../node_modules/svelte'),
                path.join(nmDir, 'svelte')
            )

            fs.writeFileSync(
                path.join(tmpDir, 'tsconfig.json'),
                JSON.stringify({
                    compilerOptions: {
                        module: 'nodenext',
                        moduleResolution: 'nodenext',
                        strict: true,
                        noEmit: true,
                        skipLibCheck: false,
                        types: [],
                    },
                    files: ['repro.mts'],
                })
            )

            fs.writeFileSync(
                path.join(tmpDir, 'repro.mts'),
                `import { HeartBoldIcon, IconBase, SolarProvider, useSolar, type IconProps, type IconStyle } from "@solar-icons/svelte";
import { IconBase as LibBase, SolarProvider as LibProvider, useSolar as libUseSolar, type IconProps as LibProps } from "@solar-icons/svelte/lib";
import { type DynamicIconProps } from "@solar-icons/svelte/lib/types";
import { HeartIcon as BoldHeart } from "@solar-icons/svelte/bold";
import BoldHeartDirect from "@solar-icons/svelte/bold/heart";
import { HeartIcon as DynamicHeart } from "@solar-icons/svelte/dynamic";
import DynamicHeartDirect from "@solar-icons/svelte/dynamic/heart";

const validProps: IconProps = { size: 24, color: "red" };
const validDynamicProps: DynamicIconProps = { weight: "Bold", size: 24 };
const validStyle: IconStyle = "Linear";
// @ts-expect-error IconProps must not collapse to any
const badProps: IconProps = 123;
// @ts-expect-error DynamicIconProps weight must not collapse to any
const badWeight: DynamicIconProps = { weight: "InvalidWeight" };
// @ts-expect-error IconStyle must not collapse to any
const badStyle: IconStyle = "InvalidStyle";
// @ts-expect-error useSolar must not collapse to any
const badUseSolar: symbol = useSolar;
void [HeartBoldIcon, IconBase, SolarProvider, useSolar, LibBase, LibProvider, libUseSolar, BoldHeart, BoldHeartDirect, DynamicHeart, DynamicHeartDirect, validProps, validDynamicProps, validStyle, badProps, badWeight, badStyle, badUseSolar];
export type { LibProps };
`
            )

            const tscBin = path.resolve(rootDir, 'node_modules/.bin/tsc')
            execFileSync(tscBin, ['-p', path.join(tmpDir, 'tsconfig.json')], { encoding: 'utf8' })
            execFileSync(
                tscBin,
                [
                    '-p',
                    path.join(tmpDir, 'tsconfig.json'),
                    '--module',
                    'esnext',
                    '--moduleResolution',
                    'bundler',
                ],
                { encoding: 'utf8' }
            )
        } finally {
            fs.rmSync(tmpDir, { recursive: true, force: true })
        }
    }, 30000)
})
