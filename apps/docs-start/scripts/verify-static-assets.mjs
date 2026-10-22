import assert from 'node:assert/strict'

const baseUrl = process.argv[2] ?? 'http://127.0.0.1:4174'

const [plainIcons, sharedIcons] = await Promise.all([
    fetch(new URL('/icons', baseUrl)),
    fetch(
        new URL(
            '/icons?icon=home&view=grouped&search=home&style=linear&category=ui&origin=extended',
            baseUrl
        )
    ),
])
const plainHtml = await plainIcons.text()
const sharedHtml = await sharedIcons.text()
assert.equal(plainIcons.status, 200)
assert.equal(sharedIcons.status, 200)
assert.equal(plainHtml, sharedHtml, 'static HTML must be independent of search params')
assert.match(plainHtml, /rel="canonical" href="https:\/\/solar-icons\.dev\/icons"/)

const slash = await fetch(new URL('/icons/', baseUrl), { redirect: 'manual' })
assert.equal(slash.status, 307)
assert.equal(slash.headers.get('location'), '/icons')

const missing = await fetch(new URL('/does-not-exist', baseUrl))
assert.equal(missing.status, 404)
assert.match(await missing.text(), /404/)

const redirect = await fetch(new URL('/__m0-redirect-test', baseUrl), { redirect: 'manual' })
assert.equal(redirect.status, 308)
assert.equal(redirect.headers.get('location'), '/')

for (const response of [plainIcons, sharedIcons, missing, redirect]) {
    assert.match(response.headers.get('x-robots-tag') ?? '', /noindex/i)
}

const robots = await fetch(new URL('/robots.txt', baseUrl))
assert.equal(robots.status, 200)
assert.match(await robots.text(), /Disallow: \/\s*$/m)

const catalogResponse = await fetch(new URL('/data/icons.json', baseUrl))
const catalog = await catalogResponse.json()
assert.equal(catalog.length, 1451)

const stylesheetPath = plainHtml.match(/href="([^"]+app-[^"]+\.css)"/)?.[1]
const entryScriptPath = plainHtml.match(/src="([^"]+index-[^"]+\.js)"/)?.[1]
assert.ok(stylesheetPath, 'the HTML should reference a hashed CSS bundle')
assert.ok(entryScriptPath, 'the HTML should reference a hashed JavaScript entry')
const stylesheet = await (await fetch(new URL(stylesheetPath, baseUrl))).text()
const fontPath = stylesheet.match(/url\((\/assets\/[^)]+\.woff2)\)/)?.[1]
assert.ok(fontPath, 'the CSS should reference a self-hosted font')

const expectedMimeTypes = [
    ['/data/icons.json', 'application/json'],
    [stylesheetPath, 'text/css'],
    [entryScriptPath, 'javascript'],
    [fontPath, 'font'],
    ['/manifest.json', 'json'],
]
const mimeTypes = {}
for (const [path, mime] of expectedMimeTypes) {
    const response = await fetch(new URL(path, baseUrl), { method: 'HEAD' })
    assert.equal(response.status, 200, `${path} should exist`)
    mimeTypes[path] = response.headers.get('content-type')
    assert.ok(
        (mimeTypes[path] ?? '').toLowerCase().includes(mime),
        `${path} should have a ${mime} Content-Type, got ${mimeTypes[path]}`
    )
}

console.log(
    JSON.stringify(
        {
            baseUrl,
            statuses: {
                icons: plainIcons.status,
                trailingSlash: slash.status,
                missing: missing.status,
                testRedirect: redirect.status,
            },
            htmlSearchIndependent: true,
            xRobotsTag: plainIcons.headers.get('x-robots-tag'),
            robotsDisallow: true,
            iconRecords: catalog.length,
            mimeTypes,
        },
        null,
        2
    )
)
