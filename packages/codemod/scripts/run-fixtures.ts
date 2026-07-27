import { spawn } from 'node:child_process'
import { cp, mkdtemp, rm } from 'node:fs/promises'
import { tmpdir } from 'node:os'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

import { runMigration } from '../src/cli.js'

const fixtureDirectory = join(dirname(fileURLToPath(import.meta.url)), '..', 'fixtures')
const fixtures = [
    { buildMigrated: true, name: 'react-v1' },
    {
        buildMigrated: true,
        directory: 'react-v1',
        name: 'react-v1-dynamic-strategy',
        reactV1Mode: 'dynamic' as const,
    },
    { buildMigrated: true, name: 'vue-v1' },
    { buildMigrated: true, name: 'nuxt-v1-config' },
    { buildMigrated: true, name: 'svelte-v1' },
    { buildMigrated: true, name: 'solid-v1' },
    { buildMigrated: true, name: 'react-perf-v1' },
    {
        buildMigrated: false,
        expectedDiagnostics: [
            'REACT_PROVIDER_REQUIRES_MANUAL_MIGRATION',
            'REACT_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
            'UNSUPPORTED_REACT_IMPORT',
        ],
        name: 'react-v1-manual',
    },
]

function run(command: string, args: string[], cwd: string): Promise<void> {
    return new Promise((resolve, reject) => {
        const child = spawn(command, args, { cwd, stdio: 'inherit' })
        child.on('error', reject)
        child.on('exit', code =>
            code === 0 ? resolve() : reject(new Error(`${command} exited with ${code}`))
        )
    })
}

for (const fixture of fixtures) {
    const temporaryDirectory = await mkdtemp(join(tmpdir(), `solar-icons-${fixture.name}-`))
    try {
        await cp(join(fixtureDirectory, fixture.directory ?? fixture.name), temporaryDirectory, {
            recursive: true,
        })

        console.info(`\n→ ${fixture.name}: building the v1 application`)
        await run('pnpm', ['install', '--ignore-scripts'], temporaryDirectory)
        await run('pnpm', ['build'], temporaryDirectory)

        console.info(`→ ${fixture.name}: applying the v2 migration`)
        const report = await runMigration({
            cwd: temporaryDirectory,
            reactV1Mode: fixture.reactV1Mode,
            targetVersion: '2.0.0-beta.2',
            write: true,
        })
        for (const expectedDiagnostic of fixture.expectedDiagnostics ?? []) {
            if (!report.diagnostics.some(diagnostic => diagnostic.code === expectedDiagnostic)) {
                throw new Error(`${fixture.name} did not report ${expectedDiagnostic}`)
            }
        }

        if (!fixture.buildMigrated) continue

        console.info(`→ ${fixture.name}: building the migrated v2 application`)
        await run('pnpm', ['install', '--ignore-scripts'], temporaryDirectory)
        await run('pnpm', ['build'], temporaryDirectory)
    } finally {
        await rm(temporaryDirectory, { force: true, recursive: true })
    }
}
