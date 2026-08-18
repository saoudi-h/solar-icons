#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

interface AtlasIcon {
    id: string
    name: string
    sheet: number
}

interface AtlasIndex {
    total: number
    sourceMetadata: {
        package?: string
        packageVersion?: string
    }
    icons: AtlasIcon[]
}

interface ExistingBatch {
    phase?: string
}

const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const atlasRoot = path.join(appRoot, '.atlas')
const outputRoot = path.join(appRoot, 'app/compare/lucide-production')
const solarIndexPath = path.join(atlasRoot, 'solar/index.json')
const lucideIndexPath = path.join(atlasRoot, 'lucide/index.json')

function readJson<T>(filename: string): T {
    return JSON.parse(fs.readFileSync(filename, 'utf8')) as T
}

function batchPath(sheet: number): string {
    return path.join(outputRoot, `sheet-${String(sheet).padStart(2, '0')}.json`)
}

function main(): void {
    if (!fs.existsSync(solarIndexPath) || !fs.existsSync(lucideIndexPath)) {
        throw new Error('Missing atlas indexes. Run pnpm generate:atlases first.')
    }

    const solarIndex = readJson<AtlasIndex>(solarIndexPath)
    const lucideIndex = readJson<AtlasIndex>(lucideIndexPath)
    const sheetCount = Math.max(...solarIndex.icons.map(icon => icon.sheet))
    fs.mkdirSync(outputRoot, { recursive: true })

    let nextSheet: number | null = null
    for (let sheet = 1; sheet <= sheetCount; sheet += 1) {
        const filename = batchPath(sheet)
        if (!fs.existsSync(filename)) {
            nextSheet = sheet
            break
        }
        const batch = readJson<ExistingBatch>(filename)
        if (batch.phase !== 'complete') {
            console.log(
                `Resume Solar sheet ${sheet}/${sheetCount}: ${path.relative(appRoot, filename)} (${batch.phase ?? 'unknown phase'}).`
            )
            return
        }
    }

    if (nextSheet === null) {
        console.log(`All ${sheetCount} Solar → Lucide production sheets are complete.`)
        return
    }

    const icons = solarIndex.icons.filter(icon => icon.sheet === nextSheet)
    const filename = batchPath(nextSheet)
    const sourcePackage = lucideIndex.sourceMetadata.package ?? '@iconify-json/lucide'
    const sourceVersion = lucideIndex.sourceMetadata.packageVersion
    if (!sourceVersion) throw new Error('Lucide atlas index has no package version')

    const batch = {
        version: 1,
        batch: `solar-to-lucide-sheet-${String(nextSheet).padStart(2, '0')}`,
        direction: 'solar-to-lucide',
        sourceSnapshot: `${sourcePackage}@${sourceVersion}`,
        solarSheet: nextSheet,
        totalSolarSheets: sheetCount,
        phase: 'candidate-discovery',
        instructions:
            'Inspect this Solar sheet against the complete Lucide atlas. Record zero to three canonical Lucide candidate IDs per icon, then generate review boards and resolve every row. Do not consult or modify verified-matches.json.',
        entries: icons.map(icon => ({
            solar: icon.name,
            solarId: icon.id,
            candidates: [] as string[],
            discoveryComplete: false,
            status: 'pending',
            reference: null,
            referenceId: null,
            decision: null,
            note: '',
        })),
    }

    fs.writeFileSync(filename, `${JSON.stringify(batch, null, 4)}\n`)
    console.log(
        `Prepared Solar sheet ${nextSheet}/${sheetCount} with ${icons.length} icons: ${path.relative(appRoot, filename)}.`
    )
}

main()
