#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

type Decision = 'equivalent' | 'variant' | 'related' | 'no-match'

interface PilotDecision {
    solar: string
    solarId: string
    reference: string | null
    referenceId: string | null
    decision: Decision
    note: string
}

interface PilotResults {
    batch: string
    direction: string
    sourceSnapshot: string
    summary: Record<Decision | 'total', number>
    decisions: PilotDecision[]
}

interface PilotTarget {
    name: string
}

interface PilotBatch {
    icons: PilotTarget[]
}

interface LucideIcon {
    id: string
    name: string
    aliases?: string[]
}

interface LucideIndex {
    icons: LucideIcon[]
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
const resultsPath = path.join(appRoot, 'app/compare/pilot-results.json')
const batchPath = path.join(appRoot, 'app/compare/pilot-icons.json')
const verifiedPath = path.join(appRoot, 'app/compare/verified-matches.json')
const indexPath = path.join(atlasRoot, 'lucide/index.json')
const outputPath = path.join(atlasRoot, 'review/pilot-evaluation.json')
const decisions: Decision[] = ['equivalent', 'variant', 'related', 'no-match']

function readJson<T>(filename: string): T {
    return JSON.parse(fs.readFileSync(filename, 'utf8')) as T
}

function assert(condition: unknown, message: string): asserts condition {
    if (!condition) throw new Error(message)
}

function main(): void {
    const results = readJson<PilotResults>(resultsPath)
    const batch = readJson<PilotBatch>(batchPath)
    const lucideIndex = readJson<LucideIndex>(indexPath)
    const verified = readJson<VerifiedMatches>(verifiedPath)
    const lucideById = new Map(lucideIndex.icons.map(icon => [icon.id, icon]))
    const lucideByName = new Map<string, LucideIcon>()

    for (const icon of lucideIndex.icons) {
        lucideByName.set(icon.name, icon)
        for (const alias of icon.aliases ?? []) lucideByName.set(alias, icon)
    }

    assert(results.direction === 'solar-to-lucide', 'Unexpected pilot direction')
    assert(
        results.decisions.length === batch.icons.length,
        'Pilot result count does not match batch'
    )
    const targets = new Set(batch.icons.map(icon => icon.name))
    const seen = new Set<string>()
    const counts: Record<Decision, number> = {
        equivalent: 0,
        variant: 0,
        related: 0,
        'no-match': 0,
    }

    for (const result of results.decisions) {
        assert(targets.has(result.solar), `Unknown pilot target: ${result.solar}`)
        assert(!seen.has(result.solar), `Duplicate pilot result: ${result.solar}`)
        assert(decisions.includes(result.decision), `Invalid decision for ${result.solar}`)
        assert(result.note.trim().length > 0, `Missing decision note for ${result.solar}`)

        if (result.decision === 'no-match') {
            assert(result.reference === null, `No-match reference must be null for ${result.solar}`)
            assert(
                result.referenceId === null,
                `No-match reference ID must be null for ${result.solar}`
            )
        } else {
            assert(result.reference !== null, `Missing Lucide reference for ${result.solar}`)
            assert(result.referenceId !== null, `Missing Lucide reference ID for ${result.solar}`)
            const lucide = lucideById.get(result.referenceId)
            assert(lucide, `Unknown Lucide ID for ${result.solar}: ${result.referenceId}`)
            assert(
                lucide.name === result.reference,
                `Lucide ID/name mismatch for ${result.solar}: ${result.referenceId} is ${lucide.name}`
            )
        }

        counts[result.decision] += 1
        seen.add(result.solar)
    }

    assert(seen.size === targets.size, 'One or more pilot targets have no result')
    assert(results.summary.total === results.decisions.length, 'Incorrect total in pilot summary')
    for (const decision of decisions) {
        assert(
            results.summary[decision] === counts[decision],
            `Incorrect ${decision} summary count`
        )
    }

    const existingBySolar = new Map(
        verified.matches
            .filter(match => match.source === 'lucide')
            .map(match => [match.solar, match])
    )
    const canonical = (name: string | null): string | null =>
        name === null ? null : (lucideByName.get(name)?.name ?? `unknown:${name}`)
    let rawExactAgreement = 0
    let canonicalExactAgreement = 0
    let canonicalReferenceAgreement = 0
    let decisionAgreement = 0
    const disagreements = []

    for (const result of results.decisions) {
        const existing = existingBySolar.get(result.solar)
        assert(existing, `No existing Lucide review for pilot target: ${result.solar}`)
        const sameRawReference = result.reference === existing.reference
        const sameCanonicalReference = canonical(result.reference) === canonical(existing.reference)
        const sameDecision = result.decision === existing.decision

        if (sameRawReference && sameDecision) rawExactAgreement += 1
        if (sameCanonicalReference && sameDecision) canonicalExactAgreement += 1
        if (sameCanonicalReference) canonicalReferenceAgreement += 1
        if (sameDecision) decisionAgreement += 1
        if (!sameCanonicalReference || !sameDecision) {
            disagreements.push({
                solar: result.solar,
                pilot: { reference: result.reference, decision: result.decision },
                existing: {
                    reference: existing.reference,
                    canonicalReference: canonical(existing.reference),
                    decision: existing.decision,
                },
            })
        }
    }

    const recoveredExistingNoMatches = results.decisions
        .filter(result => {
            const existing = existingBySolar.get(result.solar) as VerifiedMatch
            return existing.decision === 'no-match' && result.decision !== 'no-match'
        })
        .map(result => result.solar)
    const rejectedExistingEquivalents = results.decisions
        .filter(result => {
            const existing = existingBySolar.get(result.solar) as VerifiedMatch
            return existing.decision === 'equivalent' && result.decision === 'no-match'
        })
        .map(result => result.solar)
    const evaluation = {
        version: 1,
        batch: results.batch,
        total: results.decisions.length,
        agreement: {
            rawReferenceAndDecision: rawExactAgreement,
            canonicalReferenceAndDecision: canonicalExactAgreement,
            canonicalReference: canonicalReferenceAgreement,
            decision: decisionAgreement,
        },
        recoveredExistingNoMatches,
        rejectedExistingEquivalents,
        disagreements,
    }

    fs.mkdirSync(path.dirname(outputPath), { recursive: true })
    fs.writeFileSync(outputPath, `${JSON.stringify(evaluation, null, 2)}\n`)
    console.log(`Validated ${results.decisions.length} independent pilot decisions.`)
    console.log(
        `Existing-map agreement: ${canonicalExactAgreement}/${results.decisions.length} canonical reference + decision.`
    )
    console.log(`Recovered existing no-matches: ${recoveredExistingNoMatches.length}.`)
    console.log(
        `Rejected existing equivalents that lose specificity: ${rejectedExistingEquivalents.length}.`
    )
    console.log(`Wrote ${path.relative(appRoot, outputPath)}.`)
}

main()
