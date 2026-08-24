#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import sharp from 'sharp'

type Decision = 'equivalent' | 'variant' | 'related' | 'no-match'

interface AtlasIcon {
    id: string
    name: string
    aliases?: string[]
    sheet: number
    row: number
    column: number
}

interface AtlasIndex {
    icons: AtlasIcon[]
}

interface PilotDecision {
    solar: string
    solarId: string
    reference: string | null
    referenceId: string | null
    decision: Decision
}

interface PilotResults {
    batch: string
    decisions: PilotDecision[]
}

interface VerifiedMatch {
    solar: string
    source: string
    reference: string | null
    decision: Decision
}

interface VerifiedMatches {
    matches: VerifiedMatch[]
}

const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const atlasRoot = path.join(appRoot, '.atlas')
const outputRoot = path.join(atlasRoot, 'adjudication')
const compareRoot = path.join(appRoot, 'app/compare')
const CELL_SIZE = 400
const SOURCE_HEADER_HEIGHT = 120
const BOARD_HEADER_HEIGHT = 120
const BOARD_COLUMNS = 3
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

async function cropAtlasCell(source: 'solar' | 'lucide', icon: AtlasIcon): Promise<Buffer> {
    const filename = `${source}-${String(icon.sheet).padStart(2, '0')}.png`
    return sharp(path.join(atlasRoot, source, filename))
        .extract({
            left: (icon.column - 1) * CELL_SIZE,
            top: SOURCE_HEADER_HEIGHT + (icon.row - 1) * CELL_SIZE,
            width: CELL_SIZE,
            height: CELL_SIZE,
        })
        .png()
        .toBuffer()
}

function decisionBadge(decision: Decision, originalName?: string): Buffer {
    const label = originalName ? `${decision} · recorded as ${originalName}` : decision
    return Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${CELL_SIZE}" height="${CELL_SIZE}">
        <rect x="16" y="346" width="368" height="38" rx="8" fill="#171714" fill-opacity="0.9" />
        <text x="${CELL_SIZE / 2}" y="372" fill="#ffffff" font-family="DejaVu Sans, sans-serif" font-size="16" font-weight="700" text-anchor="middle">${escapeXml(label)}</text>
    </svg>`)
}

async function labeledCell(
    source: 'solar' | 'lucide',
    icon: AtlasIcon,
    decision?: Decision,
    originalName?: string
): Promise<Buffer> {
    const cell = await cropAtlasCell(source, icon)
    if (!decision) return cell
    return sharp(cell)
        .composite([{ input: decisionBadge(decision, originalName) }])
        .png()
        .toBuffer()
}

function placeholder(title: string, decision: Decision): Buffer {
    return Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${CELL_SIZE}" height="${CELL_SIZE}">
        <rect width="${CELL_SIZE}" height="${CELL_SIZE}" fill="#ebe8df" stroke="#cbc6ba" stroke-width="2" stroke-dasharray="10 8" />
        <text x="${CELL_SIZE / 2}" y="${CELL_SIZE / 2 - 8}" fill="#171714" font-family="DejaVu Sans, sans-serif" font-size="22" font-weight="700" text-anchor="middle">${escapeXml(title)}</text>
        <text x="${CELL_SIZE / 2}" y="${CELL_SIZE / 2 + 28}" fill="#6b675f" font-family="DejaVu Sans, sans-serif" font-size="18" text-anchor="middle">${escapeXml(decision)}</text>
    </svg>`)
}

function boardHeader(batch: string, boardNumber: number, boardCount: number): Buffer {
    const width = BOARD_COLUMNS * CELL_SIZE
    const labels = ['Solar target', 'Frozen atlas pilot', 'Existing verified map']
    return Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${width}" height="${BOARD_HEADER_HEIGHT}">
        <rect width="${width}" height="${BOARD_HEADER_HEIGHT}" fill="#171714" />
        <text x="24" y="42" fill="#ffffff" font-family="DejaVu Sans, sans-serif" font-size="25" font-weight="700">Pilot adjudication · ${escapeXml(batch)}</text>
        <text x="${width - 24}" y="42" fill="#ffffff" font-family="DejaVu Sans Mono, monospace" font-size="20" font-weight="700" text-anchor="end">Board ${boardNumber}/${boardCount}</text>
        ${labels.map((label, index) => `<text x="${index * CELL_SIZE + 24}" y="88" fill="${index === 0 ? '#fbbf24' : '#b8b3a8'}" font-family="DejaVu Sans, sans-serif" font-size="18" font-weight="700">${label}</text>`).join('')}
    </svg>`)
}

async function main(): Promise<void> {
    const pilot = readJson<PilotResults>(path.join(compareRoot, 'pilot-results.json'))
    const verified = readJson<VerifiedMatches>(path.join(compareRoot, 'verified-matches.json'))
    const solarIndex = readJson<AtlasIndex>(path.join(atlasRoot, 'solar/index.json'))
    const lucideIndex = readJson<AtlasIndex>(path.join(atlasRoot, 'lucide/index.json'))
    const solarById = new Map(solarIndex.icons.map(icon => [icon.id, icon]))
    const lucideById = new Map(lucideIndex.icons.map(icon => [icon.id, icon]))
    const lucideByName = new Map<string, AtlasIcon>()
    const existingBySolar = new Map(
        verified.matches
            .filter(match => match.source === 'lucide')
            .map(match => [match.solar, match])
    )

    for (const icon of lucideIndex.icons) {
        lucideByName.set(icon.name, icon)
        for (const alias of icon.aliases ?? []) lucideByName.set(alias, icon)
    }

    const disagreements = pilot.decisions.filter(result => {
        const existing = existingBySolar.get(result.solar)
        if (!existing) throw new Error(`Missing existing Lucide decision for ${result.solar}`)
        const pilotCanonical = result.reference
            ? lucideByName.get(result.reference)?.name
            : result.reference
        const existingCanonical = existing.reference
            ? lucideByName.get(existing.reference)?.name
            : existing.reference
        return pilotCanonical !== existingCanonical || result.decision !== existing.decision
    })

    fs.rmSync(outputRoot, { recursive: true, force: true })
    fs.mkdirSync(outputRoot, { recursive: true })
    const boardCount = Math.ceil(disagreements.length / ROWS_PER_BOARD)

    for (let boardIndex = 0; boardIndex < boardCount; boardIndex += 1) {
        const rows = disagreements.slice(
            boardIndex * ROWS_PER_BOARD,
            (boardIndex + 1) * ROWS_PER_BOARD
        )
        const composites: Array<{ input: Buffer; left: number; top: number }> = [
            { input: boardHeader(pilot.batch, boardIndex + 1, boardCount), left: 0, top: 0 },
        ]

        for (const [rowIndex, result] of rows.entries()) {
            const solar = solarById.get(result.solarId)
            if (!solar) throw new Error(`Unknown Solar atlas ID: ${result.solarId}`)
            const existing = existingBySolar.get(result.solar) as VerifiedMatch
            composites.push({
                input: await labeledCell('solar', solar),
                left: 0,
                top: BOARD_HEADER_HEIGHT + rowIndex * CELL_SIZE,
            })

            const pilotReference = result.referenceId
                ? lucideById.get(result.referenceId)
                : undefined
            composites.push({
                input: pilotReference
                    ? await labeledCell('lucide', pilotReference, result.decision)
                    : placeholder('No Lucide reference', result.decision),
                left: CELL_SIZE,
                top: BOARD_HEADER_HEIGHT + rowIndex * CELL_SIZE,
            })

            const existingReference = existing.reference
                ? lucideByName.get(existing.reference)
                : undefined
            const recordedAlias =
                existing.reference && existing.reference !== existingReference?.name
                    ? existing.reference
                    : undefined
            composites.push({
                input: existingReference
                    ? await labeledCell(
                          'lucide',
                          existingReference,
                          existing.decision,
                          recordedAlias
                      )
                    : placeholder('No Lucide reference', existing.decision),
                left: CELL_SIZE * 2,
                top: BOARD_HEADER_HEIGHT + rowIndex * CELL_SIZE,
            })
        }

        await sharp({
            create: {
                width: BOARD_COLUMNS * CELL_SIZE,
                height: BOARD_HEADER_HEIGHT + rows.length * CELL_SIZE,
                channels: 4,
                background: '#ebe8df',
            },
        })
            .composite(composites)
            .png({ compressionLevel: 9 })
            .toFile(
                path.join(outputRoot, `adjudication-${String(boardIndex + 1).padStart(2, '0')}.png`)
            )
    }

    fs.writeFileSync(
        path.join(outputRoot, 'disagreements.json'),
        `${JSON.stringify(
            {
                version: 1,
                batch: pilot.batch,
                count: disagreements.length,
                entries: disagreements.map(result => {
                    const existing = existingBySolar.get(result.solar) as VerifiedMatch
                    return {
                        solar: result.solar,
                        solarId: result.solarId,
                        pilot: {
                            reference: result.reference,
                            referenceId: result.referenceId,
                            decision: result.decision,
                        },
                        existing: {
                            reference: existing.reference,
                            canonicalReference: existing.reference
                                ? (lucideByName.get(existing.reference)?.name ?? null)
                                : null,
                            referenceId: existing.reference
                                ? (lucideByName.get(existing.reference)?.id ?? null)
                                : null,
                            decision: existing.decision,
                        },
                    }
                }),
            },
            null,
            2
        )}\n`
    )
    console.log(
        `Generated ${boardCount} adjudication board(s) for ${disagreements.length} disagreements in ${path.relative(appRoot, outputRoot)}.`
    )
}

main().catch(error => {
    console.error(error)
    process.exitCode = 1
})
