#!/usr/bin/env node

import { realpathSync } from 'node:fs'
import { readdir, readFile, writeFile } from 'node:fs/promises'
import { extname, join, resolve } from 'node:path'
import { pathToFileURL } from 'node:url'

import * as prompts from '@clack/prompts'
import { Command, InvalidArgumentError } from 'commander'
import pc from 'picocolors'

import { detectFrameworks } from './detect.js'
import { transformPackageJson } from './package-json.js'
import {
    collectAngularSelectorRenames,
    transformAngular,
    transformAngularTemplate,
} from './transforms/angular.js'
import { transformNuxt } from './transforms/nuxt.js'
import { transformReactNative } from './transforms/react-native.js'
import { transformReactPerf } from './transforms/react-perf.js'
import { transformReact } from './transforms/react.js'
import { transformSolid } from './transforms/solid.js'
import { transformSvelte } from './transforms/svelte.js'
import { transformVue } from './transforms/vue.js'
import type { Diagnostic, MigrationOptions, MigrationReport, ReactV1Mode } from './types.js'

const sourceExtensions = new Set(['.html', '.js', '.jsx', '.mjs', '.ts', '.tsx', '.svelte', '.vue'])
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

export async function runMigration({
    cwd,
    reactV1Mode = 'static',
    targetVersion,
    vueV1Mode = 'static',
    write = false,
}: MigrationOptions): Promise<MigrationReport> {
    const frameworks = await detectFrameworks(cwd)
    const files = await sourceFiles(cwd)
    const sources = new Map<string, string>(
        await Promise.all(files.map(async file => [file, await readFile(file, 'utf8')] as const))
    )
    const angularSelectorRenames = new Map<string, string>()
    for (const [file, source] of sources) {
        for (const [legacySelector, nextSelector] of collectAngularSelectorRenames(source, file)) {
            angularSelectorRenames.set(legacySelector, nextSelector)
        }
    }
    const existingFiles = new Set(files)
    const changedFiles: string[] = []
    const diagnostics: Diagnostic[] = []

    for (const file of files) {
        const source = sources.get(file)!
        const reactPerfResult = transformReactPerf(source, file)
        const reactResult = transformReact(reactPerfResult.code, file, reactV1Mode)
        const reactNativeResult = transformReactNative(reactResult.code, file)
        const vueResult = transformVue(reactNativeResult.code, file, vueV1Mode)
        const nuxtResult = transformNuxt(vueResult.code, file)
        const svelteResult = transformSvelte(nuxtResult.code, file)
        const solidResult = transformSolid(svelteResult.code, file)
        const angularResult = transformAngular(solidResult.code, file, existingFiles)
        const angularTemplateResult = transformAngularTemplate(
            angularResult.code,
            angularSelectorRenames
        )
        diagnostics.push(
            ...reactPerfResult.diagnostics,
            ...reactResult.diagnostics,
            ...reactNativeResult.diagnostics,
            ...vueResult.diagnostics,
            ...nuxtResult.diagnostics,
            ...svelteResult.diagnostics,
            ...solidResult.diagnostics,
            ...angularResult.diagnostics,
            ...angularTemplateResult.diagnostics
        )
        if (
            !reactPerfResult.changed &&
            !reactResult.changed &&
            !reactNativeResult.changed &&
            !vueResult.changed &&
            !nuxtResult.changed &&
            !svelteResult.changed &&
            !solidResult.changed &&
            !angularResult.changed &&
            !angularTemplateResult.changed
        )
            continue

        changedFiles.push(file)
        if (write) await writeFile(file, angularTemplateResult.code)
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

function parseMode(value: string): ReactV1Mode {
    if (value === 'static' || value === 'dynamic') return value
    throw new InvalidArgumentError('Expected either "static" or "dynamic".')
}

function formatDiagnostic(diagnostic: Diagnostic): string {
    const location =
        diagnostic.file && diagnostic.line
            ? `${diagnostic.file}:${diagnostic.line}:${diagnostic.column ?? 1}`
            : diagnostic.file
    const severity = diagnostic.severity === 'error' ? pc.red('error') : pc.yellow('warning')
    return `${pc.dim(location ?? 'solar-icons')} ${severity} ${pc.bold(`[${diagnostic.code}]`)} ${diagnostic.message}`
}

function printReport(report: MigrationReport, write: boolean) {
    console.info(
        `${pc.cyan('Detected frameworks:')} ${report.detectedFrameworks.join(', ') || 'none'}`
    )
    console.info(
        `${write ? pc.green('Migrated') : pc.cyan('Would migrate')} ${pc.bold(String(report.changedFiles.length))} file(s).`
    )
    for (const diagnostic of report.diagnostics) {
        console.warn(formatDiagnostic(diagnostic))
    }
    if (!write && report.changedFiles.length > 0)
        console.info(pc.dim('Run again with --write to apply these changes.'))
}

async function selectMode(label: string): Promise<ReactV1Mode | undefined> {
    const result = await prompts.select({
        message: `${label} migration strategy`,
        options: [
            {
                value: 'static',
                label: 'Static (recommended)',
                hint: 'one style per import and the smallest bundle',
            },
            {
                value: 'dynamic',
                label: 'Dynamic',
                hint: 'preserve runtime style switching',
            },
        ],
    })
    if (prompts.isCancel(result)) return undefined
    return result as ReactV1Mode
}

async function interactiveOptions(cwd: string): Promise<Omit<MigrationOptions, 'cwd'> | undefined> {
    prompts.intro(pc.bgCyan(pc.black(' Solar Icons v2 migration ')))
    const frameworks = await detectFrameworks(cwd)
    prompts.log.info(`Detected: ${frameworks.join(', ') || 'no supported framework'}`)

    const reactV1Mode = frameworks.includes('react') ? await selectMode('React') : undefined
    if (frameworks.includes('react') && !reactV1Mode) {
        prompts.cancel('Migration cancelled.')
        return undefined
    }

    const vueV1Mode = frameworks.includes('vue') ? await selectMode('Vue') : undefined
    if (frameworks.includes('vue') && !vueV1Mode) {
        prompts.cancel('Migration cancelled.')
        return undefined
    }

    const action = await prompts.select({
        message: 'Choose an action',
        options: [
            { value: 'preview', label: 'Preview changes', hint: 'does not modify files' },
            { value: 'write', label: 'Apply changes', hint: 'writes the migration to disk' },
        ],
    })
    if (prompts.isCancel(action)) {
        prompts.cancel('Migration cancelled.')
        return undefined
    }

    const write = action === 'write'
    if (write) {
        const confirmed = await prompts.confirm({
            message: 'Write the migration to this project?',
            initialValue: false,
        })
        if (prompts.isCancel(confirmed) || !confirmed) {
            prompts.cancel('Migration cancelled.')
            return undefined
        }
    }

    return { reactV1Mode, vueV1Mode, write }
}

interface CliOptions {
    cwd?: string
    interactive?: boolean
    json?: boolean
    reactV1Mode?: ReactV1Mode
    targetVersion?: string
    vueV1Mode?: ReactV1Mode
    write?: boolean
}

async function main() {
    const program = new Command()
        .name('solar-icons-migrate')
        .description('Migrate a Solar Icons project from the pre-v2 API to v2.')
        .argument('[directory]', 'project directory, defaults to the current directory')
        .option('-C, --cwd <path>', 'project directory, kept for backwards compatibility')
        .option('-i, --interactive', 'guide the migration with prompts')
        .option('-w, --write', 'apply changes instead of previewing them')
        .option('--react-v1-mode <mode>', 'React strategy: static or dynamic', parseMode)
        .option('--vue-v1-mode <mode>', 'Vue strategy: static or dynamic', parseMode)
        .option('--target-version <version>', 'Solar Icons v2 version to add to package.json')
        .option('--json', 'write a machine-readable report to stdout')
        .showHelpAfterError()
        .showSuggestionAfterError()

    program.action(async (directory: string | undefined, options: CliOptions) => {
        if (directory && options.cwd)
            program.error('Use either [directory] or --cwd, not both.', { exitCode: 2 })
        if (options.interactive && options.json)
            program.error('--interactive cannot be combined with --json.', { exitCode: 2 })

        const cwd = resolve(options.cwd ?? directory ?? process.cwd())
        const interactive = options.interactive ? await interactiveOptions(cwd) : undefined
        if (options.interactive && !interactive) return

        const migrationOptions: MigrationOptions = {
            cwd,
            reactV1Mode: interactive?.reactV1Mode ?? options.reactV1Mode,
            targetVersion: options.targetVersion,
            vueV1Mode: interactive?.vueV1Mode ?? options.vueV1Mode,
            write: interactive?.write ?? options.write,
        }
        const report = await runMigration(migrationOptions)
        if (options.json) console.info(JSON.stringify(report, null, 2))
        else printReport(report, Boolean(migrationOptions.write))
        if (options.interactive) prompts.outro('Migration complete.')
    })

    await program.parseAsync()
}

const entryPoint = process.argv[1] ? realpathSync(process.argv[1]) : undefined
if (entryPoint && import.meta.url === pathToFileURL(entryPoint).href) void main()
