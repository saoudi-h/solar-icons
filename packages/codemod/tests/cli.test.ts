import { mkdtemp, readFile, writeFile } from 'node:fs/promises'
import { tmpdir } from 'node:os'
import { join } from 'node:path'

import { describe, expect, it } from 'vitest'

import { runMigration } from '../src/cli.js'

describe('runMigration', () => {
    it('keeps a prior transform when a later adapter makes no edit', async () => {
        const cwd = await mkdtemp(join(tmpdir(), 'solar-icons-codemod-'))
        await writeFile(
            cwd + '/package.json',
            '{"dependencies":{"@solar-icons/react-perf":"2.1.1"}}'
        )
        await writeFile(
            cwd + '/App.tsx',
            "import { HomeBold } from '@solar-icons/react-perf'\nexport const App = () => <HomeBold />"
        )

        const report = await runMigration({ cwd, targetVersion: '2.0.0-beta.2', write: true })

        expect(report.changedFiles).toHaveLength(2)
        await expect(readFile(cwd + '/App.tsx', 'utf8')).resolves.toContain(
            "from '@solar-icons/react'"
        )
    })

    it('collects manual-migration diagnostics across framework adapters', async () => {
        const cwd = await mkdtemp(join(tmpdir(), 'solar-icons-codemod-manual-'))
        await writeFile(cwd + '/package.json', '{"dependencies":{"vue":"3.5.39"}}')
        await Promise.all([
            writeFile(
                cwd + '/React.tsx',
                "import { SolarProvider } from '@solar-icons/react'\nexport const App = () => <SolarProvider />"
            ),
            writeFile(
                cwd + '/App.vue',
                "<script setup>\nimport { Arrows } from '@solar-icons/vue/category'\n</script>\n<template><Arrows.ArrowUp /></template>"
            ),
            writeFile(
                cwd + '/App.svelte',
                "<script>\nimport { Bold } from '@solar-icons/svelte/category/arrows'\n</script>\n<div />"
            ),
            writeFile(
                cwd + '/app.component.ts',
                "@Component({ templateUrl: './app.component.html' })\nexport class AppComponent {}"
            ),
            writeFile(
                cwd + '/native.tsx',
                "import * as solar from '@solar-icons/react-native/category'"
            ),
            writeFile(cwd + '/nuxt.config.ts', "import * as solar from '#solar-icons/category'"),
        ])

        const report = await runMigration({ cwd, write: false })

        expect(report.diagnostics).toEqual(
            expect.arrayContaining([
                expect.objectContaining({
                    code: 'REACT_PROVIDER_REQUIRES_MANUAL_MIGRATION',
                    line: 1,
                }),
                expect.objectContaining({
                    code: 'VUE_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
                    line: 2,
                }),
                expect.objectContaining({
                    code: 'SVELTE_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
                    line: 2,
                }),
                expect.objectContaining({
                    code: 'ANGULAR_EXTERNAL_TEMPLATE_REQUIRES_MANUAL_MIGRATION',
                    line: 1,
                }),
                expect.objectContaining({ code: 'UNSUPPORTED_REACT_NATIVE_IMPORT', line: 1 }),
                expect.objectContaining({
                    code: 'NUXT_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
                    line: 1,
                }),
            ])
        )
    })
})
