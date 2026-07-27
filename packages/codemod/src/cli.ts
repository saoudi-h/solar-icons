#!/usr/bin/env node

import { readdir, readFile, writeFile } from 'node:fs/promises'
import { extname, join, resolve } from 'node:path'
import { pathToFileURL } from 'node:url'

import { detectFrameworks } from './detect.js'
import { transformPackageJson } from './package-json.js'
import { transformReactPerf } from './transforms/react-perf.js'
import { transformReact } from './transforms/react.js'
import type { Diagnostic, MigrationOptions, MigrationReport, ReactV1Mode } from './types.js'

const sourceExtensions = new Set(['.js', '.jsx', '.mjs', '.ts', '.tsx'])
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
        diagnostics.push(...reactPerfResult.diagnostics, ...reactResult.diagnostics)
        if (!reactPerfResult.changed && !reactResult.changed) continue

        changedFiles.push(file)
        if (write) await writeFile(file, reactResult.code)
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
    const cwd = resolve(option('--cwd') ?? process.cwd())
    const write = process.argv.includes('--write')
    const reactV1ModeOption = option('--react-v1-mode')
    const targetVersion = option('--target-version')
    if (reactV1ModeOption && reactV1ModeOption !== 'static' && reactV1ModeOption !== 'dynamic') {
        throw new Error('--react-v1-mode must be either static or dynamic.')
    }
    const reactV1Mode = reactV1ModeOption as ReactV1Mode | undefined
    const report = await runMigration({ cwd, reactV1Mode, targetVersion, write })

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
