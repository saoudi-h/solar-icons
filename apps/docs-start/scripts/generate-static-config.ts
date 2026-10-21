/**
 * Writes the Cloudflare static-asset configuration files.
 *
 * `_headers` and `_redirects` are parsed by Cloudflare at deploy time
 * (https://developers.cloudflare.com/workers/static-assets/headers/ and
 * .../redirects/). They are generated so the test environment can be
 * `noindex` while the production build stays indexable.
 *
 * Set `SITE_NOINDEX=1` for the test environment.
 */
import { mkdir, rm, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const publicDir = path.join(appRoot, 'public')

const noIndex = process.env.SITE_NOINDEX === '1'

await mkdir(publicDir, { recursive: true })

if (noIndex) {
    await writeFile(
        path.join(publicDir, '_headers'),
        ['/*', '  X-Robots-Tag: noindex, nofollow', ''].join('\n')
    )
    await writeFile(
        path.join(publicDir, 'robots.txt'),
        ['User-agent: *', 'Disallow: /', ''].join('\n')
    )
    await writeFile(
        path.join(publicDir, '_redirects'),
        ['/__m0-redirect-test / 308', ''].join('\n')
    )
    console.log('Generated noindex headers, robots.txt, and the M0 redirect probe.')
} else {
    await rm(path.join(publicDir, '_headers'), { force: true })
    await rm(path.join(publicDir, 'robots.txt'), { force: true })
    await rm(path.join(publicDir, '_redirects'), { force: true })
    console.log('No SITE_NOINDEX flag: the site stays indexable.')
}
