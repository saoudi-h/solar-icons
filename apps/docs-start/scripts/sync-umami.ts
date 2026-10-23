/**
 * Copies the Umami scripts to `public/` so they are served from our own
 * origin, exactly like the `/p.js` and `/r.js` routes of the current Next
 * app, but without a runtime proxy and without a Worker invocation.
 *
 * `loader.js` becomes `/p.js` (page views) and `recorder.js` becomes `/r.js`
 * (session replay).
 *
 * The scripts are build artifacts: they are not committed.
 */
import { mkdir, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')

const umamiUrl = process.env.VITE_UMAMI_URL ?? process.env.UMAMI_URL ?? ''

if (!umamiUrl) {
    console.log('Umami is not configured (VITE_UMAMI_URL), skipping /p.js and /r.js.')
    process.exit(0)
}

const scripts = [
    { remote: '/loader.js', local: 'p.js' },
    { remote: '/recorder.js', local: 'r.js' },
]

for (const { remote, local } of scripts) {
    const outputFile = path.join(appRoot, 'public', local)

    try {
        const response = await fetch(new URL(remote, umamiUrl), {
            headers: { Accept: 'application/javascript, text/javascript;q=0.9' },
            redirect: 'error',
        })

        if (!response.ok) {
            throw new Error(`Umami responded with ${response.status}`)
        }

        const body = await response.text()

        if (body.includes('<html')) {
            throw new Error('Umami returned HTML instead of a script')
        }

        await mkdir(path.dirname(outputFile), { recursive: true })
        await writeFile(outputFile, body)

        console.log(`Copied the Umami script to ${path.relative(appRoot, outputFile)}.`)
    } catch (error) {
        console.warn(`Unable to copy ${remote}: ${(error as Error).message}`)
    }
}
