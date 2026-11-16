import '@angular/compiler'
import { execFileSync } from 'node:child_process'
import {
    existsSync,
    mkdirSync,
    mkdtempSync,
    readFileSync,
    rmSync,
    symlinkSync,
    writeFileSync,
} from 'node:fs'
import { tmpdir } from 'node:os'
import { join, resolve } from 'node:path'

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

    it('should emit explicit .js relative specifiers in dist', () => {
        const specifierRe = /(?:from|import)\s*["'](\.[^"']+)["']/g
        const sampleFiles = [
            resolve('dist/public-api.js'),
            resolve('dist/public-api.d.ts'),
            resolve('dist/lib/index.js'),
            resolve('dist/lib/index.d.ts'),
            resolve('dist/icons/index.js'),
            resolve('dist/icons/index.d.ts'),
            resolve('dist/dynamic/index.js'),
            resolve('dist/dynamic/index.d.ts'),
            resolve('dist/dynamic/heart.js'),
            resolve('dist/dynamic/heart.d.ts'),
            resolve('dist/icons/heart-bold.js'),
            resolve('dist/icons/heart-bold.d.ts'),
        ]
        for (const file of sampleFiles) {
            const content = readFileSync(file, 'utf-8')
            for (const match of content.matchAll(specifierRe)) {
                expect(match[1], `missing extension in specifier in ${file}`).toMatch(/\.js$/)
            }
        }
    })

    it('should typecheck cleanly under moduleResolution nodenext', { timeout: 60000 }, () => {
        const tmpDir = mkdtempSync(join(tmpdir(), 'solar-angular-nodenext-'))
        try {
            const nmDir = join(tmpDir, 'node_modules')
            mkdirSync(join(nmDir, '@solar-icons'), { recursive: true })
            mkdirSync(join(nmDir, '@angular'), { recursive: true })
            symlinkSync(resolve('.'), join(nmDir, '@solar-icons/angular'))
            symlinkSync(resolve('node_modules/@angular/core'), join(nmDir, '@angular/core'))
            symlinkSync(resolve('node_modules/@angular/common'), join(nmDir, '@angular/common'))

            writeFileSync(
                join(tmpDir, 'tsconfig.json'),
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

            writeFileSync(
                join(tmpDir, 'repro.mts'),
                `import { SolarHeartBold, IconBase, SolarProvider, SolarHeart, useSolar, type SolarIconName } from "@solar-icons/angular";
import { IconBase as LibBase } from "@solar-icons/angular/lib";
import { SolarHeart as DynamicHeart } from "@solar-icons/angular/dynamic";
import { SolarHeartBold as DirectHeart } from "@solar-icons/angular/heart-bold";

// @ts-expect-error SolarHeartBold must not collapse to any
export const e1: symbol = SolarHeartBold;
// @ts-expect-error IconBase must not collapse to any
export const e2: symbol = IconBase;
// @ts-expect-error SolarProvider must not collapse to any
export const e3: symbol = SolarProvider;
// @ts-expect-error SolarHeart must not collapse to any
export const e4: symbol = SolarHeart;
// @ts-expect-error useSolar must not collapse to any
export const e5: symbol = useSolar;
// @ts-expect-error LibBase must not collapse to any
export const e6: symbol = LibBase;
// @ts-expect-error DynamicHeart must not collapse to any
export const e7: symbol = DynamicHeart;
// @ts-expect-error DirectHeart must not collapse to any
export const e8: symbol = DirectHeart;
// @ts-expect-error SolarIconName must not collapse to any
export const e9: SolarIconName = "InvalidIconName";
`
            )

            execFileSync(resolve('node_modules/.bin/tsc'), ['-p', join(tmpDir, 'tsconfig.json')], {
                encoding: 'utf-8',
            })
        } finally {
            rmSync(tmpDir, { recursive: true, force: true })
        }
    })
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
