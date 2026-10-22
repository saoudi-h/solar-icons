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
import { mkdir, writeFile } from 'node:fs/promises'
import path from 'node:path'

import { appRoot, collectDocsPaths } from './docs-paths'

const publicDir = path.join(appRoot, 'public')

const noIndex = process.env.SITE_NOINDEX === '1'
const siteUrl = (process.env.VITE_SITE_URL ?? 'https://solar-icons.dev').replace(/\/+$/, '')

await mkdir(publicDir, { recursive: true })

/**
 * The markdown pages, the search index and the XML feeds are prerendered
 * files. Cloudflare guesses the type from the extension, so the ones that
 * need another type get an explicit rule.
 *
 * The markdown pages are listed one by one: a `/docs/*` rule would also
 * catch the HTML pages of the same directory.
 */
const headers = [
    ...collectDocsPaths().map(
        docsPath => `/docs/${docsPath}.mdx\n  Content-Type: text/markdown; charset=utf-8`
    ),
    '/api/search\n  Content-Type: application/json; charset=utf-8',
    '/sitemap.xml\n  Content-Type: application/xml; charset=utf-8',
    '/blog/rss.xml\n  Content-Type: application/rss+xml; charset=utf-8',
    '/llms.txt\n  Content-Type: text/plain; charset=utf-8',
    '/llms-full.txt\n  Content-Type: text/plain; charset=utf-8',
]

if (noIndex) {
    headers.push('/*\n  X-Robots-Tag: noindex, nofollow')
}

await writeFile(path.join(publicDir, '_headers'), `${headers.join('\n\n')}\n`)

/**
 * The docs index is a temporary redirect in the current app, the test
 * environment adds a probe to check the redirect support of the platform.
 */
const redirects = ['/docs /docs/v2 307']

if (noIndex) {
    redirects.push('/__m0-redirect-test / 308')
}

await writeFile(path.join(publicDir, '_redirects'), `${redirects.join('\n')}\n`)

if (noIndex) {
    await writeFile(
        path.join(publicDir, 'robots.txt'),
        ['User-agent: *', 'Disallow: /', ''].join('\n')
    )
    console.log('Generated noindex headers, robots.txt, and the M0 redirect probe.')
} else {
    await writeFile(
        path.join(publicDir, 'robots.txt'),
        ['User-agent: *', 'Allow: /', '', `Sitemap: ${siteUrl}/sitemap.xml`, ''].join('\n')
    )
    console.log('Generated headers, redirects, and the production robots.txt.')
}
