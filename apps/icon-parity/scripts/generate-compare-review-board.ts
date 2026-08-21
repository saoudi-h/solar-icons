#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import sharp from 'sharp'

interface AtlasIndexEntry {
    id: string
    name: string
    sheet: number
    row: number
    column: number
}

interface AtlasIndex {
    source: 'solar' | 'lucide'
    columns: number
    rows: number
    sheetSize: number
    icons: AtlasIndexEntry[]
}

interface ShortlistEntry {
    solar: string
    solarId: string
    cohort?: string
    candidates: string[]
    retrievalNote?: string
}

interface Shortlist {
    version: number
    batch: string
    direction: 'solar-to-lucide'
    phase: 'candidate-discovery'
    entries: ShortlistEntry[]
}

const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const atlasRoot = path.join(appRoot, '.atlas')
const inputArgument = process.argv.slice(2).find(value => value !== '--')
const inputPath = path.resolve(
    process.cwd(),
    inputArgument ?? path.join(appRoot, 'app/compare/pilot-shortlist.json')
)
const outputRoot = path.join(atlasRoot, 'review')

const CELL_SIZE = 400
const SOURCE_HEADER_HEIGHT = 120
const BOARD_HEADER_HEIGHT = 120
const BOARD_COLUMNS = 4
const ROWS_PER_BOARD = 10

function readJson<T>(filename: string): T {
    return JSON.parse(fs.readFileSync(filename, 'utf8')) as T
}

function escapeXml(value: string): string {
    return value
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&apos;')
}

function validateShortlist(
    shortlist: Shortlist,
    solarById: Map<string, AtlasIndexEntry>,
    lucideById: Map<string, AtlasIndexEntry>
): void {
    const solarNames = new Set<string>()

    for (const entry of shortlist.entries) {
        const solar = solarById.get(entry.solarId)
        if (!solar) throw new Error(`Unknown Solar atlas ID: ${entry.solarId}`)
        if (solar.name !== entry.solar) {
            throw new Error(
                `Solar ID/name mismatch: ${entry.solarId} is ${solar.name}, not ${entry.solar}`
            )
        }
        if (solarNames.has(entry.solar))
            throw new Error(`Duplicate shortlist Solar icon: ${entry.solar}`)
        if (entry.candidates.length > 3) {
            throw new Error(`At most three Lucide candidates are allowed for ${entry.solar}`)
        }
        if (new Set(entry.candidates).size !== entry.candidates.length) {
            throw new Error(`Duplicate Lucide candidate for ${entry.solar}`)
        }

        for (const candidateId of entry.candidates) {
            if (!lucideById.has(candidateId))
                throw new Error(`Unknown Lucide atlas ID: ${candidateId}`)
        }
        solarNames.add(entry.solar)
    }
}

async function cropAtlasCell(source: 'solar' | 'lucide', entry: AtlasIndexEntry): Promise<Buffer> {
    const sheetName = `${source}-${String(entry.sheet).padStart(2, '0')}.png`
    const sheetPath = path.join(atlasRoot, source, sheetName)

    return sharp(sheetPath)
        .extract({
            left: (entry.column - 1) * CELL_SIZE,
            top: SOURCE_HEADER_HEIGHT + (entry.row - 1) * CELL_SIZE,
            width: CELL_SIZE,
            height: CELL_SIZE,
        })
        .png()
        .toBuffer()
}

function placeholder(label: string): Buffer {
    return Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${CELL_SIZE}" height="${CELL_SIZE}">
        <rect width="${CELL_SIZE}" height="${CELL_SIZE}" fill="#ebe8df" stroke="#cbc6ba" stroke-width="2" stroke-dasharray="10 8" />
        <text x="${CELL_SIZE / 2}" y="${CELL_SIZE / 2}" fill="#8a857b" font-family="DejaVu Sans, sans-serif" font-size="22" text-anchor="middle">${escapeXml(label)}</text>
    </svg>`)
}

function boardHeader(batch: string, boardNumber: number, boardCount: number): Buffer {
    const width = BOARD_COLUMNS * CELL_SIZE
    const labels = [
        'Solar target',
        'Lucide candidate 1',
        'Lucide candidate 2',
        'Lucide candidate 3',
    ]

    return Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${width}" height="${BOARD_HEADER_HEIGHT}">
        <rect width="${width}" height="${BOARD_HEADER_HEIGHT}" fill="#171714" />
        <text x="24" y="42" fill="#ffffff" font-family="DejaVu Sans, sans-serif" font-size="26" font-weight="700">Visual decision board · ${escapeXml(batch)}</text>
        <text x="${width - 24}" y="42" fill="#ffffff" font-family="DejaVu Sans Mono, monospace" font-size="21" font-weight="700" text-anchor="end">Board ${boardNumber}/${boardCount}</text>
        ${labels.map((label, index) => `<text x="${index * CELL_SIZE + 24}" y="88" fill="${index === 0 ? '#fbbf24' : '#b8b3a8'}" font-family="DejaVu Sans, sans-serif" font-size="18" font-weight="700">${label}</text>`).join('')}
    </svg>`)
}

async function generateBoards(
    shortlist: Shortlist,
    solarById: Map<string, AtlasIndexEntry>,
    lucideById: Map<string, AtlasIndexEntry>
): Promise<void> {
    fs.rmSync(outputRoot, { recursive: true, force: true })
    fs.mkdirSync(outputRoot, { recursive: true })
    const boardCount = Math.ceil(shortlist.entries.length / ROWS_PER_BOARD)

    for (let boardIndex = 0; boardIndex < boardCount; boardIndex += 1) {
        const entries = shortlist.entries.slice(
            boardIndex * ROWS_PER_BOARD,
            (boardIndex + 1) * ROWS_PER_BOARD
        )
        const composites: Array<{ input: Buffer; left: number; top: number }> = [
            {
                input: boardHeader(shortlist.batch, boardIndex + 1, boardCount),
                left: 0,
                top: 0,
            },
        ]

        for (const [rowIndex, entry] of entries.entries()) {
            const solar = solarById.get(entry.solarId) as AtlasIndexEntry
            composites.push({
                input: await cropAtlasCell('solar', solar),
                left: 0,
                top: BOARD_HEADER_HEIGHT + rowIndex * CELL_SIZE,
            })

            for (let candidateIndex = 0; candidateIndex < 3; candidateIndex += 1) {
                const candidateId = entry.candidates[candidateIndex]
                const candidate = candidateId ? lucideById.get(candidateId) : undefined
                composites.push({
                    input: candidate
                        ? await cropAtlasCell('lucide', candidate)
                        : placeholder(candidateIndex === 0 ? 'No candidate recorded' : '—'),
                    left: (candidateIndex + 1) * CELL_SIZE,
                    top: BOARD_HEADER_HEIGHT + rowIndex * CELL_SIZE,
                })
            }
        }

        const basename = `review-${String(boardIndex + 1).padStart(2, '0')}`
        await sharp({
            create: {
                width: BOARD_COLUMNS * CELL_SIZE,
                height: BOARD_HEADER_HEIGHT + entries.length * CELL_SIZE,
                channels: 4,
                background: '#ebe8df',
            },
        })
            .composite(composites)
            .png({ compressionLevel: 9 })
            .toFile(path.join(outputRoot, `${basename}.png`))
    }

    fs.writeFileSync(
        path.join(outputRoot, 'decisions.template.json'),
        `${JSON.stringify(
            {
                version: 1,
                batch: shortlist.batch,
                direction: shortlist.direction,
                phase: 'visual-decision',
                decisions: shortlist.entries.map(entry => ({
                    solar: entry.solar,
                    solarId: entry.solarId,
                    candidates: entry.candidates,
                    reference: null,
                    decision: null,
                    note: '',
                })),
            },
            null,
            2
        )}\n`
    )

    console.log(
        `Generated ${boardCount} visual decision board(s) in ${path.relative(appRoot, outputRoot)}.`
    )
}

async function main(): Promise<void> {
    if (!fs.existsSync(inputPath)) {
        throw new Error(
            `Shortlist not found: ${inputPath}\nCopy .atlas/pilot/shortlist.template.json outside .atlas, fill Lucide atlas IDs, and pass its path to this command.`
        )
    }

    const shortlist = readJson<Shortlist>(inputPath)
    const solarIndex = readJson<AtlasIndex>(path.join(atlasRoot, 'solar/index.json'))
    const lucideIndex = readJson<AtlasIndex>(path.join(atlasRoot, 'lucide/index.json'))
    const solarById = new Map(solarIndex.icons.map(icon => [icon.id, icon]))
    const lucideById = new Map(lucideIndex.icons.map(icon => [icon.id, icon]))

    validateShortlist(shortlist, solarById, lucideById)
    await generateBoards(shortlist, solarById, lucideById)
}

main().catch(error => {
    console.error(error)
    process.exitCode = 1
})
