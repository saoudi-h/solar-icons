import fs from 'node:fs'
import path from 'node:path'

import { generate, packageRoot, sha256, writeJson } from './lib'

const manifest = path.join(packageRoot, 'catalogue-manifest.json')
const extra = path.join(packageRoot, 'src/SolarIcons.Blazor/Generated/unexpected-drift.tmp')

function mustPass(extraArgs: string[]): void {
    const result = generate(extraArgs)
    if (result.status !== 0) {
        console.error(result.output)
        throw new Error('Generation check failed')
    }
}

mustPass(['--check'])
const first = sha256(manifest)
mustPass([])
const second = sha256(manifest)
if (first !== second) throw new Error('Repeated generation was not deterministic')

if (fs.existsSync(extra)) throw new Error('Preserve existing drift fixture and investigate')
try {
    fs.writeFileSync(extra, 'Intentional drift fixture')
    if (generate(['--check']).status === 0)
        throw new Error('Unexpected generated file was not rejected')
} finally {
    fs.rmSync(extra, { force: true })
}
mustPass(['--check'])

writeJson('artifacts/generator-checks.json', {
    passed: true,
    deterministic: true,
    manifestSha256: first,
    extraFileDriftRejected: true,
})
console.log('Generator is deterministic and rejects drift')
