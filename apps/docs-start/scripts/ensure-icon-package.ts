import { access } from 'node:fs/promises'
import path from 'node:path'
import { spawn } from 'node:child_process'
import { fileURLToPath } from 'node:url'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const packageEntry = path.resolve(appRoot, '../../packages/react/dist/index.mjs')
const packageSourceEntry = path.resolve(appRoot, '../../packages/react/src/icons/bold-duotone/home.tsx')

try {
    await access(packageEntry)
    await access(packageSourceEntry)
    console.log('Using the existing @solar-icons/react build.')
} catch {
    console.log('Building @solar-icons/react workspace output before the static site.')
    const child = spawn('pnpm', ['--filter', '@solar-icons/react', 'build'], {
        cwd: path.resolve(appRoot, '../..'),
        stdio: 'inherit',
    })

    const exitCode = await new Promise<number>((resolve, reject) => {
        child.once('error', reject)
        child.once('exit', code => resolve(code ?? 1))
    })

    if (exitCode !== 0) process.exit(exitCode)
}
