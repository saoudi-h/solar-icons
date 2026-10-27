import { spawnSync } from 'node:child_process'
import crypto from 'node:crypto'
import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

export const packageRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')

export function relative(file: string): string {
    return path.relative(packageRoot, file).split(path.sep).join('/')
}

export function readJson<T>(file: string): T {
    return JSON.parse(fs.readFileSync(path.resolve(packageRoot, file), 'utf8')) as T
}

export function writeJson(file: string, value: unknown): void {
    const target = path.resolve(packageRoot, file)
    fs.mkdirSync(path.dirname(target), { recursive: true })
    fs.writeFileSync(target, JSON.stringify(value, null, 2) + '\n')
}

export function sha256(file: string): string {
    return crypto.createHash('sha256').update(fs.readFileSync(file)).digest('hex')
}

interface RunResult {
    status: number
    output: string
}

/** Runs a command from the package root. The combined output goes to `log` when given. */
export function run(command: string, args: string[], log?: string): RunResult {
    const result = spawnSync(command, args, {
        cwd: packageRoot,
        encoding: 'utf8',
        maxBuffer: 256 * 1024 * 1024,
    })
    const output = (result.stdout ?? '') + (result.stderr ?? '')
    if (log) {
        fs.mkdirSync(path.dirname(log), { recursive: true })
        fs.writeFileSync(log, output)
    }
    return { status: result.status ?? 1, output }
}

export function runChecked(command: string, args: string[], failure: string, log?: string): string {
    const result = run(command, args, log)
    if (result.status !== 0) {
        console.error(result.output.split('\n').slice(-25).join('\n'))
        throw new Error(failure)
    }
    return result.output
}

export function generate(extra: string[]): RunResult {
    return run(process.execPath, ['--import', 'tsx', 'scripts/generate.ts', ...extra])
}
