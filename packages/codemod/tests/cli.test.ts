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
})
