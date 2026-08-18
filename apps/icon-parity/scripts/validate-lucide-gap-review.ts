#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

interface AtlasIndex {
    icons: Array<{ id: string }>
}

interface GapTemplate {
    version: number
    direction: string
    sourceSnapshot: string
    entries: Array<{ rank: number; lucideId: string }>
}

interface ReviewEntry {
    rank: number
    lucideId: string
    lucide: string
    solarCandidates: string[]
    decision: string
    note: string
}

interface GapReview {
    version: number
    direction: string
    phase: string
    sourceSnapshot: string
    sourceTemplate: string
    entries: ReviewEntry[]
}

const currentFile = fileURLToPath(import.meta.url)
const appRoot = path.resolve(path.dirname(currentFile), '..')
const compareRoot = path.join(appRoot, 'app/compare')
const reviewRoot = path.join(compareRoot, 'lucide-coverage/reverse-batches')
function latestReviewPath(): string {
    const files = fs
        .readdirSync(reviewRoot)
        .filter(filename => filename.endsWith('-review.json'))
        .sort()
    assert(files.length > 0, `No closed reverse review found in ${reviewRoot}`)
    return path.join(reviewRoot, files[files.length - 1])
}

function readJson<T>(filename: string): T {
    return JSON.parse(fs.readFileSync(filename, 'utf8')) as T
}

function assert(condition: unknown, message: string): asserts condition {
    if (!condition) throw new Error(message)
}

function main(): void {
    const reviewPath = latestReviewPath()
    const review = readJson<GapReview>(reviewPath)
    const templatePath = path.join(reviewRoot, review.sourceTemplate)
    const template = readJson<GapTemplate>(templatePath)
    const solar = readJson<AtlasIndex>(path.join(appRoot, '.atlas/solar/index.json'))
    const lucide = readJson<AtlasIndex>(path.join(appRoot, '.atlas/lucide/index.json'))
    const solarIds = new Set(solar.icons.map(icon => icon.id))
    const lucideIds = new Set(lucide.icons.map(icon => icon.id))

    assert(review.version === 1, 'Unsupported reverse review version')
    assert(review.direction === 'lucide-to-solar-gap', 'Unexpected reverse review direction')
    assert(review.phase === 'visual-review-closed', 'Review packet is not marked closed')
    assert(review.sourceSnapshot === '@iconify-json/lucide@1.2.123', 'Unexpected source snapshot')
    assert(review.entries.length === template.entries.length, 'Review/template entry count differs')

    const templateIds = new Set(template.entries.map(entry => entry.lucideId))
    const reviewedIds = new Set<string>()
    for (const entry of review.entries) {
        assert(Number.isInteger(entry.rank) && entry.rank > 0, `Invalid rank for ${entry.lucideId}`)
        assert(
            templateIds.has(entry.lucideId),
            `Review target is not in the template: ${entry.lucideId}`
        )
        assert(!reviewedIds.has(entry.lucideId), `Duplicate review target: ${entry.lucideId}`)
        reviewedIds.add(entry.lucideId)
        assert(lucideIds.has(entry.lucideId), `Unknown Lucide ID: ${entry.lucideId}`)
        assert(
            entry.solarCandidates.length <= 3,
            `More than three candidates for ${entry.lucideId}`
        )
        assert(
            new Set(entry.solarCandidates).size === entry.solarCandidates.length,
            `Duplicate candidates for ${entry.lucideId}`
        )
        for (const candidate of entry.solarCandidates)
            assert(
                solarIds.has(candidate),
                `Unknown Solar candidate ${candidate} for ${entry.lucideId}`
            )
        assert(
            entry.decision === 'equivalent' || entry.decision === 'no-match',
            `Non-binary decision for ${entry.lucideId}`
        )
        assert(entry.note.trim().length > 0, `Missing review note for ${entry.lucideId}`)
        if (entry.decision === 'equivalent')
            assert(
                entry.solarCandidates.length > 0,
                `Equivalent review has no candidate: ${entry.lucideId}`
            )
    }

    assert(reviewedIds.size === templateIds.size, 'Review does not close every template target')
    const equivalent = review.entries.filter(entry => entry.decision === 'equivalent').length
    const noMatch = review.entries.length - equivalent
    console.log(
        `Validated Lucide reverse review ${path.basename(reviewPath)}: ${review.entries.length} entries (${equivalent} equivalent, ${noMatch} no-match)`
    )
}

main()
