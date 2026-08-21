#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import { FORWARD_REFERENCE_OVERRIDES, SEMANTIC_RELATED_MATCH_IDS, SEMANTIC_VARIANT_NO_MATCH_IDS } from '../app/compare/forward-semantic-promotions'

type BatchPhase = 'candidate-discovery' | 'visual-decision' | 'complete'
type EntryStatus = 'pending' | 'resolved' | 'unresolved'
type Decision = 'equivalent' | 'variant' | 'related' | 'no-match'
type CanonicalDecision = 'equivalent' | 'no-match'

interface AtlasIcon {
    id: string
    name: string
    aliases?: string[]
    sheet: number
}

interface AtlasIndex {
    sourceMetadata: {
        package?: string
        packageVersion?: string
    }
    icons: AtlasIcon[]
}

interface BatchEntry {
    solar: string
    solarId: string
    candidates: string[]
    discoveryComplete: boolean
    status: EntryStatus
    reference: string | null
    referenceId: string | null
    decision: Decision | null
    note: string
}

interface ProductionBatch {
    batch: string
    direction: string
    sourceSnapshot: string
    solarSheet: number
    totalSolarSheets: number
    phase: BatchPhase
    entries: BatchEntry[]
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
const compareRoot = path.join(appRoot, 'app/compare')
const phases: BatchPhase[] = ['candidate-discovery', 'visual-decision', 'complete']
const statuses: EntryStatus[] = ['pending', 'resolved', 'unresolved']
const decisions: Decision[] = ['equivalent', 'variant', 'related', 'no-match']

function toCanonicalDecision(decision: Decision, solarId = ''): CanonicalDecision {
    return FORWARD_REFERENCE_OVERRIDES[solarId] || decision === 'equivalent' || (decision === 'variant' && !SEMANTIC_VARIANT_NO_MATCH_IDS.has(solarId)) || SEMANTIC_RELATED_MATCH_IDS.has(solarId) ? 'equivalent' : 'no-match'
}

function readJson<T>(filename: string): T {
    return JSON.parse(fs.readFileSync(filename, 'utf8')) as T
}

function assert(condition: unknown, message: string): asserts condition {
    if (!condition) throw new Error(message)
}

function resolveBatchPath(argument: string | undefined): string {
    assert(argument, 'Pass a Solar sheet number or production batch path.')
    if (/^\d+$/.test(argument)) {
        return path.join(
            compareRoot,
            'lucide-production',
            `sheet-${String(Number(argument)).padStart(2, '0')}.json`
        )
    }
    return path.resolve(process.cwd(), argument)
}

function writeEvaluation(
    batch: ProductionBatch,
    lucideByName: Map<string, AtlasIcon>,
    existingBySolar: Map<string, VerifiedMatch>
): void {
    const canonical = (name: string | null): string | null =>
        name === null ? null : (lucideByName.get(name)?.name ?? `unknown:${name}`)
    let agreements = 0
    let disagreements = 0
    let canonicalAgreements = 0
    let canonicalDisagreements = 0
    const auditQueue: Array<Record<string, unknown>> = []

    for (const [index, entry] of batch.entries.entries()) {
        const existing = existingBySolar.get(entry.solar)
        assert(existing, `Missing existing Lucide decision for ${entry.solar}`)
        const reasons: string[] = []

        if (entry.status !== 'resolved' || entry.decision === null) {
            reasons.push('unresolved')
        } else {
            const productionDecision = entry.decision
            const productionCanonical = toCanonicalDecision(productionDecision, entry.solarId)
            const existingCanonical = toCanonicalDecision(existing.decision)
            const agrees =
                canonical(entry.reference) === canonical(existing.reference) &&
                productionDecision === existing.decision
            const canonicalAgrees =
                productionCanonical === existingCanonical &&
                (productionCanonical === 'no-match' ||
                    canonical(entry.reference) === canonical(existing.reference))
            if (agrees) agreements += 1
            else {
                disagreements += 1
                reasons.push('reference-or-decision-disagreement')
            }
            if (canonicalAgrees) canonicalAgreements += 1
            else {
                canonicalDisagreements += 1
                reasons.push('canonical-reference-or-decision-disagreement')
            }
            if (productionDecision === 'no-match') reasons.push('production-no-match')
            if (productionDecision === 'variant' || productionDecision === 'related') {
                reasons.push('audit-only-non-equivalent-decision')
            }
            if (agrees && index % 10 === 0) reasons.push('agreement-sample')
        }

        if (reasons.length > 0) {
            auditQueue.push({
                solar: entry.solar,
                solarId: entry.solarId,
                reasons,
                production: {
                    status: entry.status,
                    reference: entry.reference,
                    referenceId: entry.referenceId,
                    decision: entry.decision,
                    canonicalDecision: entry.decision ? toCanonicalDecision(entry.decision, entry.solarId) : null,
                    note: entry.note,
                },
                existing: {
                    reference: existing.reference,
                    canonicalReference: canonical(existing.reference),
                    decision: existing.decision,
                    canonicalDecision: toCanonicalDecision(existing.decision),
                },
            })
        }
    }

    const outputRoot = path.join(
        atlasRoot,
        'production',
        `sheet-${String(batch.solarSheet).padStart(2, '0')}`
    )
    fs.mkdirSync(outputRoot, { recursive: true })
    fs.writeFileSync(
        path.join(outputRoot, 'evaluation.json'),
        `${JSON.stringify(
            {
                version: 1,
                batch: batch.batch,
                total: batch.entries.length,
                agreements,
                disagreements,
                canonicalAgreements,
                canonicalDisagreements,
                unresolved: batch.entries.filter(entry => entry.status === 'unresolved').length,
                auditQueue,
            },
            null,
            2
        )}\n`
    )
    console.log(
        `Existing-map comparison: ${agreements} exact agreements, ${disagreements} exact disagreements, ${canonicalAgreements} canonical agreements, ${canonicalDisagreements} canonical disagreements, ${auditQueue.length} queued for targeted audit.`
    )
}

function main(): void {
    const argument = process.argv.slice(2).find(value => value !== '--')
    const filename = resolveBatchPath(argument)
    assert(fs.existsSync(filename), `Production batch not found: ${filename}`)
    const solarIndexPath = path.join(atlasRoot, 'solar/index.json')
    const lucideIndexPath = path.join(atlasRoot, 'lucide/index.json')
    assert(
        fs.existsSync(solarIndexPath) && fs.existsSync(lucideIndexPath),
        'Missing atlas indexes. Run pnpm generate:atlases first.'
    )

    const batch = readJson<ProductionBatch>(filename)
    const solarIndex = readJson<AtlasIndex>(solarIndexPath)
    const lucideIndex = readJson<AtlasIndex>(lucideIndexPath)
    const verified = readJson<VerifiedMatches>(path.join(compareRoot, 'verified-matches.json'))
    const expectedSolar = solarIndex.icons.filter(icon => icon.sheet === batch.solarSheet)
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

    assert(batch.direction === 'solar-to-lucide', 'Unexpected production direction')
    assert(phases.includes(batch.phase), `Invalid production phase: ${batch.phase}`)
    assert(
        batch.sourceSnapshot ===
            `${lucideIndex.sourceMetadata.package ?? '@iconify-json/lucide'}@${lucideIndex.sourceMetadata.packageVersion}`,
        'Production source snapshot does not match the generated Lucide atlas'
    )
    assert(
        batch.entries.length === expectedSolar.length,
        `Expected ${expectedSolar.length} Solar entries, found ${batch.entries.length}`
    )

    const counts: Record<EntryStatus, number> = { pending: 0, resolved: 0, unresolved: 0 }
    const decisionCounts: Record<Decision, number> = {
        equivalent: 0,
        variant: 0,
        related: 0,
        'no-match': 0,
    }
    const canonicalCounts: Record<CanonicalDecision, number> = {
        equivalent: 0,
        'no-match': 0,
    }
    let discovered = 0

    for (const [index, entry] of batch.entries.entries()) {
        const expected = expectedSolar[index]
        const solar = solarById.get(entry.solarId)
        assert(solar, `Unknown Solar ID: ${entry.solarId}`)
        assert(
            entry.solarId === expected.id && entry.solar === expected.name,
            `Entry ${index + 1} must be ${expected.id} ${expected.name}`
        )
        assert(statuses.includes(entry.status), `Invalid status for ${entry.solar}`)
        assert(Array.isArray(entry.candidates), `Candidates must be an array for ${entry.solar}`)
        assert(
            entry.candidates.length <= 3,
            `At most three candidates are allowed for ${entry.solar}`
        )
        assert(
            new Set(entry.candidates).size === entry.candidates.length,
            `Duplicate candidate for ${entry.solar}`
        )
        for (const candidate of entry.candidates) {
            assert(
                lucideById.has(candidate),
                `Unknown Lucide candidate for ${entry.solar}: ${candidate}`
            )
        }
        if (entry.discoveryComplete) discovered += 1

        if (entry.status === 'pending') {
            assert(entry.reference === null, `Pending reference must be null for ${entry.solar}`)
            assert(
                entry.referenceId === null,
                `Pending reference ID must be null for ${entry.solar}`
            )
            assert(entry.decision === null, `Pending decision must be null for ${entry.solar}`)
        } else if (entry.status === 'unresolved') {
            assert(entry.reference === null, `Unresolved reference must be null for ${entry.solar}`)
            assert(
                entry.referenceId === null,
                `Unresolved reference ID must be null for ${entry.solar}`
            )
            assert(entry.decision === null, `Unresolved decision must be null for ${entry.solar}`)
            assert(entry.note.trim().length > 0, `Unresolved note is required for ${entry.solar}`)
        } else {
            assert(
                entry.decision !== null && decisions.includes(entry.decision),
                `Resolved decision is invalid for ${entry.solar}`
            )
            decisionCounts[entry.decision] += 1
            canonicalCounts[toCanonicalDecision(entry.decision, entry.solarId)] += 1
            if (entry.decision === 'no-match') {
                assert(
                    entry.reference === null,
                    `No-match reference must be null for ${entry.solar}`
                )
                assert(entry.referenceId === null, `No-match ID must be null for ${entry.solar}`)
            } else {
                assert(entry.reference !== null, `Resolved reference is missing for ${entry.solar}`)
                assert(
                    entry.referenceId !== null,
                    `Resolved reference ID is missing for ${entry.solar}`
                )
                assert(
                    entry.candidates.includes(entry.referenceId),
                    `Selected reference was not shortlisted for ${entry.solar}`
                )
                const lucide = lucideById.get(entry.referenceId)
                assert(lucide, `Unknown selected Lucide ID for ${entry.solar}`)
                assert(
                    lucide.name === entry.reference,
                    `Lucide ID/name mismatch for ${entry.solar}: ${entry.referenceId} is ${lucide.name}`
                )
            }
            if (entry.decision !== 'equivalent') {
                assert(entry.note.trim().length > 0, `Decision note is required for ${entry.solar}`)
            }
        }
        counts[entry.status] += 1
    }

    if (batch.phase !== 'candidate-discovery') {
        assert(discovered === batch.entries.length, 'Candidate discovery is incomplete')
    }
    if (batch.phase === 'candidate-discovery') {
        assert(
            counts.resolved === 0 && counts.unresolved === 0,
            'Decisions started before visual-decision phase'
        )
    }
    if (batch.phase === 'complete') {
        assert(counts.pending === 0, 'A complete batch cannot contain pending entries')
    }

    console.log(
        `Validated ${batch.batch}: ${discovered}/${batch.entries.length} discovered · ${counts.resolved} resolved · ${counts.unresolved} unresolved · ${counts.pending} pending · detailed decisions ${decisionCounts.equivalent} equivalent / ${decisionCounts.variant} variant / ${decisionCounts.related} related / ${decisionCounts['no-match']} no-match · canonical projection ${canonicalCounts.equivalent} equivalent / ${canonicalCounts['no-match']} no-match.`
    )

    if (batch.phase === 'complete') {
        writeEvaluation(batch, lucideByName, existingBySolar)
    }
}

main()
