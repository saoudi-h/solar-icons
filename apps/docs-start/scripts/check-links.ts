/**
 * Fails when a page of the documentation or the blog links to a path of the
 * site that does not exist. Only absolute paths are checked (`/docs/...`,
 * `/blog/...`, `/icons`); external addresses and anchors are left alone.
 */
import { readdirSync, readFileSync } from 'node:fs'
import path from 'node:path'

import { appRoot, collectDocsPaths } from './docs-paths'

const contentDir = path.join(appRoot, 'content')

function collectFiles(dir: string): string[] {
    return readdirSync(dir, { withFileTypes: true }).flatMap(entry => {
        const file = path.join(dir, entry.name)
        if (entry.isDirectory()) return collectFiles(file)
        return entry.name.endsWith('.mdx') ? [file] : []
    })
}

function collectBlogPaths(): string[] {
    return collectFiles(path.join(contentDir, 'blog')).map(file => {
        const name = path.relative(path.join(contentDir, 'blog'), file).replace(/\.mdx$/, '')
        return name.replace(/(^|\/)index$/, '$1').replace(/\/$/, '')
    })
}

const known = new Set<string>([
    '/',
    '/icons',
    '/blog',
    '/docs',
    ...collectDocsPaths().map(url => (url ? `/docs/${url}` : '/docs')),
    ...collectBlogPaths().map(url => (url ? `/blog/${url}` : '/blog')),
])

const linkPattern = /(?:\]\(|href=")(\/[^)"#?\s]*)/g
const errors: string[] = []

for (const file of collectFiles(contentDir)) {
    // Links inside code examples are sample code, not links of the site.
    const source = readFileSync(file, 'utf8').replace(/^(`{3,}|~{3,})[\s\S]*?^\1/gm, '')
    for (const match of source.matchAll(linkPattern)) {
        const target = (match[1] ?? '').replace(/\/$/, '') || '/'
        if (/\.[a-z0-9]+$/i.test(target)) continue
        if (!known.has(target)) {
            errors.push(`${path.relative(appRoot, file)}: ${target}`)
        }
    }
}

if (errors.length > 0) {
    console.error(`${errors.length} link(s) point to a page that does not exist:`)
    for (const error of errors) console.error(`  ${error}`)
    process.exit(1)
}

console.log('All the internal links of the content resolve.')
