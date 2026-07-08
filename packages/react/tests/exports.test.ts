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
        const importPath = path.resolve(rootDir, mainExport.import)
        const typesPath = path.resolve(rootDir, mainExport.types)

        expect(fs.existsSync(importPath)).toBe(true)
        expect(fs.existsSync(typesPath)).toBe(true)
    })

    it('should have a lib wildcard export', () => {
        const libExport = exports['./lib/*']
        expect(libExport).toBeDefined()

        const importPath = path.resolve(rootDir, libExport.import.replace('*', 'types'))
        expect(fs.existsSync(importPath)).toBe(true)
    })

    it('should have a style wildcard export', () => {
        const styleExport = exports['./*']
        expect(styleExport).toBeDefined()

        const styles = ['bold', 'linear', 'outline', 'bold-duotone', 'line-duotone', 'broken']
        for (const style of styles) {
            const importPath = path.resolve(rootDir, styleExport.import.replace('*', style))
            const typesPath = path.resolve(
                rootDir,
                styleExport.types.replace('*.d.mts', `${style}.d.mts`)
            )
            expect(fs.existsSync(importPath)).toBe(true)
            expect(fs.existsSync(typesPath)).toBe(true)
        }
    })

    it('should have a dynamic wildcard export', () => {
        const dynamicExport = exports['./dynamic/*']
        expect(dynamicExport).toBeDefined()

        const importPath = path.resolve(rootDir, dynamicExport.import.replace('*', 'home'))
        const typesPath = path.resolve(
            rootDir,
            dynamicExport.types.replace('*.d.mts', 'home.d.mts')
        )
        expect(fs.existsSync(importPath)).toBe(true)
        expect(fs.existsSync(typesPath)).toBe(true)
    })

    it('should have correct directory structure in dist', () => {
        expect(fs.existsSync(path.join(distPath, 'icons'))).toBe(true)
        expect(fs.existsSync(path.join(distPath, 'lib'))).toBe(true)
    })
})
