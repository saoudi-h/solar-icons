import { existsSync, mkdirSync, copyFileSync, readFileSync } from 'node:fs'
import { dirname } from 'node:path'

import pc from 'picocolors'

import {
    type Style,
    STYLES,
    type Framework,
    FRAMEWORKS,
    importSnippet,
    loadDescriptions,
    resolveSvgPath,
    cdnSvgUrl,
} from '../catalog.js'

export type GetCliOptions = {
    style?: string
    framework?: string
    out?: string
    json?: boolean
}

function parseStyle(v?: string): Style {
    const s = v ?? 'linear'
    if ((STYLES as readonly string[]).includes(s)) return s as Style
    throw new Error(`--style must be one of: ${STYLES.join(', ')}. Received: '${v}'`)
}
function parseFramework(v?: string): Framework {
    const f = v ?? 'react'
    if ((FRAMEWORKS as readonly string[]).includes(f)) return f as Framework
    throw new Error(`--framework must be one of: ${FRAMEWORKS.join(', ')}. Received: '${v}'`)
}

export function runGet(name: string | undefined, opts: GetCliOptions): void {
    if (!name) {
        console.error(
            pc.red('error: get requires <name>. Example: solar-icons get home --style bold')
        )
        process.exit(2)
    }
    const style = parseStyle(opts.style)
    const framework = parseFramework(opts.framework)

    const descs = loadDescriptions()
    const entry = descs.find(d => d.name === name)
    if (!entry) {
        console.error(pc.red(`error: icon '${name}' not found.`))
        console.error(pc.dim(`Try: solar-icons search "${name}" --limit 10`))
        process.exit(2)
    }

    const svgPath = resolveSvgPath(name, style)
    const cdn = cdnSvgUrl(name, style)

    const snippet = importSnippet(name, style, framework)

    if (opts.json) {
        const payload: Record<string, unknown> = {
            name,
            style,
            framework,
            category: entry.category,
            tags: entry.tags,
            import: snippet,
            cdn,
            svgPath: svgPath ?? null,
        }
        if (svgPath && existsSync(svgPath)) {
            try {
                payload.svg = readFileSync(svgPath, 'utf8')
            } catch {}
        }
        console.log(JSON.stringify(payload, null, 2))
        return
    }

    if (opts.out) {
        const out = opts.out
        if (svgPath && existsSync(svgPath)) {
            mkdirSync(dirname(out), { recursive: true })
            copyFileSync(svgPath, out)
            console.log(pc.green(out))
        } else {
            console.error(
                pc.yellow(
                    `Local SVG not found (expected ${svgPath ?? 'unknown'}). CDN fallback: ${cdn}. Use --json to get CDN URL.`
                )
            )
            process.exit(2)
        }
        console.log(pc.dim(snippet))
        return
    }

    console.log(pc.green(snippet))
    console.log(`${pc.bold('Category')}  ${pc.cyan(entry.category)}`)
    console.log(`${pc.bold('CDN')}       ${pc.underline(pc.cyan(cdn))}`)
    if (svgPath && existsSync(svgPath)) {
        const svg = readFileSync(svgPath, 'utf8')
        console.log(`\n${pc.dim('Preview')} ${pc.dim(`(${svg.length} bytes)`)}`)
        console.log(pc.dim(svg.slice(0, 400) + (svg.length > 400 ? pc.dim(' …') : '')))
    }
}
