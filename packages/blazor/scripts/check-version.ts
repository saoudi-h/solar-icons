import fs from 'node:fs'
import path from 'node:path'

import { packageRoot } from './lib'

const read = (file: string): string => fs.readFileSync(path.join(packageRoot, file), 'utf8')
const version = /<Version>([^<]+)<\/Version>/.exec(
    read('src/SolarIcons.Blazor/SolarIcons.Blazor.csproj')
)?.[1]
if (!version) throw new Error('The package version is missing from SolarIcons.Blazor.csproj')

const problems: string[] = []
for (const probe of [
    'probes/PackageConsumer/PackageConsumer.csproj',
    'probes/TrimProbe/TrimProbe.csproj',
]) {
    const probeVersion = /Include="SolarIcons\.Blazor" Version="([^"]+)"/.exec(read(probe))?.[1]
    if (probeVersion !== version)
        problems.push(`${probe} references ${probeVersion}, expected ${version}`)
}
const newest = /^## (\S+)/m.exec(read('CHANGELOG.md'))?.[1]
if (newest !== version) problems.push(`CHANGELOG.md starts with ${newest}, expected ${version}`)

if (problems.length) {
    console.error(problems.join('\n'))
    throw new Error(
        'The package version is not consistent; see docs/RELEASE-PROCEDURE.md section 9'
    )
}
console.log(`Blazor package version ${version} is consistent`)
