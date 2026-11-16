import fs from 'node:fs'
import path from 'node:path'

import { describe, expect, it, vi } from 'vitest'

vi.mock('react-native-svg')

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

describe('Deprecated icon alias deep imports (dist/)', () => {
    const rootDir = path.resolve(import.meta.dirname, '..')
    const distIconsDir = path.resolve(rootDir, 'dist/icons')

    it('emits a matching .mjs runtime file for every icon .d.mts under dist/icons', () => {
        const dtsFiles = walkFiles(distIconsDir, filePath => filePath.endsWith('.d.mts'))
        expect(dtsFiles.length).toBeGreaterThan(0)

        const missingRuntime = dtsFiles
            .map(dtsPath => {
                const mjsPath = dtsPath.slice(0, -'.d.mts'.length) + '.mjs'
                return { dtsPath, mjsPath }
            })
            .filter(({ mjsPath }) => !fs.existsSync(mjsPath))
            .map(({ dtsPath }) => path.relative(rootDir, dtsPath))

        expect(missingRuntime).toEqual([])
    })

    it('resolves deep per-style alias imports at runtime to the canonical component', async () => {
        const boldAlias = await import(path.join(distIconsDir, 'bold/chat-square-2.mjs'))
        const boldCanonical = await import(path.join(distIconsDir, 'bold/chart-square-2.mjs'))

        expect(boldAlias.ChatSquare2Icon).toBeDefined()
        expect(boldAlias.ChatSquare2Icon).toBe(boldCanonical.ChartSquare2Icon)
    })

    it('preserves @deprecated JSDoc annotations in emitted alias .d.mts declarations', () => {
        const boldDts = fs.readFileSync(path.join(distIconsDir, 'bold/chat-square-2.d.mts'), 'utf8')

        expect(boldDts).toContain('@deprecated')
    })
})
