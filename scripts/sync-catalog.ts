import { execFileSync } from 'node:child_process'
import path from 'node:path'

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')

const run = (label: string, cmd: string, args: string[], cwd = REPOSITORY_ROOT) => {
    console.log(`\n==> ${label}`)
    execFileSync(cmd, args, { cwd, stdio: 'inherit' })
}

const main = () => {
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
    run('Regenerating Flutter icon widgets', 'node', ['packages/flutter/tool/generate_icons.mjs'])
    run('Regenerating Flutter example gallery registry', 'node', [
        'packages/flutter/tool/generate_gallery_registry.mjs',
    ])
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
}

main()
