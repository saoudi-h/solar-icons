#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import sharp from 'sharp'

type Coverage = 'non-equivalent' | 'candidate-only' | 'no-recorded-coverage'
type EvidenceRole = 'selected-reference' | 'candidate'

interface AtlasIcon {
    id: string
    name: string
    aliases?: string[]
    category?: string
    sheet: number
    row: number
    column: number
}

interface AtlasIndex {
    icons: AtlasIcon[]
}

interface SolarEvidence {
    solar: string
    solarId: string
    role: EvidenceRole
    decision: 'equivalent' | 'variant' | 'related' | 'no-match'
}

interface BacklogEntry {
    rank: number
    suggestedBatch: number
    id: string
    name: string
    coverage: Coverage
    evidenceCount: number
    reason: string
    solarEvidence: SolarEvidence[]
}

interface CoverageReport {
    generatedFrom: { sourceSnapshot: string }
    backlog: BacklogEntry[]
}

interface GapTemplateEntry {
    rank: number
    lucide: string
    lucideId: string
    coverage: Coverage
    evidence: SolarEvidence[]
    solarCandidates: string[]
    decision: 'equivalent' | 'no-match' | null
    note: string
}

const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const atlasRoot = path.join(appRoot, '.atlas')
const compareRoot = path.join(appRoot, 'app/compare')
const coveragePath = path.join(compareRoot, 'lucide-coverage/coverage.json')
const outputRoot = path.join(atlasRoot, 'lucide-gap')
const templateRoot = path.join(compareRoot, 'lucide-coverage/reverse-batches')

const CELL_SIZE = 400
const HEADER_HEIGHT = 120
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

function parseArgs(): { batch: number; coverage: Coverage | 'all' } {
    const args = process.argv.slice(2).filter(value => value !== '--')
    let batch = 1
    let coverage: Coverage | 'all' = 'all'

    for (let index = 0; index < args.length; index += 1) {
        const argument = args[index]
        if (argument === '--batch') {
            const parsed = Number(args[++index])
            if (!Number.isInteger(parsed) || parsed < 1)
                throw new Error('--batch must be a positive integer')
            batch = parsed
        } else if (argument === '--coverage') {
            const parsed = args[++index] as Coverage | 'all'
            if (
                !['all', 'non-equivalent', 'candidate-only', 'no-recorded-coverage'].includes(
                    parsed
                )
            ) {
                throw new Error(
                    '--coverage must be all, non-equivalent, candidate-only, or no-recorded-coverage'
                )
            }
            coverage = parsed
        } else {
            throw new Error(`Unknown argument: ${argument}`)
        }
    }

    return { batch, coverage }
}

function placeholder(label: string): Buffer {
    return Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${CELL_SIZE}" height="${CELL_SIZE}">
        <rect width="${CELL_SIZE}" height="${CELL_SIZE}" fill="#ebe8df" stroke="#cbc6ba" stroke-width="2" stroke-dasharray="10 8" />
        <text x="${CELL_SIZE / 2}" y="${CELL_SIZE / 2}" fill="#8a857b" font-family="DejaVu Sans, sans-serif" font-size="22" text-anchor="middle">${escapeXml(label)}</text>
    </svg>`)
}

async function cropAtlasCell(source: 'solar' | 'lucide', entry: AtlasIcon): Promise<Buffer> {
    const filename = `${source}-${String(entry.sheet).padStart(2, '0')}.png`
    return sharp(path.join(atlasRoot, source, filename))
        .extract({
            left: (entry.column - 1) * CELL_SIZE,
            top: HEADER_HEIGHT + (entry.row - 1) * CELL_SIZE,
            width: CELL_SIZE,
            height: CELL_SIZE,
        })
        .png()
        .toBuffer()
}

function header(filter: string, batch: number, board: number, total: number): Buffer {
    const width = BOARD_COLUMNS * CELL_SIZE
    const labels = ['Lucide target', 'Solar evidence 1', 'Solar evidence 2', 'Solar evidence 3']
    return Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${width}" height="${HEADER_HEIGHT}">
        <rect width="${width}" height="${HEADER_HEIGHT}" fill="#171714" />
        <text x="24" y="42" fill="#ffffff" font-family="DejaVu Sans, sans-serif" font-size="26" font-weight="700">Lucide gap review · batch ${batch} · ${escapeXml(filter)}</text>
        <text x="${width - 24}" y="42" fill="#ffffff" font-family="DejaVu Sans Mono, monospace" font-size="21" font-weight="700" text-anchor="end">Board ${board}/${total}</text>
        ${labels.map((label, index) => `<text x="${index * CELL_SIZE + 24}" y="88" fill="${index === 0 ? '#fbbf24' : '#b8b3a8'}" font-family="DejaVu Sans, sans-serif" font-size="18" font-weight="700">${label}</text>`).join('')}
    </svg>`)
}

function orderedEvidence(entry: BacklogEntry): SolarEvidence[] {
    const roleWeight: Record<EvidenceRole, number> = { 'selected-reference': 0, candidate: 1 }
    const seen = new Set<string>()
    return [...entry.solarEvidence]
        .sort((left, right) => roleWeight[left.role] - roleWeight[right.role])
        .filter(item => {
            if (seen.has(item.solarId)) return false
            seen.add(item.solarId)
            return true
        })
}

const ignoredTokens = new Set([
    '2',
    '3',
    'big',
    'circle',
    'minimalistic',
    'off',
    'round',
    'square',
])

function tokens(value: string): Set<string> {
    return new Set(
        value
            .toLowerCase()
            .split(/[^a-z0-9]+/)
            .filter(token => token.length > 1 && !ignoredTokens.has(token))
    )
}

function lexicalSolarCandidates(lucide: AtlasIcon, solar: AtlasIcon[]): SolarEvidence[] {
    const lucideTokens = tokens(lucide.name)
    const scored = solar
        .map(icon => {
            const labels = [icon.name, ...(icon.aliases ?? [])]
            const iconTokens = new Set(labels.flatMap(label => [...tokens(label)]))
            const overlap = [...lucideTokens].filter(token => iconTokens.has(token)).length
            const exact = labels.some(label => label.toLowerCase() === lucide.name.toLowerCase())
            const phrase = labels.some(label =>
                label.toLowerCase().includes(lucide.name.toLowerCase())
            )
            return {
                icon,
                score: (exact ? 1000 : 0) + (phrase ? 100 : 0) + overlap * 10,
            }
        })
        .filter(item => item.score > 0)
        .sort((left, right) => right.score - left.score || left.icon.id.localeCompare(right.icon.id))
        .slice(0, 3)

    return scored.map(item => ({
        solar: item.icon.name,
        solarId: item.icon.id,
        role: 'candidate',
        decision: 'related',
    }))
}

async function main(): Promise<void> {
    const { batch, coverage } = parseArgs()
    const report = readJson<CoverageReport>(coveragePath)
    const solarIndex = readJson<AtlasIndex>(path.join(atlasRoot, 'solar/index.json'))
    const lucideIndex = readJson<AtlasIndex>(path.join(atlasRoot, 'lucide/index.json'))
    const solarById = new Map(solarIndex.icons.map(icon => [icon.id, icon]))
    const lucideById = new Map(lucideIndex.icons.map(icon => [icon.id, icon]))
    const entries = report.backlog.filter(
        entry =>
            entry.suggestedBatch === batch && (coverage === 'all' || entry.coverage === coverage)
    )
    if (entries.length === 0)
        throw new Error(`No Lucide backlog entries for batch ${batch} and coverage ${coverage}`)

    const batchName = `batch-${String(batch).padStart(2, '0')}`
    const outputBatchRoot = path.join(outputRoot, batchName)
    fs.rmSync(outputBatchRoot, { recursive: true, force: true })
    fs.mkdirSync(outputBatchRoot, { recursive: true })
    const boardCount = Math.ceil(entries.length / ROWS_PER_BOARD)

    for (let boardIndex = 0; boardIndex < boardCount; boardIndex += 1) {
        const boardEntries = entries.slice(
            boardIndex * ROWS_PER_BOARD,
            (boardIndex + 1) * ROWS_PER_BOARD
        )
        const composites: Array<{ input: Buffer; left: number; top: number }> = [
            { input: header(coverage, batch, boardIndex + 1, boardCount), left: 0, top: 0 },
        ]

        for (const [rowIndex, entry] of boardEntries.entries()) {
            const lucide = lucideById.get(entry.id)
            if (!lucide) throw new Error(`Unknown Lucide atlas ID: ${entry.id}`)
            const evidence =
                entry.coverage === 'no-recorded-coverage'
                    ? lexicalSolarCandidates(lucide, solarIndex.icons)
                    : orderedEvidence(entry)
            composites.push({
                input: await cropAtlasCell('lucide', lucide),
                left: 0,
                top: HEADER_HEIGHT + rowIndex * CELL_SIZE,
            })

            const visibleEvidence = evidence.slice(0, 3)
            for (let evidenceIndex = 0; evidenceIndex < 3; evidenceIndex += 1) {
                const item =
                    evidenceIndex < visibleEvidence.length ? visibleEvidence[evidenceIndex] : undefined
                const solar = item === undefined ? undefined : solarById.get(item.solarId)
                composites.push({
                    input: solar
                        ? await cropAtlasCell('solar', solar)
                        : placeholder(evidenceIndex === 0 ? 'No recorded Solar evidence' : '—'),
                    left: (evidenceIndex + 1) * CELL_SIZE,
                    top: HEADER_HEIGHT + rowIndex * CELL_SIZE,
                })
            }
        }

        await sharp({
            create: {
                width: BOARD_COLUMNS * CELL_SIZE,
                height: HEADER_HEIGHT + boardEntries.length * CELL_SIZE,
                channels: 4,
                background: '#ebe8df',
            },
        })
            .composite(composites)
            .png({ compressionLevel: 9 })
            .toFile(
                path.join(outputBatchRoot, `review-${String(boardIndex + 1).padStart(2, '0')}.png`)
            )
    }

    const templateEntries: GapTemplateEntry[] = entries.map(entry => {
        const lucide = lucideById.get(entry.id)
        if (!lucide) throw new Error(`Unknown Lucide atlas ID: ${entry.id}`)
        const evidence =
            entry.coverage === 'no-recorded-coverage'
                ? lexicalSolarCandidates(lucide, solarIndex.icons)
                : orderedEvidence(entry)
        return {
            rank: entry.rank,
            lucide: entry.name,
            lucideId: entry.id,
            coverage: entry.coverage,
            evidence,
            solarCandidates: entry.coverage === 'no-recorded-coverage' ? evidence.map(item => item.solarId) : [],
            decision: null,
            note: '',
        }
    })
    fs.mkdirSync(templateRoot, { recursive: true })
    const templatePath = path.join(templateRoot, `lucide-gap-${batchName}-${coverage}.json`)
    fs.writeFileSync(
        templatePath,
        `${JSON.stringify(
            {
                version: 1,
                direction: 'lucide-to-solar-gap',
                phase: 'visual-review',
                sourceSnapshot: report.generatedFrom.sourceSnapshot,
                filter: { coverage, suggestedBatch: batch },
                instructions:
                    'Inspect every Lucide target against the complete Solar atlas. For no-recorded-coverage rows, the displayed Solar entries are lexical shortlist suggestions only and must be visually verified or replaced. Fill solarCandidates with zero to three Solar IDs, then decide equivalent only when replacement meaning is interchangeable; otherwise use no-match. This artifact does not mutate production sheets or verified-matches.json.',
                entries: templateEntries,
            },
            null,
            2
        )}\n`
    )
    console.log(`Generated ${boardCount} board(s) and ${path.relative(appRoot, templatePath)}`)
}

main().catch(error => {
    console.error(error)
    process.exitCode = 1
})
