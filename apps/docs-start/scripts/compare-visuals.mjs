#!/usr/bin/env node
import { existsSync, statSync } from 'node:fs'
import { mkdir, readFile, writeFile } from 'node:fs/promises'
import { createServer } from 'node:http'
import path from 'node:path'
import { parseArgs } from 'node:util'
import zlib from 'node:zlib'

import { chromium } from '@playwright/test'

const DEFAULT_ROUTES = [
    '/',
    '/docs/v2',
    '/docs/v1',
    '/docs/v2/packages/react',
    '/docs/v2/packages/vue',
    '/docs/v2/advanced/global-styling',
    '/docs/v2/advanced/global-configuration',
    '/docs/v2/advanced/accessibility',
    '/docs/v2/icon-reference/categories',
    '/docs/v2/migration-to-v2',
    '/docs/v2/migration-to-v2/codemod',
    '/docs/v2/community/changelog',
    '/docs/v2/community/contributing',
    '/docs/v2/ai-tools',
    '/icons?style=bold-duotone',
    '/blog',
    '/blog/build-consistent-icon-system-react',
]

const MIME = {
    '.html': 'text/html; charset=utf-8',
    '.js': 'text/javascript; charset=utf-8',
    '.mjs': 'text/javascript; charset=utf-8',
    '.css': 'text/css; charset=utf-8',
    '.json': 'application/json; charset=utf-8',
    '.txt': 'text/plain; charset=utf-8',
    '.xml': 'application/xml; charset=utf-8',
    '.svg': 'image/svg+xml',
    '.png': 'image/png',
    '.jpg': 'image/jpeg',
    '.jpeg': 'image/jpeg',
    '.webp': 'image/webp',
    '.woff2': 'font/woff2',
    '.ico': 'image/x-icon',
}

const CRC_TABLE = (() => {
    const table = new Int32Array(256)
    for (let n = 0; n < 256; n++) {
        let c = n
        for (let k = 0; k < 8; k++) c = c & 1 ? 0xedb88320 ^ (c >>> 1) : c >>> 1
        table[n] = c
    }
    return table
})()

function crc32(buffer) {
    let crc = -1
    for (const byte of buffer) crc = CRC_TABLE[(crc ^ byte) & 0xff] ^ (crc >>> 8)
    return (crc ^ -1) >>> 0
}

function pngChunk(type, data) {
    const length = Buffer.alloc(4)
    length.writeUInt32BE(data.length, 0)
    const typed = Buffer.concat([Buffer.from(type, 'ascii'), data])
    const crc = Buffer.alloc(4)
    crc.writeUInt32BE(crc32(typed), 0)
    return Buffer.concat([length, typed, crc])
}

function decodePng(buffer) {
    if (buffer.readUInt32BE(0) !== 0x89504e47) throw new Error('not a png')
    let offset = 8
    let width = 0
    let height = 0
    let bitDepth = 0
    let colorType = 0
    let interlace = 0
    const idat = []
    while (offset + 8 <= buffer.length) {
        const length = buffer.readUInt32BE(offset)
        const type = buffer.toString('ascii', offset + 4, offset + 8)
        const data = buffer.subarray(offset + 8, offset + 8 + length)
        if (type === 'IHDR') {
            width = data.readUInt32BE(0)
            height = data.readUInt32BE(4)
            bitDepth = data[8]
            colorType = data[9]
            interlace = data[12]
        } else if (type === 'IDAT') {
            idat.push(data)
        } else if (type === 'IEND') {
            break
        }
        offset += 12 + length
    }
    if (bitDepth !== 8) throw new Error(`unsupported bit depth ${bitDepth}`)
    if (interlace !== 0) throw new Error('interlaced png is not supported')
    const channels = colorType === 6 ? 4 : colorType === 2 ? 3 : 0
    if (channels === 0) throw new Error(`unsupported color type ${colorType}`)
    const raw = zlib.inflateSync(Buffer.concat(idat))
    const stride = width * channels
    const pixels = Buffer.alloc(height * stride)
    let previous = Buffer.alloc(stride)
    for (let y = 0; y < height; y++) {
        const filter = raw[y * (stride + 1)]
        const line = raw.subarray(y * (stride + 1) + 1, (y + 1) * (stride + 1))
        const current = Buffer.alloc(stride)
        for (let x = 0; x < stride; x++) {
            const left = x >= channels ? current[x - channels] : 0
            const up = previous[x]
            const upLeft = x >= channels ? previous[x - channels] : 0
            let value = line[x]
            if (filter === 1) value += left
            else if (filter === 2) value += up
            else if (filter === 3) value += (left + up) >> 1
            else if (filter === 4) {
                const p = left + up - upLeft
                const pa = Math.abs(p - left)
                const pb = Math.abs(p - up)
                const pc = Math.abs(p - upLeft)
                if (pa <= pb && pa <= pc) value += left
                else if (pb <= pc) value += up
                else value += upLeft
            } else if (filter !== 0) {
                throw new Error(`unsupported filter ${filter}`)
            }
            current[x] = value & 0xff
        }
        current.copy(pixels, y * stride)
        previous = current
    }
    const rgba = Buffer.alloc(width * height * 4)
    for (let index = 0; index < width * height; index++) {
        const source = index * channels
        rgba[index * 4] = pixels[source]
        rgba[index * 4 + 1] = pixels[source + 1]
        rgba[index * 4 + 2] = pixels[source + 2]
        rgba[index * 4 + 3] = channels === 4 ? pixels[source + 3] : 255
    }
    return { width, height, data: rgba }
}

function encodePng({ width, height, data }) {
    const stride = width * 4
    const raw = Buffer.alloc(height * (stride + 1))
    for (let y = 0; y < height; y++) {
        raw[y * (stride + 1)] = 0
        data.copy(raw, y * (stride + 1) + 1, y * stride, (y + 1) * stride)
    }
    const ihdr = Buffer.alloc(13)
    ihdr.writeUInt32BE(width, 0)
    ihdr.writeUInt32BE(height, 4)
    ihdr[8] = 8
    ihdr[9] = 6
    return Buffer.concat([
        Buffer.from([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]),
        pngChunk('IHDR', ihdr),
        pngChunk('IDAT', zlib.deflateSync(raw, { level: 9 })),
        pngChunk('IEND', Buffer.alloc(0)),
    ])
}

function comparePixels(left, right, tolerance = 0) {
    if (left.width !== right.width || left.height !== right.height) {
        return {
            sizeMismatch: true,
            left: `${left.width}x${left.height}`,
            right: `${right.width}x${right.height}`,
            diffPixels: Number.NaN,
            significantPixels: Number.NaN,
            total: left.width * left.height,
            maxDelta: Number.NaN,
            bbox: null,
        }
    }
    const total = left.width * left.height
    let diffPixels = 0
    let significantPixels = 0
    let maxDelta = 0
    let minX = Number.POSITIVE_INFINITY
    let minY = Number.POSITIVE_INFINITY
    let maxX = -1
    let maxY = -1
    for (let index = 0; index < total; index++) {
        const offset = index * 4
        const dr = Math.abs(left.data[offset] - right.data[offset])
        const dg = Math.abs(left.data[offset + 1] - right.data[offset + 1])
        const db = Math.abs(left.data[offset + 2] - right.data[offset + 2])
        const da = Math.abs(left.data[offset + 3] - right.data[offset + 3])
        const delta = Math.max(dr, dg, db, da)
        if (delta > 0) {
            diffPixels++
            if (delta > tolerance) significantPixels++
            if (delta > maxDelta) maxDelta = delta
            const x = index % left.width
            const y = Math.floor(index / left.width)
            if (x < minX) minX = x
            if (y < minY) minY = y
            if (x > maxX) maxX = x
            if (y > maxY) maxY = y
        }
    }
    return {
        sizeMismatch: false,
        diffPixels,
        significantPixels,
        total,
        maxDelta,
        bbox:
            diffPixels === 0
                ? null
                : { x: minX, y: minY, width: maxX - minX + 1, height: maxY - minY + 1 },
    }
}

function buildDiffImage(left, right, result) {
    if (result.sizeMismatch) return null
    const { width, height } = left
    const data = Buffer.alloc(width * height * 4)
    for (let index = 0; index < width * height; index++) {
        const offset = index * 4
        const dr = Math.abs(left.data[offset] - right.data[offset])
        const dg = Math.abs(left.data[offset + 1] - right.data[offset + 1])
        const db = Math.abs(left.data[offset + 2] - right.data[offset + 2])
        const da = Math.abs(left.data[offset + 3] - right.data[offset + 3])
        const delta = Math.max(dr, dg, db, da)
        if (delta === 0) {
            const grey =
                255 -
                Math.round((left.data[offset] + left.data[offset + 1] + left.data[offset + 2]) / 12)
            data[offset] = grey
            data[offset + 1] = grey
            data[offset + 2] = grey
            data[offset + 3] = 255
        } else {
            data[offset] = 255
            data[offset + 1] = 0
            data[offset + 2] = 160
            data[offset + 3] = 255
        }
    }
    return encodePng({ width, height, data })
}

function startStaticServer(root, port) {
    const server = createServer(async (request, response) => {
        const requestPath = decodeURIComponent(new URL(request.url, 'http://localhost').pathname)
        const candidates = [
            path.join(root, requestPath),
            path.join(root, `${requestPath}.html`),
            path.join(root, requestPath, 'index.html'),
        ]
        for (const candidate of candidates) {
            if (!candidate.startsWith(root)) continue
            if (!existsSync(candidate) || !statSync(candidate).isFile()) continue
            const extension = path.extname(candidate)
            const body = await readFile(candidate)
            const headers = { 'content-type': MIME[extension] ?? 'application/octet-stream' }
            const accepts = String(request.headers['accept-encoding'] ?? '')
            if (accepts.includes('gzip') && body.length > 512) {
                response.writeHead(200, { ...headers, 'content-encoding': 'gzip' })
                response.end(zlib.gzipSync(body))
                return
            }
            response.writeHead(200, headers)
            response.end(body)
            return
        }
        const notFound = path.join(root, '404.html')
        if (existsSync(notFound)) {
            response.writeHead(404, { 'content-type': MIME['.html'] })
            response.end(await readFile(notFound))
            return
        }
        response.writeHead(404)
        response.end('not found')
    })
    return new Promise(resolve => {
        server.listen(port, () => resolve(server))
    })
}

async function capture(browser, url, theme, options) {
    const context = await browser.newContext({
        viewport: { width: options.width, height: options.height },
        deviceScaleFactor: 1,
        colorScheme: theme,
        reducedMotion: options.motion === 'reduce' ? 'reduce' : 'no-preference',
    })
    const page = await context.newPage()
    const failures = []
    page.on('requestfailed', request => {
        const url = request.url()
        if (!url.startsWith('data:') && !url.includes('/p.js') && !url.includes('/r.js')) {
            failures.push(`${request.failure()?.errorText ?? 'failed'} ${url}`)
        }
    })
    await page.goto(url, { waitUntil: 'load', timeout: 60000 })
    await page.waitForLoadState('networkidle', { timeout: 30000 }).catch(() => {})
    await page.evaluate(() => document.fonts.ready)
    await page.waitForTimeout(options.settle)
    const buffer = await page.screenshot({
        animations: 'disabled',
        caret: 'hide',
        fullPage: options.fullPage,
    })
    await context.close()
    return { buffer, failures }
}

function formatPercent(value) {
    if (!Number.isFinite(value)) return 'n/a'
    return `${value.toFixed(4)}%`
}

async function main() {
    const { values } = parseArgs({
        options: {
            'next-url': { type: 'string' },
            'start-url': { type: 'string' },
            'start-dir': { type: 'string' },
            out: { type: 'string', default: 'visual-report' },
            routes: { type: 'string' },
            themes: { type: 'string', default: 'light,dark' },
            width: { type: 'string', default: '1280' },
            height: { type: 'string', default: '800' },
            settle: { type: 'string', default: '1500' },
            motion: { type: 'string', default: 'reduce' },
            threshold: { type: 'string', default: '0' },
            tolerance: { type: 'string', default: '0' },
            'full-page': { type: 'boolean', default: false },
        },
    })

    const width = Number(values.width)
    const height = Number(values.height)
    const settle = Number(values.settle)
    const threshold = Number(values.threshold)
    const tolerance = Number(values.tolerance)
    const themes = values.themes
        .split(',')
        .map(theme => theme.trim())
        .filter(Boolean)
    const routes = values.routes
        ? JSON.parse(await readFile(values.routes, 'utf8'))
        : DEFAULT_ROUTES
    const outDir = path.resolve(values.out)
    await mkdir(outDir, { recursive: true })

    let startUrl = values['start-url']
    let server = null
    if (!startUrl) {
        if (!values['start-dir']) throw new Error('either --start-url or --start-dir is required')
        const port = 3211
        server = await startStaticServer(path.resolve(values['start-dir']), port)
        startUrl = `http://127.0.0.1:${port}`
    }
    const nextUrl = values['next-url']
    if (!nextUrl) throw new Error('--next-url is required')

    const browser = await chromium.launch()
    const results = []
    for (const theme of themes) {
        for (const route of routes) {
            const captureOptions = {
                width,
                height,
                settle,
                motion: values.motion,
                fullPage: values['full-page'],
            }
            const nextCapture = await capture(browser, `${nextUrl}${route}`, theme, captureOptions)
            const nextAgain = await capture(browser, `${nextUrl}${route}`, theme, captureOptions)
            const startCapture = await capture(
                browser,
                `${startUrl}${route}`,
                theme,
                captureOptions
            )
            const left = decodePng(nextCapture.buffer)
            const leftAgain = decodePng(nextAgain.buffer)
            const right = decodePng(startCapture.buffer)
            const noise = comparePixels(left, leftAgain, tolerance)
            const parity = comparePixels(left, right, tolerance)
            const slug = `${route.replace(/[^a-z0-9]+/gi, '-').replace(/^-|-$/g, '') || 'root'}-${theme}`
            await writeFile(path.join(outDir, `${slug}-next.png`), nextCapture.buffer)
            await writeFile(path.join(outDir, `${slug}-start.png`), startCapture.buffer)
            const diffImage = buildDiffImage(left, right, parity)
            if (diffImage) await writeFile(path.join(outDir, `${slug}-diff.png`), diffImage)
            results.push({
                route,
                theme,
                parity,
                noise,
                failures: [...nextCapture.failures, ...startCapture.failures].slice(0, 5),
            })
        }
    }
    await browser.close()
    if (server) server.close()

    const rows = results.map(result => ({
        route: result.route,
        theme: result.theme,
        'diff px': Number.isFinite(result.parity.diffPixels) ? result.parity.diffPixels : 'size',
        'diff px > tol': Number.isFinite(result.parity.significantPixels)
            ? result.parity.significantPixels
            : 'size',
        'diff %': formatPercent((result.parity.diffPixels / result.parity.total) * 100),
        'max Δ': Number.isFinite(result.parity.maxDelta) ? result.parity.maxDelta : 'n/a',
        'noise px': result.noise.diffPixels,
        bbox: result.parity.bbox
            ? `${result.parity.bbox.x},${result.parity.bbox.y} ${result.parity.bbox.width}x${result.parity.bbox.height}`
            : '-',
    }))
    console.table(rows)

    const failing = results.filter(
        result => !result.parity.sizeMismatch && result.parity.significantPixels > threshold
    )
    const mismatched = results.filter(result => result.parity.sizeMismatch)
    console.log(`report written to ${outDir}`)
    for (const result of results) {
        if (result.failures.length > 0) {
            console.log(
                `failed requests on ${result.route} [${result.theme}]: ${result.failures.join(' | ')}`
            )
        }
    }
    if (mismatched.length > 0) {
        console.log(`viewport size mismatch on ${mismatched.length} capture(s)`)
        process.exitCode = 1
    }
    if (failing.length > 0) {
        console.log(
            `${failing.length} capture(s) exceed the ${threshold} pixel threshold (channel tolerance ${tolerance})`
        )
        process.exitCode = 1
    }
}

await main()
