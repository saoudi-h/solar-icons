import { chromium } from '@playwright/test'

/**
 * Measures the network cost of a page load.
 *
 * Usage: node scripts/measure-network.mjs <base-url> [path ...]
 *
 * The protocol matches the audit of the current app: production build
 * served locally, headless Chromium, 1440x900, cache disabled through CDP,
 * `networkidle`, then every scrollable region is scrolled to the bottom.
 * The transferred bytes are the CDP `encodedDataLength` values.
 */
const [baseUrl, ...paths] = process.argv.slice(2)

if (!baseUrl) {
    console.error('Usage: node scripts/measure-network.mjs <base-url> [path ...]')
    process.exit(2)
}

const browser = await chromium.launch({ headless: true })

const results = []

for (const path of paths.length > 0 ? paths : ['/']) {
    const context = await browser.newContext({
        viewport: { width: 1440, height: 900 },
        serviceWorkers: 'block',
    })
    const page = await context.newPage()
    const cdp = await context.newCDPSession(page)
    await cdp.send('Network.enable')
    await cdp.send('Network.setCacheDisabled', { cacheDisabled: true })

    const requests = new Map()
    cdp.on('Network.requestWillBeSent', event => {
        const headers = Object.fromEntries(
            Object.entries(event.request.headers ?? {}).map(([name, value]) => [
                name.toLowerCase(),
                value,
            ])
        )
        requests.set(event.requestId, {
            url: event.request.url,
            method: event.request.method,
            type: 'Other',
            initiator: event.initiator?.type ?? 'unknown',
            prefetch:
                Boolean(headers.purpose?.toString().toLowerCase().includes('prefetch')) ||
                Boolean(headers['next-router-prefetch']) ||
                /(?:[?&]_rsc=|\.rsc(?:\?|$)|[?&]__data=)/.test(event.request.url),
            transferBytes: 0,
            status: null,
        })
    })
    cdp.on('Network.responseReceived', event => {
        const entry = requests.get(event.requestId)
        if (!entry) return
        entry.type = event.type
        entry.status = event.response.status
    })
    cdp.on('Network.loadingFinished', event => {
        const entry = requests.get(event.requestId)
        if (entry) entry.transferBytes = event.encodedDataLength
    })

    const target = `${baseUrl}${path}`
    await page.goto(target, { waitUntil: 'networkidle', timeout: 60_000 })
    await page.waitForTimeout(750)
    const initialEntries = [...requests.values()].map(entry => ({ ...entry }))

    await page.evaluate(async () => {
        const scrollables = [...document.querySelectorAll('*')].filter(element => {
            const style = getComputedStyle(element)
            return (
                element.scrollHeight > element.clientHeight + 80 &&
                ['auto', 'scroll', 'overlay'].includes(style.overflowY)
            )
        })
        for (const element of scrollables) {
            const step = Math.max(240, Math.floor(element.clientHeight * 0.8))
            for (let position = 0; position < element.scrollHeight; position += step) {
                element.scrollTop = Math.min(position, element.scrollHeight)
                await new Promise(resolve => setTimeout(resolve, 55))
            }
            element.scrollTop = element.scrollHeight
            await new Promise(resolve => setTimeout(resolve, 120))
        }
        window.scrollTo(0, document.documentElement.scrollHeight)
        await new Promise(resolve => requestAnimationFrame(() => requestAnimationFrame(resolve)))
    })
    await page.waitForTimeout(1_250)

    const entries = [...requests.values()]
    const categoryFor = entry =>
        entry.type === 'Document'
            ? 'document'
            : entry.type === 'Script'
              ? 'JavaScript'
              : entry.type === 'Stylesheet'
                ? 'CSS'
                : entry.type === 'Image'
                  ? 'image'
                  : entry.type === 'Font'
                    ? 'font'
                    : entry.type === 'Fetch' || entry.type === 'XHR'
                      ? /(?:[?&]_rsc=|\.rsc(?:\?|$)|[?&]__data=)/.test(entry.url)
                          ? 'RSC fetch'
                          : 'fetch/XHR'
                      : entry.type

    const totalsByCategory = list => {
        const groups = new Map()
        for (const entry of list) {
            const type = categoryFor(entry)
            const group = groups.get(type) ?? { count: 0, transferBytes: 0 }
            group.count += 1
            group.transferBytes += entry.transferBytes
            groups.set(type, group)
        }
        return Object.fromEntries(groups)
    }

    const sum = (list, filter) => list.filter(filter).reduce((acc, e) => acc + e.transferBytes, 0)
    const kib = bytes => Number((bytes / 1024).toFixed(1))

    const initial = {
        requests: initialEntries.length,
        total: kib(sum(initialEntries, () => true)),
        javascript: kib(sum(initialEntries, e => e.type === 'Script')),
    }
    const scrolled = {
        requests: entries.length,
        total: kib(sum(entries, () => true)),
        javascript: kib(sum(entries, e => e.type === 'Script')),
    }

    results.push({
        path,
        initial,
        scrolled,
        prefetchCount: entries.filter(entry => entry.prefetch).length,
        byType: totalsByCategory(entries),
        requests: entries.map(
            ({ url, type, initiator, prefetch, transferBytes, status }) => ({
                url,
                type,
                initiator,
                prefetch,
                transferBytes,
                status,
            })
        ),
    })

    await context.close()
}

await browser.close()

const pad = (value, length) => String(value).padEnd(length)
console.log(
    `${pad('Path', 34)}${pad('Req init', 10)}${pad('KiB init', 11)}${pad('KiB JS init', 14)}${pad('Req scroll', 12)}${pad('KiB scroll', 12)}${pad('KiB JS scroll', 14)}Prefetch`
)
for (const result of results) {
    console.log(
        `${pad(result.path, 34)}${pad(result.initial.requests, 10)}${pad(result.initial.total, 11)}${pad(result.initial.javascript, 14)}${pad(result.scrolled.requests, 12)}${pad(result.scrolled.total, 12)}${pad(result.scrolled.javascript, 14)}${result.prefetchCount}`
    )
}

if (process.env.MEASURE_DETAIL === '1') {
    console.log(JSON.stringify(results, null, 2))
}
