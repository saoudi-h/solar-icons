import { execFileSync, spawnSync } from 'node:child_process'
import crypto from 'node:crypto'
import fs from 'node:fs'
import path from 'node:path'

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')

const run = (label: string, cmd: string, args: string[], cwd = REPOSITORY_ROOT) => {
    console.log(`\n==> ${label}`)
    execFileSync(cmd, args, { cwd, stdio: 'inherit' })
}

/** Content hash of every file that differs from the index or is untracked ("-" when deleted). */
const treeState = (): Map<string, string> => {
    const files = execFileSync(
        'git',
        ['ls-files', '--modified', '--deleted', '--others', '--exclude-standard', '-z'],
        { cwd: REPOSITORY_ROOT, encoding: 'utf8', maxBuffer: 1 << 28 }
    )
        .split('\0')
        .filter(Boolean)
    const state = new Map<string, string>()
    for (const file of files) {
        const absolute = path.join(REPOSITORY_ROOT, file)
        state.set(
            file,
            fs.existsSync(absolute)
                ? crypto.createHash('sha1').update(fs.readFileSync(absolute)).digest('hex')
                : '-'
        )
    }
    return state
}

const changedBetween = (before: Map<string, string>, after: Map<string, string>): string[] =>
    [...new Set([...before.keys(), ...after.keys()])]
        .filter(file => before.get(file) !== after.get(file))
        .sort()

const hasDart = (): boolean => spawnSync('dart', ['--version'], { stdio: 'ignore' }).status === 0

const main = () => {
    const check = process.argv.includes('--check')
    const before = check ? treeState() : new Map<string, string>()
    run('Building @solar-icons/core and @solar-icons/static', 'pnpm', [
        'turbo',
        'build',
        '--concurrency=1',
        '--filter=@solar-icons/static...',
    ])
    run('Synchronizing Figma plugin catalog', 'pnpm', ['check:figma-catalog'])
    run('Regenerating test app icon lists', 'pnpm', ['generate:test-catalogs'])
    run('Regenerating docs-start catalog and categories table', 'pnpm', [
        '--filter',
        '@solar-icons/docs-start',
        'generate:catalog',
    ])
    run('Regenerating docs-start public icon catalog JSON', 'pnpm', [
        '--filter',
        '@solar-icons/docs-start',
        'generate:icon-catalog',
    ])
    run('Regenerating Angular icon assets', 'pnpm', [
        '--filter',
        '@solar-icons/angular',
        'generate:assets',
    ])
    run('Regenerating Blazor icon assets and manifest', 'pnpm', [
        '--dir',
        'packages/blazor',
        'generate:assets',
    ])
    run('Verifying Blazor generated assets', 'pnpm', [
        '--dir',
        'packages/blazor',
        'check:generated',
    ])
    // The Flutter generators format their output with `dart format`. Without the
    // Dart SDK (the Node-only CI job) they are skipped: flutter.yml regenerates
    // and compares them with the SDK installed.
    if (hasDart()) {
        run('Regenerating Flutter icon widgets', 'node', [
            'packages/flutter/tool/generate_icons.mjs',
        ])
        run('Regenerating Flutter example gallery registry', 'node', [
            'packages/flutter/tool/generate_gallery_registry.mjs',
        ])
    } else {
        console.log('\n==> Skipping the Flutter generators: the Dart SDK is not installed')
    }
    run('Regenerating Rails SVG payload and constants', 'node', ['packages/rails/bin/fetch-icons'])
    run('Updating and verifying icon inventory counts across docs and packages', 'pnpm', [
        'exec',
        'tsx',
        'scripts/check-icon-inventory.ts',
        '--write',
        '--check-generated',
        '--check-docs',
    ])
    run('Formatting synchronized artifacts with oxfmt', 'pnpm', [
        'exec',
        'oxfmt',
        '--write',
        'packages/angular/src/lib/all-icons.types.ts',
        'packages/blazor/catalogue-manifest.json',
        'packages/rails/lib/solar_icons/icons/.provenance.json',
        'apps/docs-start/generated/',
    ])
    console.log('\nCatalogue synchronization complete.')

    if (check) {
        const changed = changedBetween(before, treeState())
        if (changed.length > 0) {
            console.error(
                '\nThe committed generated files are stale: the synchronization changed them.\n' +
                    'Run `pnpm catalog:sync` and commit the result. Files changed by the synchronization:\n' +
                    changed.map(file => `  ${file}`).join('\n')
            )
            process.exit(1)
        }
    }
}

main()
