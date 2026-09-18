/**
 * Compare rendered icon images before and after a visual-only SVG change.
 *
 * The comparison deliberately works on fixed-size PNGs instead of SVG text:
 * two different SVG structures can render identically, while a small visual
 * regression must still be reported. The script expects the same generated
 * PNG layout on both sides, for example category/Linear/icon.png.
 */

import fs from 'node:fs'
import path from 'node:path'
import { pathToFileURL } from 'node:url'

import sharp from 'sharp'

type PixelMetric = {
    changedPixels: number
    changedPercent: number
    maxChannelDelta: number
    meanAbsoluteDelta: number
    boundingBox: { x: number; y: number; width: number; height: number } | null
}

type ChangeReport = {
    key: string
    before: string
    after: string
    diff: string
    metric: PixelMetric
}

const DEFAULT_STYLE = 'Linear'
const DEFAULT_SIZE = 128
const DEFAULT_THRESHOLD = 2
const DEFAULT_OUTPUT = '/tmp/solar-icons-stroke-cap-visual-diff'

const getArg = (name: string, fallback: string): string => {
    const index = process.argv.indexOf(name)
    return index >= 0 && process.argv[index + 1] ? process.argv[index + 1]! : fallback
}

const htmlEscape = (value: string): string =>
    value
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')

const listPngs = (root: string, style: string): Map<string, string> => {
    const files = new Map<string, string>()
    if (!fs.existsSync(root)) return files

    const visit = (directory: string): void => {
        for (const entry of fs.readdirSync(directory, { withFileTypes: true })) {
            const absolute = path.join(directory, entry.name)
            if (entry.isDirectory()) {
                visit(absolute)
                continue
            }
            if (!entry.isFile() || !entry.name.endsWith('.png')) continue

            const relative = path.relative(root, absolute)
            const parts = relative.split(path.sep)
            if (parts.length < 3 || parts.at(-2) !== style) continue
            files.set(parts.join('/'), absolute)
        }
    }

    visit(root)
    return files
}

const readPixels = async (
    filename: string,
    size: number
): Promise<{ data: Buffer; width: number; height: number }> => {
    const rendered = await sharp(filename)
        .resize(size, size, {
            fit: 'contain',
            background: { r: 0, g: 0, b: 0, alpha: 0 },
        })
        .ensureAlpha()
        .raw()
        .toBuffer({ resolveWithObject: true })

    return { data: rendered.data, width: rendered.info.width, height: rendered.info.height }
}

const comparePixels = (
    before: { data: Buffer; width: number; height: number },
    after: { data: Buffer; width: number; height: number },
    threshold: number
): { metric: PixelMetric; diff: Buffer } => {
    if (before.width !== after.width || before.height !== after.height) {
        throw new Error(
            `Rendered dimensions differ: ${before.width}x${before.height} vs ${after.width}x${after.height}`
        )
    }

    const diff = Buffer.alloc(before.data.length)
    let changedPixels = 0
    let maxChannelDelta = 0
    let totalDelta = 0
    let minX = before.width
    let minY = before.height
    let maxX = -1
    let maxY = -1

    for (let offset = 0; offset < before.data.length; offset += 4) {
        const redDelta = Math.abs(before.data[offset]! - after.data[offset]!)
        const greenDelta = Math.abs(before.data[offset + 1]! - after.data[offset + 1]!)
        const blueDelta = Math.abs(before.data[offset + 2]! - after.data[offset + 2]!)
        const alphaDelta = Math.abs(before.data[offset + 3]! - after.data[offset + 3]!)
        const channelDelta = Math.max(redDelta, greenDelta, blueDelta, alphaDelta)
        maxChannelDelta = Math.max(maxChannelDelta, channelDelta)
        totalDelta += redDelta + greenDelta + blueDelta + alphaDelta

        if (channelDelta <= threshold) continue

        const pixel = offset / 4
        const x = pixel % before.width
        const y = Math.floor(pixel / before.width)
        changedPixels += 1
        minX = Math.min(minX, x)
        minY = Math.min(minY, y)
        maxX = Math.max(maxX, x)
        maxY = Math.max(maxY, y)

        // A transparent red pixel makes the changed area easy to inspect while
        // keeping the untouched part of the icon invisible in the diff image.
        diff[offset] = 255
        diff[offset + 1] = 48
        diff[offset + 2] = 48
        diff[offset + 3] = 255
    }

    const pixelCount = before.width * before.height
    return {
        metric: {
            changedPixels,
            changedPercent: (changedPixels / pixelCount) * 100,
            maxChannelDelta,
            meanAbsoluteDelta: totalDelta / before.data.length,
            boundingBox:
                changedPixels === 0
                    ? null
                    : {
                          x: minX,
                          y: minY,
                          width: maxX - minX + 1,
                          height: maxY - minY + 1,
                      },
        },
        diff,
    }
}

const copyForReport = (source: string, output: string, key: string): string => {
    const destination = path.join(output, key)
    fs.mkdirSync(path.dirname(destination), { recursive: true })
    fs.copyFileSync(source, destination)
    return path.relative(output, destination).split(path.sep).join('/')
}

const diffForReport = async (
    diff: Buffer,
    width: number,
    height: number,
    output: string,
    key: string
): Promise<string> => {
    const destination = path.join(output, 'diff', key)
    fs.mkdirSync(path.dirname(destination), { recursive: true })
    await sharp(diff, { raw: { width, height, channels: 4 } })
        .png()
        .toFile(destination)
    return path.relative(output, destination).split(path.sep).join('/')
}

const buildHtml = (
    style: string,
    threshold: number,
    comparedIcons: number,
    changes: readonly ChangeReport[],
    missingBefore: readonly string[],
    missingAfter: readonly string[]
): string => {
    const rows = changes
        .map(change => {
            const metric = change.metric
            const box = metric.boundingBox
                ? `${metric.boundingBox.x},${metric.boundingBox.y} ${metric.boundingBox.width}×${metric.boundingBox.height}`
                : '—'
            return `<tr><td><code>${htmlEscape(change.key)}</code></td><td>${metric.changedPercent.toFixed(3)}%</td><td>${metric.changedPixels}</td><td>${metric.maxChannelDelta}</td><td>${metric.meanAbsoluteDelta.toFixed(3)}</td><td>${box}</td><td><a href="${htmlEscape(change.before)}">before</a> · <a href="${htmlEscape(change.after)}">after</a> · <a href="${htmlEscape(change.diff)}">diff</a></td></tr>`
        })
        .join('')

    const missing = [
        ...missingBefore.map(key => `missing before: ${key}`),
        ...missingAfter.map(key => `missing after: ${key}`),
    ]
        .map(item => `<li><code>${htmlEscape(item)}</code></li>`)
        .join('')

    return `<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Solar ${htmlEscape(style)} stroke-cap visual diff</title>
<style>
:root { color-scheme: light; font: 14px/1.45 system-ui, sans-serif; }
body { margin: 32px; color: #18233f; background: #f6f7fb; }
h1 { font-size: 24px; }
code { padding: 2px 4px; background: #e9ebf2; border-radius: 3px; }
table { width: 100%; border-collapse: collapse; background: white; }
th, td { padding: 8px 10px; text-align: left; border-bottom: 1px solid #e5e7ed; }
th { background: #eef0f6; }
ul { background: white; padding: 16px 32px; }
</style>
</head>
<body>
<h1>${htmlEscape(style)} stroke-cap visual diff</h1>
<p>Compared <strong>${comparedIcons}</strong> rendered icons with a per-channel threshold of <strong>${threshold}</strong>. Only changed icons are listed.</p>
<table><thead><tr><th>Icon</th><th>Changed pixels</th><th>Pixels</th><th>Max delta</th><th>Mean delta</th><th>Changed bounds</th><th>Images</th></tr></thead><tbody>${rows || '<tr><td colspan="7">No visual differences detected.</td></tr>'}</tbody></table>
${missing.length > 0 ? `<h2>Missing counterparts</h2><ul>${missing}</ul>` : ''}
</body>
</html>`
}

const main = async (): Promise<void> => {
    const beforeRoot = getArg('--before', '')
    const afterRoot = getArg('--after', '')
    const output = getArg('--output', DEFAULT_OUTPUT)
    const style = getArg('--style', DEFAULT_STYLE)
    const size = Number(getArg('--size', String(DEFAULT_SIZE)))
    const threshold = Number(getArg('--threshold', String(DEFAULT_THRESHOLD)))

    if (!beforeRoot || !afterRoot) throw new Error('Usage: --before <png-dir> --after <png-dir>')
    if (!Number.isInteger(size) || size <= 0) throw new Error('--size must be a positive integer')
    if (!Number.isInteger(threshold) || threshold < 0 || threshold > 255) {
        throw new Error('--threshold must be an integer between 0 and 255')
    }

    fs.rmSync(output, { recursive: true, force: true })
    fs.mkdirSync(output, { recursive: true })

    const beforeFiles = listPngs(beforeRoot, style)
    const afterFiles = listPngs(afterRoot, style)
    const keys = [...new Set([...beforeFiles.keys(), ...afterFiles.keys()])].sort()
    const missingBefore: string[] = []
    const missingAfter: string[] = []
    const changes: ChangeReport[] = []

    for (const key of keys) {
        const beforeFile = beforeFiles.get(key)
        const afterFile = afterFiles.get(key)
        if (!beforeFile) {
            missingBefore.push(key)
            continue
        }
        if (!afterFile) {
            missingAfter.push(key)
            continue
        }

        const before = await readPixels(beforeFile, size)
        const after = await readPixels(afterFile, size)
        const comparison = comparePixels(before, after, threshold)
        if (comparison.metric.changedPixels === 0) continue

        changes.push({
            key,
            before: copyForReport(beforeFile, path.join(output, 'before'), key),
            after: copyForReport(afterFile, path.join(output, 'after'), key),
            diff: await diffForReport(comparison.diff, before.width, before.height, output, key),
            metric: comparison.metric,
        })
    }

    changes.sort((first, second) => second.metric.changedPercent - first.metric.changedPercent)
    const report = {
        generatedAt: new Date().toISOString(),
        beforeRoot,
        afterRoot,
        style,
        size,
        threshold,
        comparedIcons: keys.length - missingBefore.length - missingAfter.length,
        identicalIcons: keys.length - missingBefore.length - missingAfter.length - changes.length,
        changedIcons: changes.length,
        missingBefore,
        missingAfter,
        changes,
    }

    fs.writeFileSync(path.join(output, 'report.json'), JSON.stringify(report, null, 2))
    fs.writeFileSync(
        path.join(output, 'report.html'),
        buildHtml(style, threshold, report.comparedIcons, changes, missingBefore, missingAfter)
    )

    console.log(`Compared ${report.comparedIcons} ${style} PNGs.`)
    console.log(`Changed: ${report.changedIcons}; identical: ${report.identicalIcons}.`)
    console.log(`Report: ${path.join(output, 'report.html')}`)
    console.log(`Data:   ${path.join(output, 'report.json')}`)
}

const isExecutedDirectly =
    process.argv[1] !== undefined &&
    import.meta.url === pathToFileURL(path.resolve(process.argv[1])).href

if (isExecutedDirectly) await main()
