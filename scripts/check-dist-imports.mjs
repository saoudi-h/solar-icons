import { readdirSync, readFileSync, existsSync, statSync } from 'node:fs'
import { builtinModules } from 'node:module'
import { resolve, join } from 'node:path'

import { init, parse } from 'es-module-lexer'

const root = process.cwd()
const packagesDir = resolve(root, 'packages')

// A published bundle may only import what its consumers will have installed:
// the package's own dependencies and peers, or a Node built-in. Anything else
// (for example a runtime that a build plugin started to target after an update)
// breaks every install, and neither the build nor publint notices.
const BUNDLE_FILE = /\.(?:mjs|cjs|js)$/

// Modules the host application always provides, even though the package does not declare them.
const PROVIDED_BY_HOST = {
    nuxt: ['vue'],
}

await init

function packageNameOf(specifier) {
    const parts = specifier.split('/')
    return specifier.startsWith('@') ? parts.slice(0, 2).join('/') : parts[0]
}

function isExternal(specifier) {
    return !(
        specifier.startsWith('.') ||
        specifier.startsWith('/') ||
        specifier.startsWith('#') ||
        specifier.startsWith('data:')
    )
}

function isBuiltin(specifier) {
    const bare = specifier.startsWith('node:') ? specifier.slice(5) : specifier
    return builtinModules.includes(bare) || builtinModules.includes(bare.split('/')[0])
}

function* walk(dir) {
    for (const entry of readdirSync(dir)) {
        const path = join(dir, entry)
        // A vendored dependency is bundled code: its own imports are not ours to declare.
        if (entry === 'node_modules') continue
        if (statSync(path).isDirectory()) yield* walk(path)
        else if (BUNDLE_FILE.test(entry)) yield path
    }
}

const pkgs = readdirSync(packagesDir, { withFileTypes: true })
    .filter(e => e.isDirectory())
    .map(e => e.name)
    .map(dir => ({ dir, pkgPath: resolve(packagesDir, dir, 'package.json') }))
    .filter(({ pkgPath }) => existsSync(pkgPath))
    .map(entry => ({ ...entry, pkg: JSON.parse(readFileSync(entry.pkgPath, 'utf8')) }))
    .filter(({ pkg }) => !pkg.private && typeof pkg.version === 'string' && pkg.version !== '')

let failed = 0
let checked = 0

for (const { dir, pkg } of pkgs) {
    const distDir = resolve(packagesDir, dir, 'dist')
    if (!existsSync(distDir)) continue
    checked++

    const allowed = new Set([
        pkg.name,
        ...Object.keys(pkg.dependencies ?? {}),
        ...Object.keys(pkg.peerDependencies ?? {}),
        ...Object.keys(pkg.optionalDependencies ?? {}),
        ...(PROVIDED_BY_HOST[dir] ?? []),
    ])
    const missing = new Map()

    for (const file of walk(distDir)) {
        const source = readFileSync(file, 'utf8')
        const [imports] = parse(source)
        for (const { specifier } of imports) {
            if (typeof specifier !== 'string' || !isExternal(specifier) || isBuiltin(specifier))
                continue
            const name = packageNameOf(specifier)
            if (allowed.has(name)) continue
            if (!missing.has(name)) missing.set(name, file.slice(distDir.length + 1))
        }
    }

    if (missing.size === 0) {
        console.log(`✓ ${dir}`)
        continue
    }
    failed++
    console.log(`✗ ${dir}`)
    for (const [name, file] of missing) {
        console.log(
            `  imports "${name}" (first seen in dist/${file}) but it is not a dependency or peer`
        )
    }
}

if (failed > 0) {
    console.error(`\n${failed} package(s) import modules their consumers will not have.`)
    process.exit(1)
}

console.log(`All ${checked} built packages only import declared dependencies.`)
