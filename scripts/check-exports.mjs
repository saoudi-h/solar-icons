import { spawn } from 'node:child_process'
import { readdirSync, readFileSync, existsSync } from 'node:fs'
import { availableParallelism } from 'node:os'
import { resolve } from 'node:path'

const root = process.cwd()
const packagesDir = resolve(root, 'packages')
const cli = resolve(root, 'node_modules/publint/src/cli.js')

const pkgs = readdirSync(packagesDir, { withFileTypes: true })
    .filter(e => e.isDirectory())
    .map(e => e.name)
    .filter(dir => {
        const pkgPath = resolve(packagesDir, dir, 'package.json')
        if (!existsSync(pkgPath)) return false
        const pkg = JSON.parse(readFileSync(pkgPath, 'utf8'))
        return !pkg.private && typeof pkg.version === 'string' && pkg.version !== ''
    })

function check(name) {
    return new Promise(done => {
        const child = spawn(process.execPath, [cli, 'run', '.', '--strict'], {
            cwd: resolve(packagesDir, name),
            timeout: 600000,
        })
        let output = ''
        child.stdout.on('data', chunk => (output += chunk))
        child.stderr.on('data', chunk => (output += chunk))
        child.on('close', status => done({ name, ok: status === 0, output: output.trim() }))
    })
}

// The packages are independent and each check is slow, so they run side by
// side. The results are printed in the order of the packages.
const results = new Array(pkgs.length)
let next = 0
await Promise.all(
    Array.from({ length: Math.min(availableParallelism(), pkgs.length) }, async () => {
        while (next < pkgs.length) {
            const index = next++
            results[index] = await check(pkgs[index])
        }
    })
)

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
