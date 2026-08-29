#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import { FORWARD_MAP } from '../app/compare/forward-map'
import {
    REVERSE_COVERAGE_OVERRIDES,
    REVERSE_REVIEW_NO_MATCH_IDS,
} from '../app/compare/reverse-coverage-policy'

type ProductionDecision = 'equivalent' | 'variant' | 'related' | 'no-match'
type StrictDecision = 'match' | 'no-match'
type Coverage = 'equivalent' | 'non-equivalent' | 'candidate-only' | 'no-recorded-coverage'
type ReverseTier = 'exact' | 'fallback' | 'gap'
type EvidenceRole = 'selected-reference' | 'candidate'
type ReverseDecision = 'equivalent' | 'no-match'

interface AtlasIcon {
    id: string
    name: string
    aliases?: string[]
    sheet: number
    row: number
    column: number
}

interface AtlasIndex {
    sourceMetadata: {
        package?: string
        packageVersion?: string
    }
    icons: AtlasIcon[]
}

interface ProductionEntry {
    solar: string
    solarId: string
    candidates: string[]
    referenceId: string | null
    decision: ProductionDecision
    note: string
}

interface ProductionBatch {
    sourceSnapshot: string
    solarSheet: number
    phase: string
    entries: ProductionEntry[]
}

interface Evidence {
    solar: string
    solarId: string
    solarSheet: number
    role: EvidenceRole
    decision: ProductionDecision
    note?: string
}

interface StrictSolarMatch {
    solar: string
    solarId: string
    solarSheet: number
}

interface ReverseReviewEntry {
    lucideId: string
    lucide: string
    solarCandidates: string[]
    decision: string
    note: string
}

interface ReverseReviewFile {
    version: number
    direction: string
    phase: string
    sourceSnapshot: string
    entries: ReverseReviewEntry[]
}

interface CoverageEntry {
    id: string
    name: string
    aliases: string[]
    lucideSheet: number
    row: number
    column: number
    strictDecision: StrictDecision
    semanticDecision: StrictDecision
    coverage: Coverage
    reverseTier: ReverseTier
    preferredSolarMatch?: StrictSolarMatch
    fallbackSolarMatches: StrictSolarMatch[]
    reverseCoverageNote?: string
    reverseReviewSolarMatches: StrictSolarMatch[]
    strictSolarMatches: StrictSolarMatch[]
    semanticSolarMatches: StrictSolarMatch[]
    reverseReview?: {
        decision: ReverseDecision
        solarCandidates: string[]
        note: string
        source: string
    }
    evidence: {
        nonEquivalent: Evidence[]
        candidateOnly: Evidence[]
    }
}

interface BacklogEntry {
    rank: number
    suggestedBatch: number
    id: string
    name: string
    coverage: Exclude<Coverage, 'equivalent'>
    evidenceCount: number
    reason: string
    solarEvidence: Array<{
        solar: string
        solarId: string
        role: EvidenceRole
        decision: ProductionDecision
    }>
}

interface CoverageReport {
    version: 1
    generatedFrom: {
        direction: 'solar-to-lucide'
        projection: 'semantic-forward-projection'
        productionDirectory: string
        sourceSnapshot: string
        lucideIcons: number
        productionSheets: number
        productionSolarIcons: number
        policy: string
    }
    counts: {
        lucideIcons: number
        strictEquivalentCovered: number
        strictNoMatch: number
        semanticEquivalentCovered: number
        semanticNoMatch: number
        nonEquivalentOnly: number
        candidateOnly: number
        noRecordedCoverage: number
        strictSolarMatches: number
        strictCoverageCollisions: number
        semanticSolarMatches: number
        semanticCoverageCollisions: number
        nonEquivalentEvidence: number
        candidateOnlyEvidence: number
        reverseReviewed: number
        reverseEquivalent: number
        reverseNoMatch: number
        reverseExactCovered: number
        reverseFallbackCovered: number
        reverseGapCount: number
        backlogItems: number
        backlogBatchSize: number
    }
    entries: CoverageEntry[]
    backlog: BacklogEntry[]
}

const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const compareRoot = path.join(appRoot, 'app/compare')
const atlasRoot = path.join(appRoot, '.atlas')
const productionRoot = path.join(compareRoot, 'lucide-production')
const coverageRoot = path.join(compareRoot, 'lucide-coverage')
const reverseReviewRoot = path.join(coverageRoot, 'reverse-batches')
const coveragePath = path.join(coverageRoot, 'coverage.json')
// A review packet is intentionally large enough to amortize atlas loading and agent setup.
// The first reverse packet was a 50-target calibration pass; new packets use 100 targets.
const backlogBatchSize = 100

function readJson<T>(filename: string): T {
    return JSON.parse(fs.readFileSync(filename, 'utf8')) as T
}

function assert(condition: unknown, message: string): asserts condition {
    if (!condition) throw new Error(message)
}

function relativeFromApp(filename: string): string {
    return path.relative(appRoot, filename)
}

function collectProductionBatches(): ProductionBatch[] {
    assert(fs.existsSync(productionRoot), `Missing production directory: ${productionRoot}`)
    const filenames = fs
        .readdirSync(productionRoot)
        .filter(filename => /^sheet-\d{2}\.json$/.test(filename))
        .sort()

    assert(filenames.length > 0, `No production sheets found in ${productionRoot}`)
    return filenames.map(filename => readJson<ProductionBatch>(path.join(productionRoot, filename)))
}

function collectReverseReviews(
    sourceSnapshot: string,
    lucideIds: Set<string>
): Map<string, ReverseReviewEntry & { source: string }> {
    if (!fs.existsSync(reverseReviewRoot)) return new Map()
    const filenames = fs
        .readdirSync(reverseReviewRoot)
        .filter(filename => filename.endsWith('-review.json'))
        .sort()
    const reviewed = new Map<string, ReverseReviewEntry & { source: string }>()

    for (const filename of filenames) {
        const file = readJson<ReverseReviewFile>(path.join(reverseReviewRoot, filename))
        assert(file.version === 1, `Unsupported reverse review version in ${filename}`)
        assert(
            file.direction === 'lucide-to-solar-gap',
            `Unexpected reverse review direction in ${filename}`
        )
        assert(file.phase === 'visual-review-closed', `Reverse review is not closed: ${filename}`)
        assert(
            file.sourceSnapshot === sourceSnapshot,
            `Reverse review snapshot does not match ${filename}`
        )

        for (const entry of file.entries) {
            assert(
                lucideIds.has(entry.lucideId),
                `Unknown Lucide ID in reverse review: ${entry.lucideId}`
            )
            assert(
                entry.decision === 'equivalent' || entry.decision === 'no-match',
                `Non-binary reverse decision in ${filename}`
            )
            assert(!reviewed.has(entry.lucideId), `Duplicate reverse review for ${entry.lucideId}`)
            reviewed.set(entry.lucideId, {
                ...entry,
                source: relativeFromApp(path.join(reverseReviewRoot, filename)),
            })
        }
    }

    return reviewed
}

function pushCandidateEvidence(
    evidenceByLucide: Map<string, Evidence[]>,
    lucideId: string,
    entry: ProductionEntry,
    solarSheet: number
): void {
    const current = evidenceByLucide.get(lucideId) ?? []
    current.push({
        solar: entry.solar,
        solarId: entry.solarId,
        solarSheet,
        role: 'candidate',
        decision: entry.decision,
        note: entry.note || undefined,
    })
    evidenceByLucide.set(lucideId, current)
}

function pushSelectedEvidence(
    evidenceByLucide: Map<string, Evidence[]>,
    lucideId: string,
    entry: ProductionEntry,
    solarSheet: number
): void {
    const current = evidenceByLucide.get(lucideId) ?? []
    current.push({
        solar: entry.solar,
        solarId: entry.solarId,
        solarSheet,
        role: 'selected-reference',
        decision: entry.decision,
        note: entry.note || undefined,
    })
    evidenceByLucide.set(lucideId, current)
}

function buildBacklog(entries: CoverageEntry[], reviewedIds: Set<string>): BacklogEntry[] {
    const bucketWeight: Record<Exclude<Coverage, 'equivalent'>, number> = {
        'non-equivalent': 0,
        'candidate-only': 1,
        'no-recorded-coverage': 2,
    }

    const rows = entries
        .filter(
            (entry): entry is CoverageEntry & { coverage: Exclude<Coverage, 'equivalent'> } =>
                entry.coverage !== 'equivalent' && !reviewedIds.has(entry.id)
        )
        .sort((a, b) => {
            const bucket = bucketWeight[a.coverage] - bucketWeight[b.coverage]
            if (bucket !== 0) return bucket
            const evidenceA = a.evidence.nonEquivalent.length + a.evidence.candidateOnly.length
            const evidenceB = b.evidence.nonEquivalent.length + b.evidence.candidateOnly.length
            if (evidenceA !== evidenceB) return evidenceB - evidenceA
            return a.name.localeCompare(b.name)
        })

    return rows.map((entry, index) => {
        const evidence = [...entry.evidence.nonEquivalent, ...entry.evidence.candidateOnly]
        const reason =
            entry.coverage === 'non-equivalent'
                ? 'Lucide was selected only as a variant or related reference, so it is a near miss but not a strict Solar replacement.'
                : entry.coverage === 'candidate-only'
                  ? 'Lucide appeared in Solar candidate shortlists but was never accepted as a strict equivalent.'
                  : 'Lucide never appeared in the recorded Solar to Lucide production pass.'

        return {
            rank: index + 1,
            suggestedBatch: Math.floor(index / backlogBatchSize) + 1,
            id: entry.id,
            name: entry.name,
            coverage: entry.coverage,
            evidenceCount: evidence.length,
            reason,
            solarEvidence: evidence.slice(0, 8).map(item => ({
                solar: item.solar,
                solarId: item.solarId,
                role: item.role,
                decision: item.decision,
            })),
        }
    })
}

function buildReport(): CoverageReport {
    const lucideIndexPath = path.join(atlasRoot, 'lucide/index.json')
    assert(
        fs.existsSync(lucideIndexPath),
        'Missing .atlas/lucide/index.json. Run pnpm generate:atlases first.'
    )

    const lucideIndex = readJson<AtlasIndex>(lucideIndexPath)
    const batches = collectProductionBatches()
    const sourceSnapshot = `${lucideIndex.sourceMetadata.package ?? '@iconify-json/lucide'}@${lucideIndex.sourceMetadata.packageVersion}`
    const lucideIds = new Set(lucideIndex.icons.map(icon => icon.id))
    const reverseReviews = collectReverseReviews(sourceSnapshot, lucideIds)
    const strictMatchesByLucide = new Map<string, StrictSolarMatch[]>()
    const semanticMatchesByLucide = new Map<string, StrictSolarMatch[]>()
    const solarDetailsById = new Map<string, StrictSolarMatch>()
    const forwardBySolarId = new Map(FORWARD_MAP.map(entry => [entry.solarId, entry]))
    const nonEquivalentByLucide = new Map<string, Evidence[]>()
    const candidateOnlyByLucide = new Map<string, Evidence[]>()
    let productionSolarIcons = 0

    for (const batch of batches) {
        assert(batch.phase === 'complete', `Production sheet ${batch.solarSheet} is not complete`)
        assert(
            batch.sourceSnapshot === sourceSnapshot,
            `Production sheet ${batch.solarSheet} snapshot does not match ${sourceSnapshot}`
        )

        for (const entry of batch.entries) {
            productionSolarIcons += 1
            solarDetailsById.set(entry.solarId, {
                solar: entry.solar,
                solarId: entry.solarId,
                solarSheet: batch.solarSheet,
            })

            for (const candidate of entry.candidates) {
                if (candidate !== entry.referenceId) {
                    pushCandidateEvidence(candidateOnlyByLucide, candidate, entry, batch.solarSheet)
                }
            }

            const forward = forwardBySolarId.get(entry.solarId)
            const semanticReferenceId = forward?.referenceId ?? entry.referenceId
            if (semanticReferenceId === null) continue

            if (entry.decision === 'equivalent') {
                const current = strictMatchesByLucide.get(entry.referenceId as string) ?? []
                current.push({
                    solar: entry.solar,
                    solarId: entry.solarId,
                    solarSheet: batch.solarSheet,
                })
                strictMatchesByLucide.set(entry.referenceId as string, current)
            }

            if (forward?.decision === 'match') {
                const current = semanticMatchesByLucide.get(semanticReferenceId) ?? []
                current.push({
                    solar: entry.solar,
                    solarId: entry.solarId,
                    solarSheet: batch.solarSheet,
                })
                semanticMatchesByLucide.set(semanticReferenceId, current)
            } else if (entry.decision === 'variant' || entry.decision === 'related') {
                pushSelectedEvidence(
                    nonEquivalentByLucide,
                    semanticReferenceId,
                    entry,
                    batch.solarSheet
                )
            }
        }
    }

    for (const id of [
        ...strictMatchesByLucide.keys(),
        ...nonEquivalentByLucide.keys(),
        ...candidateOnlyByLucide.keys(),
    ]) {
        assert(lucideIds.has(id), `Unknown Lucide ID in production evidence: ${id}`)
    }

    const entries: CoverageEntry[] = lucideIndex.icons.map(icon => {
        const strictSolarMatches = strictMatchesByLucide.get(icon.id) ?? []
        const semanticSolarMatches = semanticMatchesByLucide.get(icon.id) ?? []
        const nonEquivalent = nonEquivalentByLucide.get(icon.id) ?? []
        const candidateOnly = candidateOnlyByLucide.get(icon.id) ?? []
        const reverseReview = reverseReviews.get(icon.id)
        const reverseOverride = REVERSE_COVERAGE_OVERRIDES[icon.id]
        const policyExactSolarMatches = (reverseOverride?.exactSolarIds ?? []).map(solarId => {
            const match = solarDetailsById.get(solarId)
            assert(match, `Unknown Solar ID in reverse coverage policy: ${solarId}`)
            return match
        })
        const reverseReviewSolarMatches =
            reverseReview?.decision === 'equivalent' && !REVERSE_REVIEW_NO_MATCH_IDS.has(icon.id)
                ? reverseReview.solarCandidates.map(solarId => {
                      const match = solarDetailsById.get(solarId)
                      assert(match, `Unknown Solar ID in reverse review: ${solarId}`)
                      return match
                  })
                : []
        const preferredSolarMatch = reverseOverride?.preferredSolarId
            ? semanticSolarMatches.find(match => match.solarId === reverseOverride.preferredSolarId)
            : (strictSolarMatches[0] ??
              semanticSolarMatches[0] ??
              policyExactSolarMatches[0] ??
              reverseReviewSolarMatches[0])
        if (reverseOverride?.preferredSolarId) {
            assert(
                preferredSolarMatch,
                `Reverse preferred Solar ID ${reverseOverride.preferredSolarId} is not a semantic match for ${icon.id}`
            )
        }
        const fallbackSolarMatches = (reverseOverride?.fallbackSolarIds ?? []).map(solarId => {
            const match = solarDetailsById.get(solarId)
            assert(match, `Unknown Solar ID in reverse coverage policy: ${solarId}`)
            return match
        })
        const reverseTier: ReverseTier =
            semanticSolarMatches.length > 0 ||
            policyExactSolarMatches.length > 0 ||
            reverseReviewSolarMatches.length > 0
                ? 'exact'
                : fallbackSolarMatches.length > 0
                  ? 'fallback'
                  : 'gap'
        const coverage: Coverage =
            semanticSolarMatches.length > 0
                ? 'equivalent'
                : nonEquivalent.length > 0
                  ? 'non-equivalent'
                  : candidateOnly.length > 0
                    ? 'candidate-only'
                    : 'no-recorded-coverage'

        return {
            id: icon.id,
            name: icon.name,
            aliases: icon.aliases ?? [],
            lucideSheet: icon.sheet,
            row: icon.row,
            column: icon.column,
            strictDecision: strictSolarMatches.length > 0 ? 'match' : 'no-match',
            semanticDecision: semanticSolarMatches.length > 0 ? 'match' : 'no-match',
            coverage,
            reverseTier,
            preferredSolarMatch,
            fallbackSolarMatches,
            reverseCoverageNote: reverseOverride?.note,
            reverseReviewSolarMatches: [...policyExactSolarMatches, ...reverseReviewSolarMatches],
            strictSolarMatches,
            semanticSolarMatches,
            reverseReview: reverseReview
                ? {
                      decision: reverseReview.decision as ReverseDecision,
                      solarCandidates: reverseReview.solarCandidates,
                      note: reverseReview.note,
                      source: reverseReview.source,
                  }
                : undefined,
            evidence: {
                nonEquivalent,
                candidateOnly,
            },
        }
    })

    const backlog = buildBacklog(entries, new Set(reverseReviews.keys()))
    const counts = {
        lucideIcons: entries.length,
        strictEquivalentCovered: entries.filter(entry => entry.strictDecision === 'match').length,
        strictNoMatch: entries.filter(entry => entry.strictDecision === 'no-match').length,
        semanticEquivalentCovered: entries.filter(entry => entry.semanticDecision === 'match')
            .length,
        semanticNoMatch: entries.filter(entry => entry.semanticDecision === 'no-match').length,
        nonEquivalentOnly: entries.filter(entry => entry.coverage === 'non-equivalent').length,
        candidateOnly: entries.filter(entry => entry.coverage === 'candidate-only').length,
        noRecordedCoverage: entries.filter(entry => entry.coverage === 'no-recorded-coverage')
            .length,
        strictSolarMatches: [...strictMatchesByLucide.values()].reduce(
            (total, matches) => total + matches.length,
            0
        ),
        strictCoverageCollisions: entries.filter(entry => entry.strictSolarMatches.length > 1)
            .length,
        semanticSolarMatches: [...semanticMatchesByLucide.values()].reduce(
            (total, matches) => total + matches.length,
            0
        ),
        semanticCoverageCollisions: entries.filter(entry => entry.semanticSolarMatches.length > 1)
            .length,
        nonEquivalentEvidence: [...nonEquivalentByLucide.values()].reduce(
            (total, evidence) => total + evidence.length,
            0
        ),
        candidateOnlyEvidence: [...candidateOnlyByLucide.values()].reduce(
            (total, evidence) => total + evidence.length,
            0
        ),
        reverseReviewed: reverseReviews.size,
        reverseEquivalent: [...reverseReviews.values()].filter(
            entry => entry.decision === 'equivalent'
        ).length,
        reverseNoMatch: [...reverseReviews.values()].filter(entry => entry.decision === 'no-match')
            .length,
        reverseExactCovered: entries.filter(entry => entry.reverseTier === 'exact').length,
        reverseFallbackCovered: entries.filter(entry => entry.reverseTier === 'fallback').length,
        reverseGapCount: entries.filter(entry => entry.reverseTier === 'gap').length,
        backlogItems: backlog.length,
        backlogBatchSize,
    }

    assert(
        counts.strictEquivalentCovered + counts.strictNoMatch === counts.lucideIcons,
        'Strict binary coverage counts do not cover the full Lucide inventory'
    )

    return {
        version: 1,
        generatedFrom: {
            direction: 'solar-to-lucide',
            projection: 'semantic-forward-projection',
            productionDirectory: relativeFromApp(productionRoot),
            sourceSnapshot,
            lucideIcons: lucideIndex.icons.length,
            productionSheets: batches.length,
            productionSolarIcons,
            policy: 'The semantic forward projection (equivalent, reviewed variants, explicit related promotions, and reference overrides) defines Solar coverage. Reverse coverage additionally distinguishes an exact preferred replacement, an explicit context-dependent fallback, and a true gap. Reverse fallbacks are never inferred from names or collisions.',
        },
        counts,
        entries,
        backlog,
    }
}

function stringifyReport(report: CoverageReport): string {
    return `${JSON.stringify(report, null, 2)}\n`
}

function printSummary(report: CoverageReport): void {
    console.log(
        [
            `Lucide coverage from ${report.generatedFrom.sourceSnapshot}:`,
            `  ${report.counts.semanticEquivalentCovered}/${report.counts.lucideIcons} Lucide icons have semantic Solar coverage (${report.counts.semanticNoMatch} semantic gaps).`,
            `  Strict historical projection: ${report.counts.strictEquivalentCovered}/${report.counts.lucideIcons}.`,
            `  ${report.counts.strictNoMatch} Lucide icons are strict no-match (including reviewed reverse no-matches).`,
            `  Reverse review closed: ${report.counts.reverseReviewed} (${report.counts.reverseEquivalent} equivalent, ${report.counts.reverseNoMatch} no-match).`,
            `  Reverse tiers: ${report.counts.reverseExactCovered} exact, ${report.counts.reverseFallbackCovered} fallback, ${report.counts.reverseGapCount} gaps.`,
            `  Backlog buckets: ${report.counts.nonEquivalentOnly} non-equivalent, ${report.counts.candidateOnly} candidate-only, ${report.counts.noRecordedCoverage} no recorded coverage.`,
            `  Suggested backlog batch size: ${report.counts.backlogBatchSize}.`,
        ].join('\n')
    )
}

function main(): void {
    const check = process.argv.includes('--check')
    const report = buildReport()
    const output = stringifyReport(report)

    if (check) {
        assert(fs.existsSync(coveragePath), `Missing generated coverage file: ${coveragePath}`)
        const current = fs.readFileSync(coveragePath, 'utf8')
        assert(current === output, 'Lucide coverage report is stale. Run pnpm lucide:coverage.')
        printSummary(report)
        return
    }

    fs.mkdirSync(coverageRoot, { recursive: true })
    fs.writeFileSync(coveragePath, output)
    printSummary(report)
    console.log(`Wrote ${relativeFromApp(coveragePath)}.`)
}

main()
