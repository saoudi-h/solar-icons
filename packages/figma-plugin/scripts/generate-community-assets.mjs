import { spawn } from 'node:child_process'
import fs from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath, pathToFileURL } from 'node:url'

const scriptDirectory = path.dirname(fileURLToPath(import.meta.url))
const pluginRoot = path.resolve(scriptDirectory, '..')
const communityDirectory = path.join(pluginRoot, 'community')
const outputDirectory = path.join(communityDirectory, 'dist')

await fs.mkdir(outputDirectory, { recursive: true })
await run('rsvg-convert', [
    '--width', '128',
    '--height', '128',
    '--output', path.join(outputDirectory, 'plugin-icon-128.png'),
    path.join(communityDirectory, 'plugin-icon.svg'),
])

const presentationUrl = pathToFileURL(path.join(communityDirectory, 'presentation.html')).href
for (const [page, filename] of [
    ['thumbnail', 'thumbnail-1920x1080.png'],
    ['explore', '01-explore-1920x1080.png'],
    ['customize', '02-customize-1920x1080.png'],
    ['ecosystem', '03-ecosystem-1920x1080.png'],
]) {
    await run('chromium', [
        '--headless',
        '--no-sandbox',
        '--disable-gpu',
        '--hide-scrollbars',
        '--run-all-compositor-stages-before-draw',
        '--window-size=1920,1080',
        `--screenshot=${path.join(outputDirectory, filename)}`,
        `${presentationUrl}?page=${page}`,
    ])
}

console.info(`Generated Figma Community assets in ${outputDirectory}`)

function run(command, args) {
    return new Promise((resolve, reject) => {
        const child = spawn(command, args, { stdio: 'inherit' })
        child.on('error', reject)
        child.on('exit', code => {
            if (code === 0) resolve()
            else reject(new Error(`${command} exited with code ${code}`))
        })
    })
}
