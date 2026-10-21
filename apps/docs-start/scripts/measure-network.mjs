import { chromium } from '@playwright/test'

const target = process.argv[2]
if (!target) {
    console.error('Usage: node scripts/measure-network.mjs <absolute-url>')
    process.exit(2)
}

const browser = await chromium.launch({ headless: true })
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
        Object.entries(event.request.headers ?? {}).map(([name, value]) => [name.toLowerCase(), value])
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
    const responseHeaders = Object.fromEntries(
        Object.entries(event.response.headers ?? {}).map(([name, value]) => [name.toLowerCase(), value])
    )
    entry.contentEncoding = responseHeaders['content-encoding'] ?? null
})
cdp.on('Network.loadingFinished', event => {
    const entry = requests.get(event.requestId)
    if (entry) entry.transferBytes = event.encodedDataLength
})

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
const groups = totalsByCategory(entries)
const prefetch = entries.filter(entry => entry.prefetch)
const summary = {
    target,
    viewport: '1440x900',
    cacheDisabled: true,
    requestCount: entries.length,
    transferBytes: entries.reduce((sum, entry) => sum + entry.transferBytes, 0),
    transferMiB: Number(
        (entries.reduce((sum, entry) => sum + entry.transferBytes, 0) / 1024 / 1024).toFixed(3)
    ),
    initialRequestCount: initialEntries.length,
    initialTransferBytes: initialEntries.reduce((sum, entry) => sum + entry.transferBytes, 0),
    initialJavascriptTransferBytes: initialEntries
        .filter(entry => entry.type === 'Script')
        .reduce((sum, entry) => sum + entry.transferBytes, 0),
    initialByType: totalsByCategory(initialEntries),
    byType: groups,
    prefetchCount: prefetch.length,
    prefetch: prefetch.map(({ url, type, transferBytes }) => ({ url, type, transferBytes })),
    requests: entries.map(({ url, method, type, initiator, prefetch, transferBytes, status, contentEncoding }) => ({
        url,
        method,
        type,
        initiator,
        prefetch,
        transferBytes,
        status,
        contentEncoding,
    })),
}

console.log(JSON.stringify(summary, null, 2))
await browser.close()
