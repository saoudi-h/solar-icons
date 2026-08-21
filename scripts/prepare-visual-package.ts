import { spawnSync } from 'node:child_process'
import { createHash } from 'node:crypto'
import fs from 'node:fs'
import path from 'node:path'
import { generateTestAppIconLists } from './generate-test-app-icon-lists'

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')
const STATE_ROOT = path.join(REPOSITORY_ROOT, 'node_modules/.cache/solar-icons-builds')

const packageNames = new Set([
    '@solar-icons/angular',
    '@solar-icons/js',
    '@solar-icons/react',
    '@solar-icons/react-native',
    '@solar-icons/solid',
    '@solar-icons/static',
    '@solar-icons/svelte',
    '@solar-icons/vue',
])

const packageDirectory = (packageName: string): string =>
    path.join(REPOSITORY_ROOT, 'packages', packageName.slice('@solar-icons/'.length))

const walkFiles = (directory: string): string[] => {
    if (!fs.existsSync(directory)) return []

    const files: string[] = []
    for (const entry of fs.readdirSync(directory, { withFileTypes: true })) {
        const entryPath = path.join(directory, entry.name)
        if (entry.isDirectory()) files.push(...walkFiles(entryPath))
        else if (entry.isFile()) files.push(entryPath)
    }
    return files.sort()
}

const sourceFiles = (packageName: string): string[] => {
    const packageRoot = packageDirectory(packageName)
    const files = [
        path.join(REPOSITORY_ROOT, 'packages/core/src/metadata.json'),
        path.join(REPOSITORY_ROOT, 'packages/core/src/metadata-descriptions.json'),
        path.join(packageRoot, 'package.json'),
        path.join(packageRoot, 'tsdown.config.ts'),
        ...walkFiles(path.join(REPOSITORY_ROOT, 'packages/core/svgs')),
        ...walkFiles(path.join(packageRoot, 'scripts')),
        ...walkFiles(path.join(packageRoot, 'src/lib')),
    ]

    if (packageName === '@solar-icons/angular') {
        files.push(path.join(packageRoot, 'src/test-setup.ts'))
    }

    return [...new Set(files)].filter(file => fs.existsSync(file)).sort()
}

const fingerprint = (packageName: string): string => {
    const hash = createHash('sha256')
    for (const filename of sourceFiles(packageName)) {
        hash.update(path.relative(REPOSITORY_ROOT, filename))
        hash.update('\0')
        hash.update(fs.readFileSync(filename))
        hash.update('\0')
    }
    return hash.digest('hex')
}

const hasBuildOutput = (packageName: string): boolean => {
    const packageRoot = packageDirectory(packageName)
    const outputPaths: Record<string, string[]> = {
        '@solar-icons/angular': ['dist/lib/index.js'],
        '@solar-icons/js': ['dist/index.mjs'],
        '@solar-icons/react': ['dist/index.mjs', 'dist/icons/style/linear.mjs'],
        '@solar-icons/react-native': ['dist/index.mjs', 'dist/icons/style/linear.mjs'],
        '@solar-icons/solid': ['dist/index.mjs', 'dist/icons/style/linear.mjs'],
        '@solar-icons/static': ['dist/index.mjs'],
        '@solar-icons/svelte': ['dist/index.js'],
        '@solar-icons/vue': ['dist/index.mjs', 'dist/icons/style/linear.mjs'],
    }
    return outputPaths[packageName].every(relativePath =>
        fs.existsSync(path.join(packageRoot, relativePath))
    )
}

const outputIsNewerThanInputs = (packageName: string): boolean => {
    const outputRelativePath =
        packageName === '@solar-icons/angular'
            ? 'dist/lib/index.js'
            : packageName === '@solar-icons/svelte'
              ? 'dist/index.js'
              : 'dist/index.mjs'
    const outputPath = path.join(packageDirectory(packageName), outputRelativePath)
    if (!fs.existsSync(outputPath)) return false

    const outputMtime = fs.statSync(outputPath).mtimeMs
    return sourceFiles(packageName).every(file => fs.statSync(file).mtimeMs <= outputMtime)
}

const main = async () => {
    const packageName = process.argv[2]
    if (!packageName || !packageNames.has(packageName)) {
        throw new Error(`Usage: pnpm prepare:visual-package <${[...packageNames].join(' | ')}>`)
    }

    await generateTestAppIconLists()

    const statePath = path.join(STATE_ROOT, `${packageName.replaceAll('/', '__')}.json`)
    const currentFingerprint = fingerprint(packageName)
    let previousFingerprint: string | undefined
    if (fs.existsSync(statePath)) {
        try {
            previousFingerprint = JSON.parse(fs.readFileSync(statePath, 'utf8')).fingerprint
        } catch {
            previousFingerprint = undefined
        }
    }

    if (
        hasBuildOutput(packageName) &&
        (previousFingerprint === currentFingerprint ||
            (!previousFingerprint && outputIsNewerThanInputs(packageName)))
    ) {
        if (!previousFingerprint) {
            fs.mkdirSync(STATE_ROOT, { recursive: true })
            fs.writeFileSync(
                statePath,
                `${JSON.stringify({ fingerprint: currentFingerprint, packageName }, null, 2)}\n`
            )
        }
        console.log(`Skipped ${packageName} build (inputs unchanged).`)
        return
    }

    console.log(`Building ${packageName} (inputs changed or output missing)...`)
    const result = spawnSync('pnpm', ['--filter', packageName, 'build'], {
        cwd: REPOSITORY_ROOT,
        env: { ...process.env, SOLAR_ICONS_DEV_BUILD: '1' },
        stdio: 'inherit',
    })
    if (result.status !== 0) process.exit(result.status ?? 1)

    fs.mkdirSync(STATE_ROOT, { recursive: true })
    fs.writeFileSync(
        statePath,
        `${JSON.stringify({ fingerprint: currentFingerprint, packageName }, null, 2)}\n`
    )
}

await main()
