#!/usr/bin/env node

import fs from 'node:fs'
import { createRequire } from 'node:module'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import sharp from 'sharp'

type AtlasSource = 'solar' | 'lucide'

interface AtlasIcon {
    id: string
    name: string
    body: string
    category?: string
    aliases?: string[]
}

interface AtlasIndexIcon extends Omit<AtlasIcon, 'body'> {
    sheet: number
    row: number
    column: number
}

interface PilotDefinition {
    version: number
    name: string
    description: string
    icons: Array<{
        name: string
        cohort: 'direct-name' | 'alternate-vocabulary' | 'specificity-trap'
    }>
}

interface IconifyIconSet {
    prefix: string
    icons: Record<string, { body: string }>
    aliases?: Record<string, { parent: string }>
    lastModified?: number
    width?: number
    height?: number
}

const require = createRequire(import.meta.url)
const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const repositoryRoot = path.resolve(appRoot, '../..')
const coreSvgRoot = path.join(repositoryRoot, 'packages/core/svgs')
const compareRoot = path.join(appRoot, 'app/compare')
const outputRoot = path.join(appRoot, '.atlas')
const pilotPath = path.join(compareRoot, 'pilot-icons.json')
const lucidePackagePath = require.resolve('@iconify-json/lucide/package.json')
const lucideIconsPath = require.resolve('@iconify-json/lucide/icons.json')

const COLUMNS = 10
const ROWS = 10
const SHEET_SIZE = COLUMNS * ROWS
const CELL_SIZE = 400
const HEADER_HEIGHT = 120

function escapeXml(value: string): string {
    return value
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&apos;')
}

function extractSvgBody(svg: string): string {
    const match = svg.match(/<svg\b[^>]*>([\s\S]*?)<\/svg>/i)
    if (!match) throw new Error('Could not extract SVG body')

    return match[1].replaceAll('#1C274C', 'currentColor').replaceAll('#000000', 'currentColor')
}

function wrapName(name: string, maxLength = 25): string[] {
    if (name.length <= maxLength) return [name]

    const parts = name.split('-')
    const lines: string[] = []
    let line = ''

    for (const part of parts) {
        const next = line ? `${line}-${part}` : part
        if (line && next.length > maxLength) {
            lines.push(line)
            line = part
        } else {
            line = next
        }
    }

    if (line) lines.push(line)
    return lines.slice(0, 2)
}

function readSolarIcons(): AtlasIcon[] {
    const icons = new Map<string, AtlasIcon>()

    for (const category of fs.readdirSync(coreSvgRoot).sort()) {
        const linearDirectory = path.join(coreSvgRoot, category, 'Linear')
        if (!fs.existsSync(linearDirectory)) continue

        for (const filename of fs.readdirSync(linearDirectory).sort()) {
            if (!filename.endsWith('.svg')) continue
            const name = filename.slice(0, -4)
            if (icons.has(name)) throw new Error(`Duplicate Solar Linear icon: ${name}`)

            icons.set(name, {
                id: '',
                name,
                category,
                body: extractSvgBody(fs.readFileSync(path.join(linearDirectory, filename), 'utf8')),
            })
        }
    }

    return [...icons.values()]
        .sort((left, right) => left.name.localeCompare(right.name))
        .map((icon, index) => ({ ...icon, id: `S${String(index + 1).padStart(4, '0')}` }))
}

function readLucideIcons(): { icons: AtlasIcon[]; version: string; lastModified?: number } {
    const iconSet = JSON.parse(fs.readFileSync(lucideIconsPath, 'utf8')) as IconifyIconSet
    const packageJson = JSON.parse(fs.readFileSync(lucidePackagePath, 'utf8')) as {
        version: string
    }
    const aliasesByParent = new Map<string, string[]>()

    for (const [alias, value] of Object.entries(iconSet.aliases ?? {})) {
        const aliases = aliasesByParent.get(value.parent) ?? []
        aliases.push(alias)
        aliasesByParent.set(value.parent, aliases)
    }

    const icons = Object.entries(iconSet.icons)
        .sort(([left], [right]) => left.localeCompare(right))
        .map(([name, icon], index) => ({
            id: `L${String(index + 1).padStart(4, '0')}`,
            name,
            body: icon.body,
            aliases: aliasesByParent.get(name)?.sort(),
        }))

    return { icons, version: packageJson.version, lastModified: iconSet.lastModified }
}

function renderCell(icon: AtlasIcon, index: number, columns = COLUMNS): string {
    const column = index % columns
    const row = Math.floor(index / columns)
    const x = column * CELL_SIZE
    const y = HEADER_HEIGHT + row * CELL_SIZE
    const iconSize = 176
    const iconX = x + (CELL_SIZE - iconSize) / 2
    const iconY = y + 72
    const lines = wrapName(icon.name)

    return `
        <g>
            <rect x="${x}" y="${y}" width="${CELL_SIZE}" height="${CELL_SIZE}" fill="#f7f5ef" stroke="#d8d4ca" stroke-width="2" />
            <text x="${x + 24}" y="${y + 40}" fill="#6b675f" font-family="DejaVu Sans Mono, monospace" font-size="24" font-weight="700">${icon.id}</text>
            <svg x="${iconX}" y="${iconY}" width="${iconSize}" height="${iconSize}" viewBox="0 0 24 24" color="#171714" fill="none">
                ${icon.body}
            </svg>
            <text x="${x + CELL_SIZE / 2}" y="${y + 300}" fill="#171714" font-family="DejaVu Sans, sans-serif" font-size="22" font-weight="600" text-anchor="middle">
                ${lines.map((line, lineIndex) => `<tspan x="${x + CELL_SIZE / 2}" dy="${lineIndex === 0 ? 0 : 30}">${escapeXml(line)}</tspan>`).join('')}
            </text>
            ${icon.category ? `<text x="${x + CELL_SIZE / 2}" y="${y + 366}" fill="#8a857b" font-family="DejaVu Sans, sans-serif" font-size="17" text-anchor="middle">${escapeXml(icon.category)}</text>` : ''}
        </g>`
}

function renderSheet(
    source: AtlasSource,
    icons: AtlasIcon[],
    sheetNumber: number,
    sheetCount: number,
    subtitle: string,
    columns = COLUMNS,
    rows = ROWS
): string {
    const width = columns * CELL_SIZE
    const height = HEADER_HEIGHT + rows * CELL_SIZE
    const start = (sheetNumber - 1) * SHEET_SIZE + 1
    const end = start + icons.length - 1

    return `<svg xmlns="http://www.w3.org/2000/svg" width="${width}" height="${height}" viewBox="0 0 ${width} ${height}">
        <rect width="${width}" height="${height}" fill="#171714" />
        <text x="32" y="48" fill="#ffffff" font-family="DejaVu Sans, sans-serif" font-size="30" font-weight="700">${source === 'solar' ? 'Solar Icons' : 'Lucide'} visual atlas</text>
        <text x="32" y="84" fill="#b8b3a8" font-family="DejaVu Sans, sans-serif" font-size="20">${escapeXml(subtitle)}</text>
        <text x="${width - 32}" y="48" fill="#ffffff" font-family="DejaVu Sans Mono, monospace" font-size="24" font-weight="700" text-anchor="end">Sheet ${sheetNumber}/${sheetCount}</text>
        <text x="${width - 32}" y="84" fill="#b8b3a8" font-family="DejaVu Sans Mono, monospace" font-size="19" text-anchor="end">Entries ${start}-${end}</text>
        ${icons.map((icon, index) => renderCell(icon, index, columns)).join('')}
    </svg>`
}

async function writeSvgAndPng(directory: string, basename: string, svg: string): Promise<void> {
    const svgPath = path.join(directory, `${basename}.svg`)
    const pngPath = path.join(directory, `${basename}.png`)
    fs.writeFileSync(svgPath, svg)
    await sharp(Buffer.from(svg)).png({ compressionLevel: 9 }).toFile(pngPath)
}

async function generateAtlas(
    source: AtlasSource,
    icons: AtlasIcon[],
    sourceMetadata: Record<string, unknown>
): Promise<void> {
    const directory = path.join(outputRoot, source)
    fs.mkdirSync(directory, { recursive: true })
    const sheetCount = Math.ceil(icons.length / SHEET_SIZE)
    const indexIcons: AtlasIndexIcon[] = []

    for (let sheetIndex = 0; sheetIndex < sheetCount; sheetIndex += 1) {
        const sheetIcons = icons.slice(sheetIndex * SHEET_SIZE, (sheetIndex + 1) * SHEET_SIZE)
        const sheetNumber = sheetIndex + 1
        const basename = `${source}-${String(sheetNumber).padStart(2, '0')}`
        const subtitle =
            source === 'solar'
                ? `Linear style · ${icons.length} logical icons · alphabetical`
                : `${icons.length} canonical icons · alphabetical`
        const svg = renderSheet(source, sheetIcons, sheetNumber, sheetCount, subtitle)

        await writeSvgAndPng(directory, basename, svg)
        sheetIcons.forEach((icon, index) => {
            indexIcons.push({
                id: icon.id,
                name: icon.name,
                category: icon.category,
                aliases: icon.aliases,
                sheet: sheetNumber,
                row: Math.floor(index / COLUMNS) + 1,
                column: (index % COLUMNS) + 1,
            })
        })
    }

    fs.writeFileSync(
        path.join(directory, 'index.json'),
        `${JSON.stringify(
            {
                version: 1,
                source,
                renderStyle: source === 'solar' ? 'Linear' : 'canonical',
                ordering: 'alphabetical',
                columns: COLUMNS,
                rows: ROWS,
                sheetSize: SHEET_SIZE,
                total: icons.length,
                sourceMetadata,
                icons: indexIcons,
            },
            null,
            2
        )}\n`
    )
}

async function generatePilot(solarIcons: AtlasIcon[]): Promise<void> {
    const pilot = JSON.parse(fs.readFileSync(pilotPath, 'utf8')) as PilotDefinition
    const solarByName = new Map(solarIcons.map(icon => [icon.name, icon]))
    const missing = pilot.icons
        .filter(entry => !solarByName.has(entry.name))
        .map(entry => entry.name)
    if (missing.length > 0) throw new Error(`Unknown pilot Solar icons: ${missing.join(', ')}`)

    const icons = pilot.icons.map(entry => solarByName.get(entry.name) as AtlasIcon)
    const directory = path.join(outputRoot, 'pilot')
    fs.mkdirSync(directory, { recursive: true })
    const columns = 5
    const rows = 6
    const svg = renderSheet(
        'solar',
        icons,
        1,
        1,
        `${pilot.name} · ${pilot.description}`,
        columns,
        rows
    )
    await writeSvgAndPng(directory, 'solar-pilot-30', svg)

    fs.writeFileSync(
        path.join(directory, 'shortlist.template.json'),
        `${JSON.stringify(
            {
                version: 1,
                batch: pilot.name,
                direction: 'solar-to-lucide',
                phase: 'candidate-discovery',
                instructions:
                    'Fill candidates independently from the existing verified mapping. Use canonical Lucide IDs from the atlas index.',
                entries: pilot.icons.map(entry => ({
                    solar: entry.name,
                    solarId: solarByName.get(entry.name)?.id,
                    cohort: entry.cohort,
                    candidates: [],
                    retrievalNote: '',
                })),
            },
            null,
            2
        )}\n`
    )
}

async function main(): Promise<void> {
    const solarIcons = readSolarIcons()
    const lucide = readLucideIcons()

    fs.rmSync(outputRoot, { recursive: true, force: true })
    fs.mkdirSync(outputRoot, { recursive: true })

    await generateAtlas('solar', solarIcons, { svgSource: 'packages/core/svgs/*/Linear' })
    await generateAtlas('lucide', lucide.icons, {
        package: '@iconify-json/lucide',
        packageVersion: lucide.version,
        lastModified: lucide.lastModified,
        aliasesRenderedSeparately: false,
    })
    await generatePilot(solarIcons)

    console.log(
        `Generated ${Math.ceil(solarIcons.length / SHEET_SIZE)} Solar sheets (${solarIcons.length} icons).`
    )
    console.log(
        `Generated ${Math.ceil(lucide.icons.length / SHEET_SIZE)} Lucide sheets (${lucide.icons.length} canonical icons).`
    )
    console.log(
        `Generated the 30-icon Solar calibration board in ${path.relative(repositoryRoot, outputRoot)}.`
    )
}

main().catch(error => {
    console.error(error)
    process.exitCode = 1
})
