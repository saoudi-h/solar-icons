import { spawnSync } from 'node:child_process'
import { readdirSync, readFileSync, existsSync } from 'node:fs'
import { resolve } from 'node:path'

const root = process.cwd()
const packagesDir = resolve(root, 'packages')
const cli = resolve(root, 'node_modules/publint/src/cli.js')

const pkgs = readdirSync(packagesDir, { withFileTypes: true })
    .filter((e) => e.isDirectory())
    .map((e) => e.name)
    .filter((dir) => {
        const pkgPath = resolve(packagesDir, dir, 'package.json')
        if (!existsSync(pkgPath)) return false
        const pkg = JSON.parse(readFileSync(pkgPath, 'utf8'))
        return !pkg.private && typeof pkg.version === 'string' && pkg.version !== ''
    })

const results = pkgs.map((name) => {
    const res = spawnSync(process.execPath, [cli, 'run', '.', '--strict'], {
        cwd: resolve(packagesDir, name),
        encoding: 'utf8',
        timeout: 120000,
    })
    const output = `${res.stdout ?? ''}${res.stderr ?? ''}`.trim()
    const ok = res.status === 0
    return { name, ok, output }
})

let failed = 0
for (const { name, ok, output } of results) {
    if (ok) {
        console.log(`\u2713 ${name}`)
    } else {
        failed++
        console.log(`\u2717 ${name}`)
        if (output) console.log(output)
    }
}

if (failed > 0) {
    console.error(`\n${failed} package(s) failed export validation.`)
    process.exit(1)
}

console.log(`All ${pkgs.length} packages passed export validation.`)