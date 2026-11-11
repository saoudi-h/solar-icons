import { execFileSync } from 'node:child_process'
import fs from 'node:fs'
import path from 'node:path'

import { type BumpKind, planFromStatic } from './lib/polyglot-intent'

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')

const BLAZOR_CSPROJ = 'packages/blazor/src/SolarIcons.Blazor/SolarIcons.Blazor.csproj'
const FLUTTER_PUBSPEC = 'packages/flutter/pubspec.yaml'
const RAILS_VERSION = 'packages/rails/lib/solar_icons/version.rb'
const STATIC_PACKAGE = 'packages/static/package.json'
const STATIC_CHANGELOG = 'packages/static/CHANGELOG.md'

const readRepoFile = (relativePath: string): string =>
    fs.readFileSync(path.join(REPOSITORY_ROOT, relativePath), 'utf8')

const readVersion = (relativePath: string, pattern: RegExp): string => {
    const version = pattern.exec(readRepoFile(relativePath))?.[1]
    if (!version) throw new Error(`Could not read the version from ${relativePath}`)
    return version
}

const readPolyglotVersions = () => ({
    'SolarIcons.Blazor': readVersion(BLAZOR_CSPROJ, /<Version>([^<]+)<\/Version>/),
    flutter_solar_icons: readVersion(FLUTTER_PUBSPEC, /^version:\s*(\S+)/m),
    solar_icons: readVersion(RAILS_VERSION, /VERSION = "([^"]+)"/),
})

const bumpSemver = (version: string, kind: BumpKind): string => {
    const parts = version.split('.').map(Number)
    if (parts.length !== 3 || parts.some(Number.isNaN)) {
        throw new Error(`Invalid semver version: ${version}`)
    }
    const [major, minor, patch] = parts as [number, number, number]
    return kind === 'minor' ? `${major}.${minor + 1}.0` : `${major}.${minor}.${patch + 1}`
}

const prependChangelog = (
    filePath: string,
    newVersion: string,
    summary: string,
    bulletChar: '-' | '*' = '-'
) => {
    const content = fs.readFileSync(filePath, 'utf8')
    if (content.includes(`## ${newVersion}\n`)) return
    const entry = `## ${newVersion}\n\n${bulletChar} ${summary}\n\n`
    if (content.startsWith('# Changelog\n\n')) {
        fs.writeFileSync(filePath, content.replace('# Changelog\n\n', `# Changelog\n\n${entry}`))
    } else {
        fs.writeFileSync(filePath, `${entry}${content}`)
    }
}

const bumpPolyglotPackages = (kindArg: BumpKind, summary: string) => {
    // 1. Blazor
    const csprojPath = path.join(
        REPOSITORY_ROOT,
        'packages/blazor/src/SolarIcons.Blazor/SolarIcons.Blazor.csproj'
    )
    const csproj = fs.readFileSync(csprojPath, 'utf8')
    const currentBlazor = /<Version>([^<]+)<\/Version>/.exec(csproj)?.[1]
    if (!currentBlazor) throw new Error('Could not read Version from SolarIcons.Blazor.csproj')
    const nextBlazor = bumpSemver(currentBlazor, kindArg)
    fs.writeFileSync(
        csprojPath,
        csproj.replace(`<Version>${currentBlazor}</Version>`, `<Version>${nextBlazor}</Version>`)
    )
    for (const probeRel of [
        'packages/blazor/probes/PackageConsumer/PackageConsumer.csproj',
        'packages/blazor/probes/TrimProbe/TrimProbe.csproj',
    ]) {
        const probePath = path.join(REPOSITORY_ROOT, probeRel)
        const probe = fs.readFileSync(probePath, 'utf8')
        fs.writeFileSync(
            probePath,
            probe.replace(
                `Include="SolarIcons.Blazor" Version="${currentBlazor}"`,
                `Include="SolarIcons.Blazor" Version="${nextBlazor}"`
            )
        )
    }
    prependChangelog(
        path.join(REPOSITORY_ROOT, 'packages/blazor/CHANGELOG.md'),
        nextBlazor,
        summary,
        '-'
    )
    execFileSync('pnpm', ['--dir', 'packages/blazor', 'check:version'], {
        cwd: REPOSITORY_ROOT,
        stdio: 'inherit',
    })

    // 2. Flutter
    const pubspecPath = path.join(REPOSITORY_ROOT, 'packages/flutter/pubspec.yaml')
    const pubspec = fs.readFileSync(pubspecPath, 'utf8')
    const currentFlutter = /^version:\s*(\S+)/m.exec(pubspec)?.[1]
    if (!currentFlutter)
        throw new Error('Could not read version from packages/flutter/pubspec.yaml')
    const nextFlutter = bumpSemver(currentFlutter, kindArg)
    fs.writeFileSync(
        pubspecPath,
        pubspec.replace(`version: ${currentFlutter}`, `version: ${nextFlutter}`)
    )
    prependChangelog(
        path.join(REPOSITORY_ROOT, 'packages/flutter/CHANGELOG.md'),
        nextFlutter,
        summary,
        '*'
    )

    // 3. Rails
    const railsVersionPath = path.join(REPOSITORY_ROOT, 'packages/rails/lib/solar_icons/version.rb')
    const railsVersionFile = fs.readFileSync(railsVersionPath, 'utf8')
    const currentRails = /VERSION = "([^"]+)"/.exec(railsVersionFile)?.[1]
    if (!currentRails)
        throw new Error('Could not read VERSION from packages/rails/lib/solar_icons/version.rb')
    const nextRails = bumpSemver(currentRails, kindArg)
    fs.writeFileSync(
        railsVersionPath,
        railsVersionFile.replace(`VERSION = "${currentRails}"`, `VERSION = "${nextRails}"`)
    )
    const railsLockPath = path.join(REPOSITORY_ROOT, 'packages/rails/demo/Gemfile.lock')
    const railsLock = fs.readFileSync(railsLockPath, 'utf8')
    fs.writeFileSync(
        railsLockPath,
        railsLock.replace(`solar_icons (${currentRails})`, `solar_icons (${nextRails})`)
    )
    prependChangelog(
        path.join(REPOSITORY_ROOT, 'packages/rails/CHANGELOG.md'),
        nextRails,
        summary,
        '-'
    )

    console.log('\nBumped polyglot packages:')
    console.log(`  SolarIcons.Blazor:    ${currentBlazor} -> ${nextBlazor}`)
    console.log(`  flutter_solar_icons:  ${currentFlutter} -> ${nextFlutter}`)
    console.log(`  solar_icons (Rails):  ${currentRails} -> ${nextRails}`)
    console.log('\nAfter merging to main, publish all three by tagging and pushing:')
    console.log(
        `  git tag SolarIcons.Blazor-v${nextBlazor} flutter_solar_icons-v${nextFlutter} solar_icons-v${nextRails}`
    )
    console.log(
        `  git push origin SolarIcons.Blazor-v${nextBlazor} flutter_solar_icons-v${nextFlutter} solar_icons-v${nextRails}`
    )
}

/**
 * `--from-static`: runs after `changeset version`, so the working tree already
 * holds the new `@solar-icons/static` version and changelog while HEAD still
 * holds the previous ones. The declaration made for static is the only input.
 */
const bumpFromStatic = () => {
    const before = JSON.parse(
        execFileSync('git', ['show', `HEAD:${STATIC_PACKAGE}`], {
            cwd: REPOSITORY_ROOT,
            encoding: 'utf8',
        })
    ).version as string
    const after = JSON.parse(readRepoFile(STATIC_PACKAGE)).version as string

    const plan = planFromStatic({
        before,
        after,
        changelog: readRepoFile(STATIC_CHANGELOG),
        packages: readPolyglotVersions(),
    })
    if (plan.skip) {
        console.log(`Polyglot packages left as they are: ${plan.reason}.`)
        return
    }
    console.log(`@solar-icons/static ${before} -> ${after} declares a ${plan.kind} release.`)
    bumpPolyglotPackages(plan.kind, plan.summary)
}

const main = () => {
    const args = process.argv.slice(2)
    if (args.length === 1 && args[0] === '--from-static') {
        bumpFromStatic()
        return
    }
    const [kindArg, ...messageParts] = args
    if (kindArg !== 'patch' && kindArg !== 'minor') {
        console.error(
            'Usage: pnpm polyglot:bump <patch|minor> "<changelog summary>"\n       pnpm polyglot:bump --from-static'
        )
        process.exit(1)
    }
    const summary = messageParts.join(' ').trim()
    if (!summary) {
        console.error('Error: A non-empty changelog summary is required.')
        process.exit(1)
    }
    bumpPolyglotPackages(kindArg, summary)
}

main()
