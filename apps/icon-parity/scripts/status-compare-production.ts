#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import {
    FORWARD_REFERENCE_OVERRIDES,
    SEMANTIC_RELATED_MATCH_IDS,
    SEMANTIC_VARIANT_NO_MATCH_IDS,
} from '../app/compare/forward-semantic-promotions'

type EntryStatus = 'pending' | 'resolved' | 'unresolved'
type Decision = 'equivalent' | 'variant' | 'related' | 'no-match'
type CanonicalDecision = 'equivalent' | 'no-match'

interface MappingState {
    inventory: {
        solarIcons: number
        solarAtlasSheets: number
    }
}

interface BatchEntry {
    solarId: string
    discoveryComplete: boolean
    status: EntryStatus
    decision?: Decision | null
}

interface Batch {
    phase: string
    entries: BatchEntry[]
}

function toCanonicalDecision(decision: Decision, solarId: string): CanonicalDecision {
    return FORWARD_REFERENCE_OVERRIDES[solarId] ||
        decision === 'equivalent' ||
        (decision === 'variant' && !SEMANTIC_VARIANT_NO_MATCH_IDS.has(solarId)) ||
        SEMANTIC_RELATED_MATCH_IDS.has(solarId)
        ? 'equivalent'
        : 'no-match'
}

const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const compareRoot = path.join(appRoot, 'app/compare')
const batchRoot = path.join(compareRoot, 'lucide-production')
const statePath = path.join(compareRoot, 'mapping-state.json')

function readJson<T>(filename: string): T {
    return JSON.parse(fs.readFileSync(filename, 'utf8')) as T
}

function main(): void {
    const state = readJson<MappingState>(statePath)
    const sheetCount = state.inventory.solarAtlasSheets
    let completedSheets = 0
    let completedIcons = 0
    let nextSheet: number | null = null
    const canonicalCounts: Record<CanonicalDecision, number> = {
        equivalent: 0,
        'no-match': 0,
    }
    const auditCounts: Record<Decision, number> = {
        equivalent: 0,
        variant: 0,
        related: 0,
        'no-match': 0,
    }

    for (let sheet = 1; sheet <= sheetCount; sheet += 1) {
        const filename = path.join(batchRoot, `sheet-${String(sheet).padStart(2, '0')}.json`)
        if (!fs.existsSync(filename)) {
            console.log(`Sheet ${String(sheet).padStart(2, '0')}: missing`)
            nextSheet ??= sheet
            continue
        }

        const batch = readJson<Batch>(filename)
        const discovered = batch.entries.filter(entry => entry.discoveryComplete).length
        const resolved = batch.entries.filter(entry => entry.status === 'resolved').length
        const unresolved = batch.entries.filter(entry => entry.status === 'unresolved').length
        console.log(
            `Sheet ${String(sheet).padStart(2, '0')}: ${batch.phase} · ${discovered}/${batch.entries.length} discovered · ${resolved} resolved · ${unresolved} unresolved`
        )

        if (batch.phase === 'complete') {
            completedSheets += 1
            completedIcons += batch.entries.length
            for (const entry of batch.entries) {
                if (entry.status !== 'resolved' || entry.decision == null) continue
                auditCounts[entry.decision] += 1
                canonicalCounts[toCanonicalDecision(entry.decision, entry.solarId)] += 1
            }
        } else {
            nextSheet ??= sheet
        }
    }

    console.log(
        `Progress: ${completedSheets}/${sheetCount} sheets complete · ${completedIcons}/${state.inventory.solarIcons} icons durably recorded.`
    )
    if (completedIcons > 0) {
        console.log(
            `Canonical projection across complete sheets: ${canonicalCounts.equivalent} equivalent · ${canonicalCounts['no-match']} no-match. Audit labels retained: ${auditCounts.equivalent} equivalent · ${auditCounts.variant} variant · ${auditCounts.related} related · ${auditCounts['no-match']} no-match.`
        )
    }
    console.log(
        nextSheet === null
            ? 'Next action: production pass complete; request targeted quality audit.'
            : `Next action: resume or prepare Solar sheet ${nextSheet}.`
    )
}

main()
