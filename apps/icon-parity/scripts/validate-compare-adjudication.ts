#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

type Decision = 'equivalent' | 'variant' | 'related' | 'no-match'
type EntryStatus = 'pending' | 'resolved' | 'unresolved'
type SelectedBasis = 'pilot' | 'existing' | 'third-option'

interface AtlasIcon {
    id: string
    name: string
    aliases?: string[]
}

interface AtlasIndex {
    icons: AtlasIcon[]
}

interface CandidateDecision {
    reference: string | null
    referenceId?: string | null
    decision: Decision
}

interface PilotDecision extends CandidateDecision {
    solar: string
    solarId: string
}

interface PilotResults {
    batch: string
    direction: string
    sourceSnapshot: string
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

interface AdjudicationEntry {
    solar: string
    solarId: string
    status: EntryStatus
    selectedBasis: SelectedBasis | null
    reference: string | null
    referenceId: string | null
    decision: Decision | null
    note: string
}

interface Adjudication {
    batch: string
    direction: string
    sourceSnapshot: string
    stage: string
    entries: AdjudicationEntry[]
}

const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const compareRoot = path.join(appRoot, 'app/compare')
const atlasIndexPath = path.join(appRoot, '.atlas/lucide/index.json')
const decisions: Decision[] = ['equivalent', 'variant', 'related', 'no-match']
const statuses: EntryStatus[] = ['pending', 'resolved', 'unresolved']
const bases: SelectedBasis[] = ['pilot', 'existing', 'third-option']

function readJson<T>(filename: string): T {
    return JSON.parse(fs.readFileSync(filename, 'utf8')) as T
}

function assert(condition: unknown, message: string): asserts condition {
    if (!condition) throw new Error(message)
}

function main(): void {
    assert(
        fs.existsSync(atlasIndexPath),
        'Missing .atlas/lucide/index.json. Run pnpm generate:atlases first.'
    )

    const adjudication = readJson<Adjudication>(path.join(compareRoot, 'pilot-adjudication.json'))
    const pilot = readJson<PilotResults>(path.join(compareRoot, 'pilot-results.json'))
    const verified = readJson<VerifiedMatches>(path.join(compareRoot, 'verified-matches.json'))
    const lucideIndex = readJson<AtlasIndex>(atlasIndexPath)
    const lucideById = new Map(lucideIndex.icons.map(icon => [icon.id, icon]))
    const lucideByName = new Map<string, AtlasIcon>()

    for (const icon of lucideIndex.icons) {
        lucideByName.set(icon.name, icon)
        for (const alias of icon.aliases ?? []) lucideByName.set(alias, icon)
    }

    assert(adjudication.batch === pilot.batch, 'Adjudication batch does not match pilot')
    assert(
        adjudication.direction === pilot.direction,
        'Adjudication direction does not match pilot'
    )
    assert(
        adjudication.sourceSnapshot === pilot.sourceSnapshot,
        'Adjudication source snapshot does not match pilot'
    )
    assert(adjudication.stage === 'independent-adjudication', 'Unexpected adjudication stage')

    const existingBySolar = new Map(
        verified.matches
            .filter(match => match.source === 'lucide')
            .map(match => [match.solar, match])
    )
    const pilotBySolar = new Map(pilot.decisions.map(result => [result.solar, result]))
    const canonical = (name: string | null): string | null =>
        name === null ? null : (lucideByName.get(name)?.name ?? `unknown:${name}`)
    const disagreementNames = pilot.decisions
        .filter(result => {
            const existing = existingBySolar.get(result.solar)
            assert(existing, `Missing existing Lucide decision for ${result.solar}`)
            return (
                canonical(result.reference) !== canonical(existing.reference) ||
                result.decision !== existing.decision
            )
        })
        .map(result => result.solar)
    const expected = new Set(disagreementNames)
    const seen = new Set<string>()
    const counts: Record<EntryStatus, number> = { pending: 0, resolved: 0, unresolved: 0 }

    assert(
        adjudication.entries.length === disagreementNames.length,
        `Expected ${disagreementNames.length} adjudication entries, found ${adjudication.entries.length}`
    )

    for (const entry of adjudication.entries) {
        assert(expected.has(entry.solar), `Unexpected adjudication target: ${entry.solar}`)
        assert(!seen.has(entry.solar), `Duplicate adjudication target: ${entry.solar}`)
        assert(statuses.includes(entry.status), `Invalid status for ${entry.solar}`)
        const pilotDecision = pilotBySolar.get(entry.solar) as PilotDecision
        assert(entry.solarId === pilotDecision.solarId, `Solar ID mismatch for ${entry.solar}`)

        if (entry.status === 'pending') {
            assert(entry.selectedBasis === null, `Pending basis must be null for ${entry.solar}`)
            assert(entry.reference === null, `Pending reference must be null for ${entry.solar}`)
            assert(
                entry.referenceId === null,
                `Pending reference ID must be null for ${entry.solar}`
            )
            assert(entry.decision === null, `Pending decision must be null for ${entry.solar}`)
        } else if (entry.status === 'unresolved') {
            assert(entry.selectedBasis === null, `Unresolved basis must be null for ${entry.solar}`)
            assert(entry.reference === null, `Unresolved reference must be null for ${entry.solar}`)
            assert(
                entry.referenceId === null,
                `Unresolved reference ID must be null for ${entry.solar}`
            )
            assert(entry.decision === null, `Unresolved decision must be null for ${entry.solar}`)
            assert(entry.note.trim().length > 0, `Unresolved note is required for ${entry.solar}`)
        } else {
            assert(
                entry.selectedBasis !== null && bases.includes(entry.selectedBasis),
                `Resolved basis is invalid for ${entry.solar}`
            )
            assert(
                entry.decision !== null && decisions.includes(entry.decision),
                `Resolved decision is invalid for ${entry.solar}`
            )
            assert(entry.note.trim().length > 0, `Resolved note is required for ${entry.solar}`)

            if (entry.decision === 'no-match') {
                assert(
                    entry.reference === null,
                    `No-match reference must be null for ${entry.solar}`
                )
                assert(
                    entry.referenceId === null,
                    `No-match reference ID must be null for ${entry.solar}`
                )
            } else {
                assert(entry.reference !== null, `Resolved reference is missing for ${entry.solar}`)
                assert(
                    entry.referenceId !== null,
                    `Resolved reference ID is missing for ${entry.solar}`
                )
                const icon = lucideById.get(entry.referenceId)
                assert(icon, `Unknown Lucide ID for ${entry.solar}: ${entry.referenceId}`)
                assert(
                    icon.name === entry.reference,
                    `Lucide ID/name mismatch for ${entry.solar}: ${entry.referenceId} is ${icon.name}`
                )
            }

            if (entry.selectedBasis !== 'third-option') {
                const candidate: CandidateDecision =
                    entry.selectedBasis === 'pilot'
                        ? pilotDecision
                        : (existingBySolar.get(entry.solar) as VerifiedMatch)
                const expectedReference =
                    candidate.decision === 'no-match' ? null : canonical(candidate.reference)
                const expectedId = expectedReference
                    ? (lucideByName.get(expectedReference)?.id ?? null)
                    : null
                assert(
                    entry.reference === expectedReference && entry.referenceId === expectedId,
                    `${entry.selectedBasis} reference was not copied canonically for ${entry.solar}`
                )
                assert(
                    entry.decision === candidate.decision,
                    `${entry.selectedBasis} decision was not copied for ${entry.solar}`
                )
            }
        }

        seen.add(entry.solar)
        counts[entry.status] += 1
    }

    for (const solar of expected) assert(seen.has(solar), `Missing adjudication target: ${solar}`)

    console.log(`Validated ${adjudication.entries.length} adjudication slots.`)
    console.log(
        `Status: ${counts.resolved} resolved, ${counts.unresolved} unresolved, ${counts.pending} pending.`
    )
    if (counts.pending === 0) {
        console.log('The adjudication record is ready for maintainer review.')
    } else {
        console.log('The accepted mapping remains locked until all pending rows are reviewed.')
    }
}

main()
