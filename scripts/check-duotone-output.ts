import fs from 'node:fs'
import path from 'node:path'

/**
 * Generated duotone SVGs must carry the secondary-opacity style on at most one
 * element per root-to-leaf path. Opacity multiplies down the tree, so a style
 * on a `<g>` and again on its children renders the accent at the square of the
 * requested value (0.25 instead of 0.5 by default).
 *
 * Scans the committed generated outputs: `@solar-icons/static` modules and the
 * Rails gem SVGs (Blade syncs from static). Framework packages and
 * `@solar-icons/js` generate from the same `@solar-icons/core` helper, which is
 * covered by `packages/core/src/duotone.test.ts`.
 */

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')
const MARKER = '--solar-secondary-opacity'
const TAG = /<(\/)?[a-zA-Z][^>]*?(\/)?>/g

const TARGETS: ReadonlyArray<{ dir: string; ext: string }> = [
    ...['bold-duotone', 'line-duotone'].map(style => ({
        dir: path.join(REPOSITORY_ROOT, 'packages/static/src/icons', style),
        ext: '.ts',
    })),
    ...['bold-duotone', 'line-duotone'].map(style => ({
        dir: path.join(REPOSITORY_ROOT, 'packages/rails/lib/solar_icons/icons', style),
        ext: '.svg',
    })),
]

/** Highest count of opacity-styled elements stacked on one root-to-leaf path. */
export function maxOpacityDepth(markup: string): number {
    const stack: boolean[] = []
    let max = 0
    for (const match of markup.matchAll(TAG)) {
        const [tag, closing, selfClosing] = match
        if (closing) {
            stack.pop()
            continue
        }
        stack.push(tag.includes(MARKER))
        max = Math.max(max, stack.filter(Boolean).length)
        if (selfClosing) stack.pop()
    }
    return max
}

function main(): void {
    const offenders: string[] = []
    let checked = 0

    for (const { dir, ext } of TARGETS) {
        if (!fs.existsSync(dir)) {
            console.error(`Missing generated directory: ${path.relative(REPOSITORY_ROOT, dir)}`)
            process.exit(1)
        }
        for (const file of fs.readdirSync(dir)) {
            if (!file.endsWith(ext)) continue
            const source = fs.readFileSync(path.join(dir, file), 'utf8')
            // Static modules hold the SVG in a template literal; skip the doc comment.
            const markup = source.slice(source.indexOf('<svg'))
            if (!markup.includes(MARKER)) continue
            checked++
            if (maxOpacityDepth(markup) > 1)
                offenders.push(path.join(path.relative(REPOSITORY_ROOT, dir), file))
        }
    }

    if (checked === 0) {
        console.error('No generated duotone icons found; the scan paths are stale.')
        process.exit(1)
    }
    if (offenders.length > 0) {
        console.error(
            `${offenders.length} generated duotone icon(s) apply --solar-secondary-opacity more than once on a path:`
        )
        for (const file of offenders.slice(0, 20)) console.error(`  ${file}`)
        if (offenders.length > 20) console.error(`  … and ${offenders.length - 20} more`)
        process.exit(1)
    }
    console.log(`Checked ${checked} generated duotone icons: secondary opacity is applied once.`)
}

if (process.argv[1] && path.resolve(process.argv[1]) === import.meta.filename) main()
