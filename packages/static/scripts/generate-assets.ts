#!/usr/bin/env node
/**
 * Generates the complete `@solar-icons/static` output from `@solar-icons/core`'s
 * normalized SVG source (`packages/core/svgs`).
 *
 * Output (all under `dist/` unless marked `src/` → compiled by tsdown):
 *
 *   Assets (generator → dist directly):
 *     - `dist/icons/<style>/<name>.svg`  individual SVG files
 *     - `dist/sprite.svg`                one SVG sprite
 *     - `dist/icons.json`               `{ "<name>-<style>": "<svg string>" }` flat map
 *
 *   JS source for tsdown (generator → src/):
 *     - `src/icons/<style>/<name>.ts`    per-icon module: `export default \`<svg>…\``
 *     - `src/index.ts`                   barrel re-exports (tree-shakable, zero strings inline)
 *
 * Duotone accent layers are baked with the `--solar-secondary-color` /
 * `--solar-secondary-opacity` CSS variables (via `transformDuotoneAccent`), so
 * duotone theming works with zero runtime.
 */
import { parseSvgs, transformDuotoneAccent, type ParsedIcon } from '@solar-icons/core'
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

const DIST = path.resolve(import.meta.dirname, '../dist')
const SRC_ICONS = path.resolve(import.meta.dirname, '../src/icons')
const SRC_INDEX = path.resolve(import.meta.dirname, '../src/index.ts')
const SVGS_DIR = path.resolve(import.meta.dirname, '../../core/svgs')
const CORE_SRC = path.resolve(import.meta.dirname, '../../core/src')
const ICONS_DIR = path.join(DIST, 'icons')
const JSON_PATH = path.join(DIST, 'icons.json')
const META_PATH = path.join(DIST, 'metadata.json')
const META_DESC_PATH = path.join(DIST, 'metadata-descriptions.json')
const SPRITE_PATH = path.join(DIST, 'sprite.svg')

const SVG_OPEN =
    '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke-width="1.5"'

function buildFullSvg(icon: ParsedIcon): string {
    const accent = icon.duotoneAccentInner
        ? transformDuotoneAccent(icon.duotoneAccentInner, false)
        : null
    const body = icon.inner + (accent ?? '')
    const cls = `solar solar-${icon.kebabName}-${icon.styleKebab}`
    return `${SVG_OPEN} class="${cls}">${body}</svg>`
}

function makePascalName(icon: ParsedIcon): string {
    return `${icon.pascalName}${icon.style}Icon`
}

function clean() {
    for (const p of [DIST, path.resolve(import.meta.dirname, '../src/icons'), SRC_INDEX]) {
        if (fs.existsSync(p)) {
            fs.rmSync(p, { recursive: true, force: true })
            console.log(
                pc.blue(`Cleaned ${path.relative(path.resolve(import.meta.dirname, '..'), p)}`)
            )
        }
    }
}

const main = async () => {
    try {
        clean()
        const { icons } = await parseSvgs({ svgsDir: SVGS_DIR })

        const map: Record<string, string> = {}
        const symbols: string[] = []
        const barrelLines: string[] = []

        for (const icon of icons) {
            const id = `${icon.kebabName}-${icon.styleKebab}`
            const svg = buildFullSvg(icon)

            // --- dist assets ---
            // Individual SVG file
            const svgPath = path.join(ICONS_DIR, icon.styleKebab, `${icon.kebabName}.svg`)
            fs.mkdirSync(path.dirname(svgPath), { recursive: true })
            fs.writeFileSync(svgPath, svg)

            // JSON map entry
            map[id] = svg

            // Sprite symbol
            const inner = svg.replace(/^<svg[^>]*>/, '').replace(/<\/svg>$/, '')
            symbols.push(`  <symbol id="${id}" viewBox="0 0 24 24">${inner}</symbol>`)

            // --- JS source (tsdown compiles these) ---
            // Per-icon module: src/icons/<style>/<name>.ts
            const pascalName = makePascalName(icon)
            const tsPath = path.join(SRC_ICONS, icon.styleKebab, `${icon.kebabName}.ts`)
            fs.mkdirSync(path.dirname(tsPath), { recursive: true })
            fs.writeFileSync(
                tsPath,
                `/* GENERATED FILE — @solar-icons/static */\nconst ${pascalName}: string = \`${svg.replace(/`/g, '\\`').replace(/\$/g, '\\$')}\`;\n\nexport { ${pascalName} as default };\n`
            )

            // Barrel line
            barrelLines.push(
                `export { default as ${pascalName} } from "./icons/${icon.styleKebab}/${icon.kebabName}";`
            )
        }

        // --- sprite.svg ---
        const sprite =
            '<!-- GENERATED FILE — @solar-icons/static -->\n' +
            `<svg xmlns="http://www.w3.org/2000/svg" style="display:none">\n  <defs>\n${symbols.join('\n')}\n  </defs>\n</svg>\n`
        fs.writeFileSync(SPRITE_PATH, sprite)

        // --- icons.json ---
        fs.writeFileSync(JSON_PATH, JSON.stringify(map, null, 2))

        // --- src/index.ts (barrel, tree-shakable re-exports) ---
        barrelLines.sort()
        fs.writeFileSync(
            SRC_INDEX,
            `/* GENERATED FILE — @solar-icons/static barrel */\n${barrelLines.join('\n')}\n`
        )

        // --- type helpers ---
        const typesDir = path.resolve(import.meta.dirname, '../src')
        fs.mkdirSync(typesDir, { recursive: true })
        fs.writeFileSync(path.join(typesDir, 'types.ts'), `export type IconString = string\n`)

        // --- static type declarations ---
        fs.writeFileSync(
            path.join(DIST, 'sprite.d.mts'),
            `declare const sprite: string\nexport default sprite\n`
        )
        fs.writeFileSync(
            path.join(DIST, 'icons.d.mts'),
            `declare const icons: Record<string, string>\nexport default icons\nexport { icons }\n`
        )
        fs.writeFileSync(
            path.join(DIST, 'metadata.d.mts'),
            `declare const metadata: {
  categories: Record<string, { tags: string[]; icons: string[] }>
}
export default metadata\nexport { metadata }\n`
        )
        fs.writeFileSync(
            path.join(DIST, 'metadata-descriptions.d.mts'),
            `declare const descriptions: {
  name: string
  category: string
  categoryTags: string[]
  tags: string[]
}[]
export default descriptions\nexport { descriptions }\n`
        )

        // --- metadata from core (public source of truth) ---
        fs.copyFileSync(path.join(CORE_SRC, 'metadata.json'), META_PATH)
        fs.copyFileSync(path.join(CORE_SRC, 'metadata-descriptions.json'), META_DESC_PATH)

        console.log(
            pc.green(
                `Generated ${icons.length} icons →\n  dist: svgs, sprite, json\n  src:  ${path.relative(process.cwd(), SRC_ICONS)}/* → tsdown compiles to dist/esm/`
            )
        )
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
}

await main()
