#!/usr/bin/env node
import { parseSvgs, transformDuotoneAccent, type ParsedIcon } from '@solar-icons/core'
import { Node, parse } from 'node-html-parser'
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

const DIST = path.resolve(import.meta.dirname, '../dist')
const SRC_ICONS = path.resolve(import.meta.dirname, '../src/icons')
const SRC_INDEX = path.resolve(import.meta.dirname, '../src/index.ts')
const SVGS_DIR = path.resolve(import.meta.dirname, '../../core/svgs')

type ASTNode = [string, Record<string, string>, ASTNode[]?]

/**
 * Transforms an HTML AST node into our lightweight JSON AST format
 */
function toAST(node: Node): ASTNode | null {
    if (node.nodeType === 3) return null // text node

    // As it's node-html-parser, element node is 1
    if (node.nodeType === 1) {
        const el = node as any
        const tagName = el.tagName.toLowerCase()
        const attrs = el.attributes || {}

        const children = el.childNodes.map(toAST).filter(Boolean) as ASTNode[]

        if (children.length > 0) {
            return [tagName, attrs, children]
        }
        return [tagName, attrs]
    }
    return null
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

        const barrelLines: string[] = []

        for (const icon of icons) {
            // Apply duotone accents directly as styles
            const accent = icon.duotoneAccentInner
                ? transformDuotoneAccent(icon.duotoneAccentInner, false)
                : null

            // Reconstruct the inner SVG string and parse it to AST
            const innerString = (accent ?? '') + icon.inner
            const root = parse(innerString)

            // Build the AST
            const ast = root.childNodes.map(toAST).filter(Boolean) as ASTNode[]

            // Generate TypeScript file for the icon
            const pascalName = makePascalName(icon)
            const tsPath = path.join(SRC_ICONS, icon.styleKebab, `${icon.kebabName}.ts`)

            fs.mkdirSync(path.dirname(tsPath), { recursive: true })

            const fileContent = `/* GENERATED FILE — @solar-icons/js */
import type { IconNode } from '../../types';

const ${pascalName}: IconNode = ${JSON.stringify(ast, null, 2)};

export { ${pascalName} as default };
`
            fs.writeFileSync(tsPath, fileContent)

            // Add to barrel index
            barrelLines.push(
                `export { default as ${pascalName} } from "./icons/${icon.styleKebab}/${icon.kebabName}";`
            )
        }

        // Write src/index.ts
        barrelLines.sort()
        fs.writeFileSync(
            SRC_INDEX,
            `/* GENERATED FILE — @solar-icons/js barrel */\n${barrelLines.join('\n')}\nexport * from './createIcons';\n`
        )

        console.log(
            pc.green(
                `Generated ${icons.length} icons as ASTs → ${path.relative(process.cwd(), SRC_ICONS)}`
            )
        )
    } catch (err) {
        console.error(pc.red('Build failed'))
        console.error(err)
        process.exit(1)
    }
}

await main()
