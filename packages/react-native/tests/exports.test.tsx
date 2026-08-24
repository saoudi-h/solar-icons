import fs from 'node:fs'
import path from 'node:path'

import { describe, expect, it } from 'vitest'

/**
 * Guards the public package map: every documented entry point must resolve to a
 * real runtime and type file in the published build. Assumes `pnpm build` ran.
 */
describe('@solar-icons/react-native exports', () => {
    const rootDir = path.resolve(import.meta.dirname, '..')
    const pkg = JSON.parse(fs.readFileSync(path.resolve(rootDir, 'package.json'), 'utf8'))
    const exportsMap: Record<string, any> = pkg.exports

    const assertFile = (p: string) => expect(fs.existsSync(p), `missing file ${p}`).toBe(true)

    it('exports the root entry', () => {
        const root = exportsMap['.']
        expect(root).toBeDefined()
        assertFile(path.resolve(rootDir, root.import))
        assertFile(path.resolve(rootDir, root.types))
    })

    it('exposes the six style wildcard single-icon subpaths', () => {
        const styles = ['bold', 'bold-duotone', 'broken', 'linear', 'line-duotone', 'outline']
        for (const style of styles) {
            const key = `./${style}/*`
            expect(exportsMap[key], `missing ${key}`).toBeDefined()
            assertFile(path.resolve(rootDir, exportsMap[key].import.replace('*', 'heart')))
            assertFile(path.resolve(rootDir, exportsMap[key].types.replace('*', 'heart')))
        }
    })

    it('maps the style barrel via the ./{style} pattern', () => {
        // @solar-icons/react-native/bold (no per-icon segment) resolves through ./{style}/
        const wildcard = exportsMap['./*']
        expect(wildcard).toBeDefined()
        for (const style of [
            'bold',
            'bold-duotone',
            'broken',
            'linear',
            'line-duotone',
            'outline',
        ]) {
            assertFile(path.resolve(rootDir, wildcard.import.replace('*', style)))
            assertFile(path.resolve(rootDir, wildcard.types.replace('*', style)))
        }
    })

    it('documents single-icon imports that exist in dist', () => {
        const styles = ['bold', 'bold-duotone', 'broken', 'linear', 'line-duotone', 'outline']
        const icon = 'heart'
        for (const style of styles) {
            const key = `./${style}/*`
            assertFile(path.resolve(rootDir, exportsMap[key].import.replace('*', icon)))
        }
    })

    it('does not advertise static asset exports', () => {
        for (const phantom of ['./sprite', './icons.json', './metadata.json']) {
            expect(exportsMap[phantom]).toBeUndefined()
        }
    })
})
