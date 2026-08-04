import { spawn } from 'node:child_process'
import fs from 'node:fs/promises'
import os from 'node:os'
import path from 'node:path'
import { fileURLToPath, pathToFileURL } from 'node:url'

const scriptDirectory = path.dirname(fileURLToPath(import.meta.url))
const pluginRoot = path.resolve(scriptDirectory, '..')
const outputDirectory = path.join(pluginRoot, 'community', 'screens')
const profileDirectory = await fs.mkdtemp(path.join(os.tmpdir(), 'solar-community-capture-'))
const port = 9346

await fs.mkdir(outputDirectory, { recursive: true })

const chromium = spawn(
    'chromium',
    [
        '--headless',
        '--no-sandbox',
        '--disable-gpu',
        '--hide-scrollbars',
        `--remote-debugging-port=${port}`,
        `--user-data-dir=${profileDirectory}`,
        '--window-size=300,520',
        pathToFileURL(path.join(pluginRoot, 'dist', 'ui.html')).href,
    ],
    { stdio: 'ignore' }
)

try {
    const target = await waitForTarget()
    const cdp = connect(target.webSocketDebuggerUrl)
    await cdp.ready
    await cdp.send('Page.enable')
    await cdp.send('Emulation.setDeviceMetricsOverride', {
        width: 300,
        height: 520,
        deviceScaleFactor: 2,
        mobile: false,
    })
    await wait(400)

    await capture(cdp, '01-icons-light.png')
    await clickTab(cdp, 'Settings')
    await capture(cdp, '02-settings-light.png')
    await clickTab(cdp, 'Info')
    await cdp.send('Runtime.evaluate', {
        expression: "document.documentElement.setAttribute('data-theme', 'dark')",
    })
    await wait(100)
    await capture(cdp, '03-info-dark.png')

    await cdp.send('Browser.close')
    cdp.close()
    console.info(`Captured Community source screens in ${outputDirectory}`)
} finally {
    chromium.kill('SIGTERM')
    await fs.rm(profileDirectory, { recursive: true, force: true })
}

async function clickTab(cdp, label) {
    await cdp.send('Runtime.evaluate', {
        expression: `Array.from(document.querySelectorAll('[role="tab"]')).find(tab => tab.textContent.trim() === ${JSON.stringify(label)})?.click()`,
    })
    await wait(100)
}

async function capture(cdp, filename) {
    const { data } = await cdp.send('Page.captureScreenshot', {
        format: 'png',
        fromSurface: true,
        captureBeyondViewport: false,
    })
    await fs.writeFile(path.join(outputDirectory, filename), Buffer.from(data, 'base64'))
}

async function waitForTarget() {
    for (let attempt = 0; attempt < 50; attempt += 1) {
        try {
            const response = await fetch(`http://127.0.0.1:${port}/json/list`)
            const targets = await response.json()
            const target = targets.find(item => item.type === 'page')
            if (target) return target
        } catch {
            // Chromium is still starting.
        }
        await wait(100)
    }
    throw new Error('Chromium did not expose a capture target.')
}

function connect(url) {
    const socket = new WebSocket(url)
    let id = 0
    const pending = new Map()
    const ready = new Promise((resolve, reject) => {
        socket.addEventListener('open', resolve, { once: true })
        socket.addEventListener('error', reject, { once: true })
    })

    socket.addEventListener('message', event => {
        const message = JSON.parse(event.data)
        if (!message.id || !pending.has(message.id)) return
        const { resolve, reject } = pending.get(message.id)
        pending.delete(message.id)
        if (message.error) reject(new Error(message.error.message))
        else resolve(message.result)
    })

    return {
        ready,
        send(method, params = {}) {
            const messageId = ++id
            return new Promise((resolve, reject) => {
                pending.set(messageId, { resolve, reject })
                socket.send(JSON.stringify({ id: messageId, method, params }))
            })
        },
        close() {
            socket.close()
        },
    }
}

function wait(milliseconds) {
    return new Promise(resolve => setTimeout(resolve, milliseconds))
}
