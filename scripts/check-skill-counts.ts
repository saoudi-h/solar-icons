import fs from 'node:fs'
import path from 'node:path'

/**
 * Skill prose must never hardcode catalog counts (icon totals, SVG
 * variations, ...): the catalog grows every release and static numbers rot
 * silently. Counts live behind `npx @solar-icons/cli overview`.
 *
 * Fails on any 4+-digit number adjacent to count nouns in skills/**.
 */

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')
const SKILLS_ROOT = path.join(REPOSITORY_ROOT, 'skills')

const COUNT_NOUNS = /\b(?:icons?\b|svg\b|variations?\b|concepts?\b)/i
const BIG_NUMBER = /\b\d(?:[\d\s,]*\d)?\b/g

function* markdownFiles(dir: string): Generator<string> {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
        const full = path.join(dir, entry.name)
        if (entry.isDirectory()) yield* markdownFiles(full)
        else if (entry.name.endsWith('.md')) yield full
    }
}

function numericValue(raw: string): number {
    return Number(raw.replace(/[\s,]/g, ''))
}

let failures = 0

for (const file of markdownFiles(SKILLS_ROOT)) {
    const lines = fs.readFileSync(file, 'utf8').split('\n')
    lines.forEach((line, index) => {
        // `overview` invocations are the sanctioned way to surface counts.
        // URLs (Figma plugin IDs, ...) are not counts.
        if (line.includes('cli overview') || line.includes('http')) return
        for (const match of line.matchAll(BIG_NUMBER)) {
            const after = line.slice(
                match.index + match[0].length,
                match.index + match[0].length + 24
            )
            if (COUNT_NOUNS.test(after) && numericValue(match[0]) >= 1000) {
                console.error(
                    `${path.relative(REPOSITORY_ROOT, file)}:${index + 1}: hardcoded count '${match[0]}' — point to \`npx @solar-icons/cli overview\` instead`
                )
                failures += 1
            }
        }
    })
}

if (failures > 0) {
    console.error(`\n${failures} hardcoded catalog count(s) in skills/ — see above.`)
    process.exit(1)
}

console.log('Skill catalog counts OK: no hardcoded numbers in skills/**.')
