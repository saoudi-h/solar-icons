import { readdir, readFile, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import type { BundledIcon } from '../src/lib/icons'

const docsRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const registryPath = path.join(docsRoot, 'generated/icons.json')
const codeDirectories = ['src']

const iconNamePattern = /['"`]([a-z][a-z0-9-]*:[a-z][a-z0-9-]*)['"`]/g
const ignoredCollections = new Set([
    'about',
    'application',
    'aria',
    'backdrop',
    'before',
    'blob',
    'buffer',
    'child_process',
    'chrome',
    'collection',
    'cluster',
    'container',
    'crypto',
    'data',
    'dark',
    'disabled',
    'dns',
    'events',
    'even',
    'file',
    'first',
    'focus',
    'font',
    'ftp',
    'git',
    'group',
    'group-hover',
    'has',
    'http',
    'https',
    'image',
    'javascript',
    'last',
    'lg',
    'light',
    'localhost',
    'marker',
    'mailto',
    'magnet',
    'md',
    'module',
    'motion-reduce',
    'motion-safe',
    'multipart',
    'net',
    'news',
    'node',
    'odd',
    'only',
    'open',
    'os',
    'peer',
    'peer-focus',
    'performance',
    'port',
    'print',
    'process',
    'querystring',
    'readline',
    'required',
    'rsc',
    'sip',
    'sm',
    'ssh',
    'stream',
    'support',
    'target',
    'tel',
    'text',
    'timer',
    'tls',
    'url',
    'urn',
    'util',
    'view-source',
    'visited',
    'vm',
    'worker_threads',
    'ws',
    'wss',
    'xl',
    'xs',
    'zlib',
    '2xl',
])

const contentIcons = new Set<string>()
const codeIcons = new Set<string>()

function collectFromJson(value: unknown, icons: Set<string>) {
    if (Array.isArray(value)) {
        for (const item of value) collectFromJson(item, icons)
        return
    }

    if (!value || typeof value !== 'object') return

    for (const [key, item] of Object.entries(value)) {
        if (key === 'icon' && typeof item === 'string' && item.includes(':')) {
            icons.add(item)
        } else {
            collectFromJson(item, icons)
        }
    }
}

async function collectFromContent(dir: string) {
    for (const entry of await readdir(dir, { withFileTypes: true })) {
        const file = path.join(dir, entry.name)

        if (entry.isDirectory()) {
            await collectFromContent(file)
            continue
        }

        if (entry.name === 'meta.json') {
            collectFromJson(JSON.parse(await readFile(file, 'utf8')), contentIcons)
            continue
        }

        if (!entry.name.endsWith('.mdx') && !entry.name.endsWith('.md')) continue

        const content = await readFile(file, 'utf8')
        const frontmatter = content.match(/^---\r?\n([\s\S]*?)\r?\n---/)?.[1] ?? ''

        for (const line of frontmatter.split(/\r?\n/)) {
            if (!line.startsWith('icon:')) continue
            const value = line
                .slice('icon:'.length)
                .trim()
                .replace(/^['"]|['"]$/g, '')
            if (value.includes(':')) contentIcons.add(value)
        }
    }
}

async function collectFromCode(dir: string) {
    for (const entry of await readdir(dir, { withFileTypes: true })) {
        const file = path.join(dir, entry.name)

        if (entry.isDirectory()) {
            await collectFromCode(file)
            continue
        }

        if (!entry.name.endsWith('.ts') && !entry.name.endsWith('.tsx')) continue

        const content = await readFile(file, 'utf8')

        for (const match of content.matchAll(iconNamePattern)) {
            const name = match[1]
            if (!name) continue
            const collection = name.slice(0, name.indexOf(':'))
            if (ignoredCollections.has(collection)) continue
            codeIcons.add(name)
        }
    }
}

async function fetchCollection(collection: string, names: string[]) {
    const url = `https://api.iconify.design/${collection}.json?icons=${names.join(',')}`
    const response = await fetch(url)

    if (!response.ok) {
        return new Map<string, BundledIcon>()
    }

    const payload = (await response.json()) as {
        width?: number
        height?: number
        icons?: Record<string, Omit<BundledIcon, 'left' | 'top'> & { left?: number; top?: number }>
        aliases?: Record<string, { parent: string }>
    }

    const defaultWidth = payload.width ?? 16
    const defaultHeight = payload.height ?? 16
    const resolved = new Map<string, BundledIcon>()

    for (const name of names) {
        const icon = payload.icons?.[name] ?? resolveAlias(payload, name)
        if (!icon) continue

        resolved.set(`${collection}:${name}`, {
            body: icon.body,
            width: icon.width ?? defaultWidth,
            height: icon.height ?? defaultHeight,
            left: icon.left ?? 0,
            top: icon.top ?? 0,
        })
    }

    return resolved
}

function resolveAlias(
    payload: {
        icons?: Record<
            string,
            { body: string; width?: number; height?: number; left?: number; top?: number }
        >
        aliases?: Record<
            string,
            { parent: string; width?: number; height?: number; left?: number; top?: number }
        >
    },
    name: string
) {
    const alias = payload.aliases?.[name]
    if (!alias) return undefined

    const parent = payload.icons?.[alias.parent]
    if (!parent) return undefined

    return {
        body: parent.body,
        width: alias.width ?? parent.width,
        height: alias.height ?? parent.height,
        left: alias.left ?? parent.left,
        top: alias.top ?? parent.top,
    }
}

async function fetchIcons(names: string[]) {
    const byCollection = new Map<string, string[]>()
    const resolved = new Map<string, BundledIcon>()

    for (const name of names) {
        const separator = name.indexOf(':')
        const collection = name.slice(0, separator)
        const icon = name.slice(separator + 1)
        const bucket = byCollection.get(collection)
        if (bucket) bucket.push(icon)
        else byCollection.set(collection, [icon])
    }

    for (const [collection, icons] of byCollection) {
        const fetched = await fetchCollection(collection, icons)
        for (const [name, data] of fetched) resolved.set(name, data)
    }

    return resolved
}

await collectFromContent(path.join(docsRoot, 'content'))

for (const directory of codeDirectories) {
    await collectFromCode(path.join(docsRoot, directory))
}

const requested = new Set([...contentIcons, ...codeIcons])
const registry = (await readFile(registryPath, 'utf8').then(JSON.parse)) as Record<
    string,
    BundledIcon
>
const missing = [...requested].filter(name => !registry[name])

if (missing.length > 0) {
    console.log(`Fetching ${missing.length} icon(s) from the Iconify API...`)
    const fetched = await fetchIcons(missing)
    for (const [name, data] of fetched) registry[name] = data
}

const sorted = Object.fromEntries(
    Object.entries(registry)
        .filter(([name]) => requested.has(name))
        .sort(([a], [b]) => a.localeCompare(b))
)

await writeFile(registryPath, `${JSON.stringify(sorted, null, 4)}\n`)

const unresolved = [...requested].filter(name => !sorted[name])
const unresolvedContent = unresolved.filter(name => contentIcons.has(name))

console.log(
    `Bundled ${Object.keys(sorted).length} icon(s) into ${path.relative(docsRoot, registryPath)}.`
)

if (unresolvedContent.length > 0) {
    console.error(`Unknown content icons: ${unresolvedContent.join(', ')}`)
    process.exit(1)
}

if (unresolved.length > 0) {
    console.warn(`Skipped unknown icons: ${unresolved.join(', ')}`)
}
