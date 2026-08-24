import fs from 'node:fs'
import path from 'node:path'

import { describe, expect, it } from 'vitest'

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
})
