import fs from 'node:fs'
import path from 'node:path'

import { packageRoot, readJson, run, runChecked, writeJson } from './lib'

interface Catalogue {
    componentTypes: number
    generatedHash: string
}

const project = 'src/SolarIcons.Blazor'
const measurements: Array<{ kind: string; seconds: number; warnings: number }> = []

runChecked('dotnet', ['restore', project, '--nologo'], 'Library restore failed')
for (const kind of ['rebuild', 'incremental']) {
    const log = path.join(packageRoot, `artifacts/build-${kind}.log`)
    const args = ['build', project, '-c', 'Release', '--no-restore', '--nologo']
    args.push('-p:UseSharedCompilation=false')
    if (kind === 'rebuild') args.push('-t:Rebuild')
    const started = performance.now()
    const result = run('dotnet', args, log)
    const seconds = Math.round((performance.now() - started) / 10) / 100
    if (result.status !== 0) {
        console.error(result.output.split('\n').slice(-20).join('\n'))
        throw new Error(`Library ${kind} failed`)
    }
    const warnings = result.output.split('\n').filter(line => line.includes(': warning ')).length
    measurements.push({ kind, seconds, warnings })
    console.log(`${kind} : ${seconds} seconds`)
}

const catalogue = readJson<Catalogue>('catalogue-manifest.json')
const library = path.join(packageRoot, project, 'bin/Release/net8.0/SolarIcons.Blazor.dll')
writeJson('artifacts/build-results.json', {
    sdk: runChecked('dotnet', ['--version'], 'dotnet is unavailable').trim(),
    targetFramework: 'net8.0',
    generatedTypes: catalogue.componentTypes,
    generatedHash: catalogue.generatedHash,
    sharedCompilation: false,
    restoreIncluded: false,
    generatedFilesAlreadyPresent: true,
    libraryBytes: fs.statSync(library).size,
    measurements,
})
