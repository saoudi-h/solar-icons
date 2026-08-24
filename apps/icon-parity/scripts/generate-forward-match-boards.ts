#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import sharp from 'sharp'

import {
    FORWARD_REFERENCE_OVERRIDES,
    SEMANTIC_RELATED_MATCH_IDS,
    SEMANTIC_VARIANT_NO_MATCH_IDS,
} from '../app/compare/forward-semantic-promotions'

interface AtlasIcon {
    id: string
    name: string
    sheet: number
    row: number
    column: number
}

interface AtlasIndex {
    icons: AtlasIcon[]
}

interface ProductionEntry {
    solar: string
    solarId: string
    reference: string | null
    referenceId: string | null
    decision: 'equivalent' | 'variant' | 'related' | 'no-match'
    note?: string
}

interface ProductionSheet {
    solarSheet: number
    entries: ProductionEntry[]
}

const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const atlasRoot = path.join(appRoot, '.atlas')
const compareRoot = path.join(appRoot, 'app/compare')
const productionRoot = path.join(compareRoot, 'lucide-production')
const outputRoot = path.join(atlasRoot, 'forward-matches')
const cell = 400
const header = 120
const columns = 3
const rowsPerBoard = 10

function readJson<T>(file: string): T {
    return JSON.parse(fs.readFileSync(file, 'utf8')) as T
}

function escapeXml(value: string): string {
    return value
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&apos;')
}

async function crop(source: 'solar' | 'lucide', icon: AtlasIcon): Promise<Buffer> {
    const filename = `${source}-${String(icon.sheet).padStart(2, '0')}.png`
    return sharp(path.join(atlasRoot, source, filename))
        .extract({
            left: (icon.column - 1) * cell,
            top: header + (icon.row - 1) * cell,
            width: cell,
            height: cell,
        })
        .png()
        .toBuffer()
}

function label(text: string, color: string): Buffer {
    return Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${cell}" height="${cell}">
        <rect width="${cell}" height="${cell}" fill="#ebe8df" stroke="#cbc6ba" stroke-width="2" />
        <text x="${cell / 2}" y="${cell / 2 - 18}" fill="#171714" font-family="DejaVu Sans, sans-serif" font-size="24" font-weight="700" text-anchor="middle">${escapeXml(text)}</text>
        <text x="${cell / 2}" y="${cell / 2 + 24}" fill="${color}" font-family="DejaVu Sans Mono, monospace" font-size="18" text-anchor="middle">BINARY DECISION</text>
    </svg>`)
}

function boardHeader(title: string, number: number, total: number): Buffer {
    const width = columns * cell
    return Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${width}" height="${header}">
        <rect width="${width}" height="${header}" fill="#171714" />
        <text x="24" y="42" fill="#ffffff" font-family="DejaVu Sans, sans-serif" font-size="25" font-weight="700">Solar → Lucide · MATCH</text>
        <text x="24" y="88" fill="#fbbf24" font-family="DejaVu Sans, sans-serif" font-size="18">${escapeXml(title)}</text>
        <text x="${width - 24}" y="42" fill="#ffffff" font-family="DejaVu Sans Mono, monospace" font-size="20" font-weight="700" text-anchor="end">${number}/${total}</text>
        <text x="24" y="112" fill="#b8b3a8" font-family="DejaVu Sans, sans-serif" font-size="16">Solar</text>
        <text x="${cell + 24}" y="112" fill="#b8b3a8" font-family="DejaVu Sans, sans-serif" font-size="16">Lucide reference</text>
        <text x="${cell * 2 + 24}" y="112" fill="#b8b3a8" font-family="DejaVu Sans, sans-serif" font-size="16">Decision</text>
    </svg>`)
}

async function main(): Promise<void> {
    const solarIndex = readJson<AtlasIndex>(path.join(atlasRoot, 'solar/index.json'))
    const lucideIndex = readJson<AtlasIndex>(path.join(atlasRoot, 'lucide/index.json'))
    const solarById = new Map(solarIndex.icons.map(icon => [icon.id, icon]))
    const lucideById = new Map(lucideIndex.icons.map(icon => [icon.id, icon]))
    const all: Array<ProductionEntry & { binary: 'match' | 'no-match' }> = []

    for (let sheet = 1; sheet <= 13; sheet += 1) {
        const filename = path.join(productionRoot, `sheet-${String(sheet).padStart(2, '0')}.json`)
        const production = readJson<ProductionSheet>(filename)
        all.push(
            ...production.entries.map(entry => ({
                ...entry,
                reference: FORWARD_REFERENCE_OVERRIDES[entry.solarId]?.reference ?? entry.reference,
                referenceId:
                    FORWARD_REFERENCE_OVERRIDES[entry.solarId]?.referenceId ?? entry.referenceId,
                binary: (FORWARD_REFERENCE_OVERRIDES[entry.solarId] ||
                entry.decision === 'equivalent' ||
                (entry.decision === 'variant' &&
                    !SEMANTIC_VARIANT_NO_MATCH_IDS.has(entry.solarId)) ||
                SEMANTIC_RELATED_MATCH_IDS.has(entry.solarId)
                    ? 'match'
                    : 'no-match') as 'match' | 'no-match',
            }))
        )
    }

    const matches = all.filter(entry => entry.binary === 'match' && entry.referenceId)
    const noMatches = all.filter(entry => entry.binary === 'no-match')
    fs.rmSync(outputRoot, { recursive: true, force: true })
    fs.mkdirSync(outputRoot, { recursive: true })
    fs.writeFileSync(
        path.join(outputRoot, 'binary-map.json'),
        `${JSON.stringify(
            {
                version: 1,
                direction: 'solar-to-lucide',
                sourceSnapshot: '@iconify-json/lucide@1.2.123',
                contract:
                    'semantic match or no-match; equivalent, variant, and explicit semantic promotions are matches',
                solarIcons: all.length,
                matches: matches.length,
                noMatches: noMatches.length,
                entries: all,
            },
            null,
            2
        )}\n`
    )

    const boardCount = Math.ceil(matches.length / rowsPerBoard)
    for (let board = 0; board < boardCount; board += 1) {
        const entries = matches.slice(board * rowsPerBoard, (board + 1) * rowsPerBoard)
        const composites: Array<{ input: Buffer; left: number; top: number }> = [
            {
                input: boardHeader(
                    `matches ${board * rowsPerBoard + 1}–${board * rowsPerBoard + entries.length}`,
                    board + 1,
                    boardCount
                ),
                left: 0,
                top: 0,
            },
        ]
        for (const [row, entry] of entries.entries()) {
            const solar = solarById.get(entry.solarId)
            const lucide = entry.referenceId ? lucideById.get(entry.referenceId) : undefined
            if (!solar || !lucide)
                throw new Error(`Missing atlas reference for ${entry.solarId}/${entry.referenceId}`)
            const top = header + row * cell
            composites.push({ input: await crop('solar', solar), left: 0, top })
            composites.push({ input: await crop('lucide', lucide), left: cell, top })
            composites.push({
                input: label(`${entry.solarId} ↔ ${entry.referenceId}`, '#16a34a'),
                left: cell * 2,
                top,
            })
        }
        await sharp({
            create: {
                width: columns * cell,
                height: header + entries.length * cell,
                channels: 4,
                background: '#ebe8df',
            },
        })
            .composite(composites)
            .png({ compressionLevel: 9 })
            .toFile(path.join(outputRoot, `matches-${String(board + 1).padStart(2, '0')}.png`))
    }
    console.log(
        `Generated ${matches.length} binary matches in ${boardCount} visual boards; ${noMatches.length} no-match rows.`
    )
}

main()
