import { readdirSync } from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

export const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')

/**
 * Every MDX file of the docs collection, as URL paths. Fumadocs maps
 * `v2/index.mdx` to `/docs/v2` and `v2/packages/react.mdx` to
 * `/docs/v2/packages/react`.
 */
export function collectDocsPaths(
    dir: string = path.join(appRoot, '..', 'docs', 'content', 'docs'),
    prefix = ''
): string[] {
    const paths: string[] = []

    for (const entry of readdirSync(dir, { withFileTypes: true })) {
        if (entry.isDirectory()) {
            paths.push(...collectDocsPaths(path.join(dir, entry.name), `${prefix}${entry.name}/`))
            continue
        }

        if (!entry.name.endsWith('.mdx')) continue

        const withoutExtension = entry.name.slice(0, -'.mdx'.length)
        const url = `${prefix}${withoutExtension}`.replace(/(^|\/)index$/, '$1').replace(/\/$/, '')
        paths.push(url)
    }

    return paths.sort()
}
