import { readdir, readFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import icons from '../generated/icons.json'
import { iconifyIcons } from '../src/lib/resolveIconUtils'

const docsDir = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '../content/docs')
const bundledIcons = new Set(Object.keys(icons))
const validIconifyIcons = new Set(iconifyIcons)
const errors: string[] = []
let referenceCount = 0
let fileCount = 0

function unquote(value: string) {
    const trimmed = value.trim()
    const match = trimmed.match(/^(['"])(.*)\1$/)
    return match?.[2] ?? trimmed
}

function checkIcon(icon: string, file: string, source: string) {
    referenceCount++

    if (validIconifyIcons.has(icon)) return

    if (!icon.includes(':')) {
        errors.push(`${path.relative(docsDir, file)} (${source}): ${icon} is not an Iconify name`)
        return
    }

    if (!bundledIcons.has(icon)) {
        errors.push(`${path.relative(docsDir, file)} (${source}): ${icon} is not bundled`)
    }
}

function walkMeta(value: unknown, file: string) {
    if (Array.isArray(value)) {
        for (const item of value) walkMeta(item, file)
        return
    }

    if (!value || typeof value !== 'object') return

    for (const [key, item] of Object.entries(value)) {
        if (key === 'icon' && typeof item === 'string') {
            checkIcon(item, file, 'meta.json')
        } else {
            walkMeta(item, file)
        }
    }
}

function checkFrontmatter(content: string, file: string) {
    const match = content.match(/^---\r?\n([\s\S]*?)\r?\n---(?:\r?\n|$)/)
    const frontmatter = match?.[1]
    if (!frontmatter) return

    for (const line of frontmatter.split(/\r?\n/)) {
        if (!line.startsWith('icon:')) continue
        const iconName = line.slice('icon:'.length).trim()
        if (iconName) checkIcon(unquote(iconName), file, 'frontmatter')
    }
}

async function walk(dir: string) {
    for (const entry of await readdir(dir, { withFileTypes: true })) {
        const file = path.join(dir, entry.name)

        if (entry.isDirectory()) {
            await walk(file)
            continue
        }

        if (entry.name === 'meta.json') {
            fileCount++
            walkMeta(JSON.parse(await readFile(file, 'utf8')), file)
            continue
        }

        if (entry.name.endsWith('.mdx') || entry.name.endsWith('.md')) {
            fileCount++
            checkFrontmatter(await readFile(file, 'utf8'), file)
        }
    }
}

await walk(docsDir)

if (errors.length > 0) {
    console.error(`Invalid icon references (${errors.length}):`)
    for (const error of errors) console.error(`  - ${error}`)
    process.exit(1)
}

console.log(`Icon references OK (${referenceCount} in ${fileCount} files).`)
