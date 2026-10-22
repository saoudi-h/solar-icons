/**
 * Downloads the GitHub avatar used by the blog author card.
 *
 * The current app serves it through `next/image`, which fetches and
 * optimizes it at runtime. The static site ships the file instead, so the
 * page never depends on a third-party host.
 *
 * The script never fails the build: when the download is not possible, the
 * avatar is removed and the blog page falls back to the initials.
 */
import { mkdir, rm, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const publicDir = path.join(appRoot, 'public')
const avatarPath = path.join(publicDir, 'saoudi-h.png')

const source = 'https://github.com/saoudi-h.png?size=96'

await mkdir(publicDir, { recursive: true })

try {
    const response = await fetch(source, { redirect: 'follow' })
    if (!response.ok) throw new Error(`unexpected status ${response.status}`)

    const contentType = response.headers.get('content-type') ?? ''
    if (!contentType.startsWith('image/')) {
        throw new Error(`unexpected content type ${contentType}`)
    }

    await writeFile(avatarPath, Buffer.from(await response.arrayBuffer()))
    console.log('Downloaded the GitHub avatar.')
} catch (error) {
    await rm(avatarPath, { force: true })
    console.warn(
        `Could not download the GitHub avatar (${error instanceof Error ? error.message : 'unknown error'}). The blog falls back to the initials.`
    )
}
