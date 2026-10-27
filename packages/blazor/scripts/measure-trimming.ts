import fs from 'node:fs'
import path from 'node:path'

import { packageRoot, readJson, relative, run, runChecked, sha256, writeJson } from './lib'

interface TrimCase {
    id: string
    mode: 'empty' | 'static' | 'dynamic'
    iconNames: string[]
    componentTypes: string[]
}

interface Measurement {
    framework: string
    case: string
    mode: string
    logicalIcons: number
    publishSeconds: number
    libraryBytes: number
    libraryBrotliBytes: number
    retainedIconTypes: string[]
    frameworkUncompressedBytes: number
    frameworkBrotliBytes: number
    trimWarnings: string[]
}

interface SavedResults {
    packageSha256?: string
    generatedHash?: string
    measurements?: Measurement[]
}

const args = process.argv.slice(2)
const option = (name: string): string[] =>
    (args.find(arg => arg.startsWith(`--${name}=`))?.split('=')[1] ?? '').split(',').filter(Boolean)
const frameworks = option('frameworks').length ? option('frameworks') : ['net8.0', 'net10.0']
const caseIds = option('cases')
const resume = args.includes('--resume')
const validateOnly = args.includes('--validate-only')
const known = new Set(['--resume', '--validate-only'])
for (const arg of args)
    if (!known.has(arg) && !arg.startsWith('--frameworks=') && !arg.startsWith('--cases='))
        throw new Error(`Unknown option: ${arg}`)
for (const framework of frameworks)
    if (!['net8.0', 'net10.0'].includes(framework)) throw new Error('Unsupported target framework')

let plan = readJson<TrimCase[]>('artifacts/trim-cases.json')
if (caseIds.length) {
    for (const id of caseIds)
        if (!plan.some(item => item.id === id)) throw new Error(`Unknown case: ${id}`)
    plan = plan.filter(item => caseIds.includes(item.id))
}

const resultPath = path.join(packageRoot, 'artifacts/trim-comparison.json')
const csproject = fs.readFileSync(
    path.join(packageRoot, 'src/SolarIcons.Blazor/SolarIcons.Blazor.csproj'),
    'utf8'
)
const packageVersion = /<Version>([^<]+)<\/Version>/.exec(csproject)?.[1]
if (!packageVersion) throw new Error('The package version is missing')
const snapshotRoot = path.join(packageRoot, 'artifacts/measured-packages')
const saved: SavedResults | null =
    validateOnly && fs.existsSync(resultPath)
        ? (JSON.parse(fs.readFileSync(resultPath, 'utf8')) as SavedResults)
        : null
const savedArchive =
    saved?.packageSha256 && /^[a-f0-9]{64}$/i.test(saved.packageSha256)
        ? path.join(snapshotRoot, `${saved.packageSha256}.nupkg`)
        : null
const archive =
    savedArchive && fs.existsSync(savedArchive)
        ? savedArchive
        : path.join(packageRoot, `artifacts/packages/SolarIcons.Blazor.${packageVersion}.nupkg`)
const packageHash = sha256(archive)
fs.mkdirSync(snapshotRoot, { recursive: true })
const snapshotPath = path.join(snapshotRoot, `${packageHash}.nupkg`)
if (!fs.existsSync(snapshotPath)) fs.copyFileSync(archive, snapshotPath)
if (sha256(snapshotPath) !== packageHash)
    throw new Error('The benchmark archive snapshot was modified')
// `pack` builds this assembly, so it is the runtime assembly of the measured archive.
const librarySha256 = sha256(
    path.join(packageRoot, 'src/SolarIcons.Blazor/bin/Release/net8.0/SolarIcons.Blazor.dll')
)
const catalogue = readJson<{ generatedHash: string }>('catalogue-manifest.json')

const measurements: Measurement[] = []
if ((resume || validateOnly) && fs.existsSync(resultPath)) {
    const previous = JSON.parse(fs.readFileSync(resultPath, 'utf8')) as SavedResults
    if (
        previous.packageSha256 !== packageHash ||
        previous.generatedHash !== catalogue.generatedHash
    )
        throw new Error('Saved measurements refer to different inputs; start a fresh run')
    measurements.push(...(previous.measurements ?? []))
}

const dotnetVersion = runChecked('dotnet', ['--version'], 'dotnet is unavailable').trim()
function saveResults(): void {
    writeJson('artifacts/trim-comparison.json', {
        sdk: dotnetVersion,
        packageVersion,
        packageSha256: packageHash,
        librarySha256,
        packageSnapshot: relative(snapshotPath),
        generatedHash: catalogue.generatedHash,
        publishTrimmed: true,
        webcil: false,
        aot: false,
        staticWeight: 'Linear',
        selection: 'Home first, then remaining canonical names in ordinal order',
        measurements,
    })
}

function assertMeasurement(measurement: Measurement, scenario: TrimCase): void {
    const label = `${measurement.framework}/${scenario.id}`
    const actual = [...measurement.retainedIconTypes].sort().join(',')
    const expected = [...scenario.componentTypes].sort().join(',')
    if (actual !== expected) throw new Error(`Unexpected retained types: ${label}`)
    if (measurement.trimWarnings.length) throw new Error(`IL warnings: ${label}`)
    if (scenario.mode === 'empty' && measurement.libraryBytes !== 0)
        throw new Error('Empty consumer retained the library')
}

const fileSize = (file: string): number => fs.statSync(file).size

if (!validateOnly) {
    for (const framework of frameworks) {
        runChecked(
            'dotnet',
            ['restore', 'probes/TrimProbe', `-p:TargetFramework=${framework}`, '--nologo'],
            `Restore failed for ${framework}`
        )
        for (const scenario of plan) {
            const existing = measurements.find(
                item => item.framework === framework && item.case === scenario.id
            )
            if (existing) {
                assertMeasurement(existing, scenario)
                continue
            }
            const allowedRoot = path.join(packageRoot, 'artifacts/comparison')
            const output = path.resolve(allowedRoot, framework, scenario.id)
            if (!output.startsWith(allowedRoot + path.sep))
                throw new Error('Publish output is outside the verified benchmark directory')
            fs.rmSync(output, { recursive: true, force: true })
            const log = path.join(packageRoot, `artifacts/trim-${framework}-${scenario.id}.log`)
            const started = performance.now()
            const publish = run(
                'dotnet',
                [
                    'publish',
                    'probes/TrimProbe',
                    '-c',
                    'Release',
                    '--no-restore',
                    `-p:TargetFramework=${framework}`,
                    `-p:ProbeCase=${scenario.id}`,
                    '-o',
                    output,
                    '--nologo',
                ],
                log
            )
            const publishSeconds = Math.round((performance.now() - started) / 10) / 100
            if (publish.status !== 0) {
                console.error(publish.output.split('\n').slice(-25).join('\n'))
                throw new Error(`Publish failed: ${framework}/${scenario.id}`)
            }
            const frameworkPath = path.join(output, 'wwwroot/_framework')
            const names = fs.readdirSync(frameworkPath)
            const libraryName = names.find(name => /^SolarIcons\.Blazor.*\.dll$/.test(name))
            let inspection = { bytes: 0, types: [] as string[] }
            if (libraryName)
                inspection = JSON.parse(
                    runChecked(
                        'dotnet',
                        [
                            'tools/AssemblyInspector/bin/Release/net10.0/AssemblyInspector.dll',
                            path.join(frameworkPath, libraryName),
                        ],
                        'Assembly inspection failed'
                    )
                ) as typeof inspection
            const files = names.filter(name => !/\.(br|gz|pdb|map)$/.test(name))
            const brotliOf = (name: string): number => {
                const compressed = path.join(frameworkPath, `${name}.br`)
                return fs.existsSync(compressed)
                    ? fileSize(compressed)
                    : fileSize(path.join(frameworkPath, name))
            }
            const measurement: Measurement = {
                framework,
                case: scenario.id,
                mode: scenario.mode,
                logicalIcons: scenario.iconNames.length,
                publishSeconds,
                libraryBytes: inspection.bytes,
                libraryBrotliBytes: libraryName ? brotliOf(libraryName) : inspection.bytes,
                retainedIconTypes: inspection.types.filter(type => type.endsWith('Icon')),
                frameworkUncompressedBytes: files.reduce(
                    (sum, name) => sum + fileSize(path.join(frameworkPath, name)),
                    0
                ),
                frameworkBrotliBytes: files.reduce((sum, name) => sum + brotliOf(name), 0),
                trimWarnings: publish.output.split('\n').filter(line => /warning IL\d+/.test(line)),
            }
            assertMeasurement(measurement, scenario)
            measurements.push(measurement)
            saveResults()
            console.log(
                `${framework}/${scenario.id} : ${measurement.libraryBytes} library bytes (${measurement.libraryBrotliBytes} Brotli), ${measurement.retainedIconTypes.length} retained icon types, ${publishSeconds}s`
            )
        }
    }
}

for (const framework of frameworks)
    for (const scenario of plan) {
        const matches = measurements.filter(
            item => item.framework === framework && item.case === scenario.id
        )
        if (matches.length !== 1)
            throw new Error(`Missing or duplicate result: ${framework}/${scenario.id}`)
        assertMeasurement(matches[0]!, scenario)
    }
saveResults()
