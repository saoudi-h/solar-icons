import '@angular/compiler'
import { existsSync, readFileSync } from 'node:fs'
import { resolve } from 'node:path'
import { describe, expect, it } from 'vitest'

const pkgPath = resolve('package.json')
const pkg = JSON.parse(readFileSync(pkgPath, 'utf-8'))
const exports = pkg.exports

const testPaths = ['.', './lib'] as const

describe('Package Exports', () => {
    for (const testPath of testPaths) {
        describe(`path: ${testPath}`, { timeout: 60000 }, () => {
            it('should resolve to an existing file in dist', () => {
                const targetFile = resolveExportTarget(exports, testPath)
                expect(targetFile, `No export defined for "${testPath}"`).toBeTruthy()

                const absolutePath = resolve(targetFile!)
                expect(
                    existsSync(absolutePath),
                    `File not found at: ${targetFile} (absolute: ${absolutePath})`
                ).toBe(true)
            })

            it('should export at least one symbol (valid module)', async () => {
                const targetFile = resolveExportTarget(exports, testPath)
                if (!targetFile) return

                const absolutePath = resolve(targetFile)

                if (testPath === '.') {
                    const content = readFileSync(absolutePath, 'utf-8')
                    expect(content.trim().length).toBeGreaterThan(0)
                    expect(content).toContain('export')
                    return
                }

                const module = await import(absolutePath)
                expect(Object.keys(module).length).toBeGreaterThan(0)
            })
        })
    }
})

function resolveExportTarget(
    exportsMap: Record<string, any>,
    testPath: string
): string | undefined {
    if (exportsMap[testPath]) {
        return typeof exportsMap[testPath] === 'string'
            ? exportsMap[testPath]
            : exportsMap[testPath].import || exportsMap[testPath].default
    }

    if (exportsMap['./*']) {
        const sub = testPath.startsWith('./') ? testPath.slice(2) : testPath
        const wildcard = exportsMap['./*']
        const template =
            typeof wildcard === 'string' ? wildcard : wildcard.import || wildcard.default

        if (template && template.includes('*')) {
            return template.replace('*', sub)
        }
    }

    return undefined
}
