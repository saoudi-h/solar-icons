/**
 * Copies the Umami loader to `public/p.js` so it is served from our own
 * origin, exactly like the `/p.js` route of the current Next app, but
 * without a runtime proxy and without a Worker invocation.
 *
 * The recorder (`r.js`) is not copied: it is disabled by default.
 *
 * The script is a build artifact: it is not committed.
 */
import { mkdir, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const outputFile = path.join(appRoot, 'public/p.js')

const umamiUrl = process.env.VITE_UMAMI_URL ?? process.env.UMAMI_URL ?? ''

if (!umamiUrl) {
    console.log('Umami is not configured (VITE_UMAMI_URL), skipping /p.js.')
    process.exit(0)
}

const source = new URL('/loader.js', umamiUrl)

try {
    const response = await fetch(source, {
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

    console.log(`Copied the Umami loader to ${path.relative(appRoot, outputFile)}.`)
} catch (error) {
    console.warn(`Unable to copy the Umami loader: ${(error as Error).message}`)
}
