#!/usr/bin/env node

import { readdir, readFile, writeFile } from 'node:fs/promises'
import { extname, join, resolve } from 'node:path'
import { pathToFileURL } from 'node:url'

import { detectFrameworks } from './detect.js'
import { transformPackageJson } from './package-json.js'
import { transformAngular } from './transforms/angular.js'
import { transformNuxt } from './transforms/nuxt.js'
import { transformReactNative } from './transforms/react-native.js'
import { transformReactPerf } from './transforms/react-perf.js'
import { transformReact } from './transforms/react.js'
import { transformSolid } from './transforms/solid.js'
import { transformSvelte } from './transforms/svelte.js'
import { transformVue } from './transforms/vue.js'
import type { Diagnostic, MigrationOptions, MigrationReport, ReactV1Mode } from './types.js'

const sourceExtensions = new Set(['.js', '.jsx', '.mjs', '.ts', '.tsx', '.svelte', '.vue'])
const ignoredDirectories = new Set([
    '.git',
    '.next',
    '.nuxt',
    '.svelte-kit',
    'coverage',
    'dist',
    'node_modules',
])

async function sourceFiles(directory: string): Promise<string[]> {
    const entries = await readdir(directory, { withFileTypes: true })
    const nested = await Promise.all(
        entries.map(async entry => {
            const path = join(directory, entry.name)
            if (entry.isDirectory())
                return ignoredDirectories.has(entry.name) ? [] : sourceFiles(path)
            return entry.isFile() && sourceExtensions.has(extname(entry.name)) ? [path] : []
        })
    )
    return nested.flat()
}

function option(name: string): string | undefined {
    const index = process.argv.indexOf(name)
    return index === -1 ? undefined : process.argv[index + 1]
}

export async function runMigration({
    cwd,
    reactV1Mode = 'static',
    targetVersion,
    vueV1Mode = 'static',
    write = false,
}: MigrationOptions): Promise<MigrationReport> {
    const frameworks = await detectFrameworks(cwd)
    const files = await sourceFiles(cwd)
    const changedFiles: string[] = []
    const diagnostics: Diagnostic[] = []

    for (const file of files) {
        const source = await readFile(file, 'utf8')
        const reactPerfResult = transformReactPerf(source, file)
        const reactResult = transformReact(reactPerfResult.code, file, reactV1Mode)
        const reactNativeResult = transformReactNative(reactResult.code, file)
        const vueResult = transformVue(reactNativeResult.code, file, vueV1Mode)
        const nuxtResult = transformNuxt(vueResult.code, file)
        const svelteResult = transformSvelte(nuxtResult.code, file)
        const solidResult = transformSolid(svelteResult.code, file)
        const angularResult = transformAngular(solidResult.code, file)
        diagnostics.push(
            ...reactPerfResult.diagnostics,
            ...reactResult.diagnostics,
            ...reactNativeResult.diagnostics,
            ...vueResult.diagnostics,
            ...nuxtResult.diagnostics,
            ...svelteResult.diagnostics,
            ...solidResult.diagnostics,
            ...angularResult.diagnostics
        )
        if (
            !reactPerfResult.changed &&
            !reactResult.changed &&
            !reactNativeResult.changed &&
            !vueResult.changed &&
            !nuxtResult.changed &&
            !svelteResult.changed &&
            !solidResult.changed &&
            !angularResult.changed
        )
            continue

        changedFiles.push(file)
        if (write) await writeFile(file, angularResult.code)
    }

    const packageJsonPath = join(cwd, 'package.json')
    const packageJsonResult = transformPackageJson(
        await readFile(packageJsonPath, 'utf8'),
        targetVersion
    )
    if (packageJsonResult.changed) {
        changedFiles.push(packageJsonPath)
        if (write) await writeFile(packageJsonPath, packageJsonResult.code)
    }

    return { changedFiles, diagnostics, detectedFrameworks: frameworks }
}

async function main() {
    if (process.argv.includes('--help') || process.argv.includes('-h')) {
        console.info(`Usage: solar-icons-migrate [options]

Options:
  --cwd <path>                    Project directory (default: current directory)
  --react-v1-mode <static|dynamic> React v1 strategy (default: static)
  --vue-v1-mode <static|dynamic>   Vue v1 strategy (default: static)
  --target-version <version>      Solar Icons v2 version to install (default: ^2.0.0)
  --write                         Apply changes; otherwise show a dry-run
  -h, --help                      Show this help message`)
        return
    }
    const cwd = resolve(option('--cwd') ?? process.cwd())
    const write = process.argv.includes('--write')
    const reactV1ModeOption = option('--react-v1-mode')
    const vueV1ModeOption = option('--vue-v1-mode')
    const targetVersion = option('--target-version')
    if (reactV1ModeOption && reactV1ModeOption !== 'static' && reactV1ModeOption !== 'dynamic') {
        throw new Error('--react-v1-mode must be either static or dynamic.')
    }
    if (vueV1ModeOption && vueV1ModeOption !== 'static' && vueV1ModeOption !== 'dynamic') {
        throw new Error('--vue-v1-mode must be either static or dynamic.')
    }
    const reactV1Mode = reactV1ModeOption as ReactV1Mode | undefined
    const vueV1Mode = vueV1ModeOption as ReactV1Mode | undefined
    const report = await runMigration({ cwd, reactV1Mode, targetVersion, vueV1Mode, write })

    console.info(`Detected frameworks: ${report.detectedFrameworks.join(', ') || 'none'}`)
    console.info(`${write ? 'Migrated' : 'Would migrate'} ${report.changedFiles.length} file(s).`)
    for (const diagnostic of report.diagnostics) {
        const location =
            diagnostic.file && diagnostic.line
                ? `${diagnostic.file}:${diagnostic.line}:${diagnostic.column ?? 1}`
                : diagnostic.file
        console.warn(
            `${location ?? 'solar-icons'}: ${diagnostic.severity ?? 'warning'} [${diagnostic.code}] ${diagnostic.message}`
        )
    }
    if (!write && report.changedFiles.length > 0)
        console.info('Run again with --write to apply these changes.')
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) void main()
