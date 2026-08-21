#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

interface LucideIcon { id: string; name: string; aliases?: string[] }
interface ProductionEntry { solar: string; solarId: string; referenceId: string | null; decision: string; candidates?: string[] }
interface ProductionSheet { entries: ProductionEntry[] }

const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const compareRoot = path.join(appRoot, 'app/compare')
const atlasRoot = path.join(appRoot, '.atlas')
const output = path.join(atlasRoot, 'forward-recall-candidates.json')

const stopWords = new Set(['minimalistic', 'minimal', 'round', 'rounded', 'square', 'circle', 'line', 'alt', '2', '3', '4', '5'])
const synonymGroups = [
    ['opened', 'open'],
    ['wave', 'searching'],
    ['quality', 'signal'],
    ['basketball', 'dribbble'],
    ['banknote', 'money', 'bill'],
    ['bookmark', 'bookmarked'],
]

function tokens(value: string): string[] {
    return value.toLowerCase().split(/[^a-z0-9]+/).filter(token => token && !stopWords.has(token))
}

function equivalentToken(a: string, b: string): boolean {
    if (a === b) return true
    return synonymGroups.some(group => group.includes(a) && group.includes(b))
}

function score(solar: string, lucide: LucideIcon): number {
    const solarTokens = tokens(solar)
    const lucideTokens = tokens(`${lucide.name} ${(lucide.aliases ?? []).join(' ')}`)
    const overlap = solarTokens.filter(solarToken => lucideTokens.some(lucideToken => equivalentToken(solarToken, lucideToken))).length
    const exactRoot = solarTokens.length > 0 && lucideTokens.includes(solarTokens[0]) ? 1 : 0
    return overlap * 10 + exactRoot
}

function readJson<T>(filename: string): T { return JSON.parse(fs.readFileSync(filename, 'utf8')) as T }

function main(): void {
    if (!fs.existsSync(path.join(atlasRoot, 'lucide/index.json'))) {
        throw new Error('Lucide atlas missing. Run `pnpm --filter icon-parity generate:atlases` first.')
    }
    const lucide = readJson<{ icons: LucideIcon[] }>(path.join(atlasRoot, 'lucide/index.json')).icons
    const entries = Array.from({ length: 13 }, (_, index) => readJson<ProductionSheet>(path.join(compareRoot, 'lucide-production', `sheet-${String(index + 1).padStart(2, '0')}.json`)).entries).flat()
    const rows = entries.filter(entry => entry.referenceId === null).map(entry => ({
        solarId: entry.solarId,
        solar: entry.solar,
        existingCandidates: entry.candidates ?? [],
        candidates: lucide
            .map(icon => ({ ...icon, score: score(entry.solar, icon) }))
            .filter(icon => icon.score > 0)
            .sort((a, b) => b.score - a.score || a.name.localeCompare(b.name))
            .slice(0, 12)
            .map(icon => ({ id: icon.id, name: icon.name, score: icon.score })),
    }))
    fs.mkdirSync(atlasRoot, { recursive: true })
    fs.writeFileSync(output, `${JSON.stringify({ version: 1, direction: 'solar-to-lucide', rows }, null, 2)}\n`)
    console.log(`Recalled Lucide name candidates for ${rows.length} Solar rows: ${output}`)
}

main()
