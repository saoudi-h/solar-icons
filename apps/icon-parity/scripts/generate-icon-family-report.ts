import { execFileSync } from 'node:child_process'
import fs from 'node:fs'
import path from 'node:path'

type WorkType = 'compound-family' | 'paired-family' | 'primitive-family'
type QueuePriority = 'high' | 'normal'
type FamilyState = 'already-present' | 'existing-equivalent' | 'review' | 'missing' | 'untracked'

type QueueFamily = {
    id: string
    label: string
    workType: WorkType
    priority: QueuePriority
    solarNamePatterns: string[]
    names: string[]
}

type QueueManifest = {
    version: number
    capturedAt: string
    source: string
    purpose: string
    normalization: { input: string; canonical: string; reason: string }[]
    families: QueueFamily[]
}

type SolarDescription = {
    name: string
}

type SolarMatch = {
    solar?: string
}

type LucideEntry = {
    id: string
    name: string
    aliases: string[]
    coverage: string
    reverseTier: string
    preferredSolarMatch?: SolarMatch
    strictSolarMatches?: SolarMatch[]
    semanticSolarMatches?: SolarMatch[]
    fallbackSolarMatches?: SolarMatch[]
    evidence?: {
        candidateOnly?: SolarMatch[]
    }
}

type CoverageFile = {
    generatedFrom: {
        sourceSnapshot: string
    }
    entries: LucideEntry[]
}

type FamilyReportEntry = {
    family: string
    requested: string
    canonical: string
    workType: WorkType
    priority: QueuePriority
    state: FamilyState
    solarExists: boolean
    lucideId: string | null
    lucideCanonical: string | null
    lucideAliases: string[]
    lucideCoverage: string | null
    solarCandidates: string[]
    note: string
}

type FamilyReport = {
    source: {
        queue: string
        lucideSnapshot: string
        capturedAt: string
    }
    normalization: QueueManifest['normalization']
    solarFamilyInventory: Record<string, string[]>
    entries: FamilyReportEntry[]
    counts: Record<FamilyState, number>
}

const repoRoot = path.resolve(import.meta.dirname, '../../..')
const compareDir = path.join(repoRoot, 'apps/icon-parity/app/compare')
const queuePath = path.join(compareDir, 'icon-family-queue.json')
const coveragePath = path.join(compareDir, 'lucide-coverage/coverage.json')
const metadataPath = path.join(repoRoot, 'packages/core/src/metadata-descriptions.json')
const outputPath = path.join(compareDir, 'icon-family-queue-report.json')
const reportPath = path.join(compareDir, 'ICON-FAMILY-EASY-WINS.md')

function readJson<T>(filePath: string): T {
    return JSON.parse(fs.readFileSync(filePath, 'utf8')) as T
}

function writeJson(filePath: string, value: unknown) {
    const content = `${JSON.stringify(value, null, 2)}\n`
    fs.writeFileSync(filePath, formatArtifact(filePath, content))
}

function formatArtifact(filePath: string, content: string): string {
    const formatter = path.resolve(repoRoot, 'node_modules/.bin/oxfmt')
    if (!fs.existsSync(formatter)) return content

    return execFileSync(formatter, ['--stdin-filepath', filePath], {
        input: content,
        encoding: 'utf8',
    })
}

function unique(values: string[]): string[] {
    return [...new Set(values.filter(Boolean))]
}

function normalizeMap(manifest: QueueManifest): Map<string, string> {
    return new Map(manifest.normalization.map(entry => [entry.input, entry.canonical]))
}

function lucideCandidates(entry: LucideEntry | undefined, solarNames: Set<string>): string[] {
    if (!entry) return []

    return unique([
        entry.preferredSolarMatch?.solar ?? '',
        ...(entry.strictSolarMatches ?? []).map(match => match.solar ?? ''),
        ...(entry.semanticSolarMatches ?? []).map(match => match.solar ?? ''),
        ...(entry.fallbackSolarMatches ?? []).map(match => match.solar ?? ''),
        ...(entry.evidence?.candidateOnly ?? []).map(match => match.solar ?? ''),
    ]).filter(candidate => solarNames.has(candidate))
}

function findLucideEntry(entries: LucideEntry[], name: string): LucideEntry | undefined {
    return entries.find(entry => entry.name === name || entry.aliases.includes(name))
}

function familySolarNames(family: QueueFamily, solarNames: string[]): string[] {
    return solarNames
        .filter(name =>
            family.solarNamePatterns.some(pattern =>
                pattern.startsWith('-')
                    ? name.endsWith(pattern)
                    : name === pattern || name.startsWith(`${pattern}-`)
            )
        )
        .sort()
}

function classify(
    lucide: LucideEntry | undefined,
    solarExists: boolean,
    candidates: string[]
): FamilyState {
    if (solarExists) return 'already-present'
    if (lucide?.coverage === 'equivalent' && candidates.length > 0) return 'existing-equivalent'
    if (candidates.length > 0) return 'review'
    if (lucide) return 'missing'
    return 'untracked'
}

function buildReport(): FamilyReport {
    const manifest = readJson<QueueManifest>(queuePath)
    const coverage = readJson<CoverageFile>(coveragePath)
    const descriptions = readJson<SolarDescription[]>(metadataPath)
    const solarNames = new Set(descriptions.map(icon => icon.name))
    const aliases = normalizeMap(manifest)
    const entries: FamilyReportEntry[] = []
    const solarFamilyInventory: Record<string, string[]> = {}

    for (const family of manifest.families) {
        solarFamilyInventory[family.id] = familySolarNames(family, [...solarNames])

        for (const requested of family.names) {
            const canonical = aliases.get(requested) ?? requested
            const lucide = findLucideEntry(coverage.entries, canonical)
            const solarExists = solarNames.has(canonical)
            const candidates = lucideCandidates(lucide, solarNames)
            const state = classify(lucide, solarExists, candidates)
            const note =
                requested !== canonical
                    ? `Normalized from ${requested} to ${canonical}.`
                    : lucide
                      ? `Lucide coverage: ${lucide.coverage}; reverse tier: ${lucide.reverseTier}.`
                      : 'This is a Solar family proposal, not a Lucide snapshot name.'

            entries.push({
                family: family.id,
                requested,
                canonical,
                workType: family.workType,
                priority: family.priority,
                state,
                solarExists,
                lucideId: lucide?.id ?? null,
                lucideCanonical: lucide?.name ?? null,
                lucideAliases: lucide?.aliases ?? [],
                lucideCoverage: lucide?.coverage ?? null,
                solarCandidates: candidates,
                note,
            })
        }
    }

    const counts: Record<FamilyState, number> = {
        'already-present': 0,
        'existing-equivalent': 0,
        review: 0,
        missing: 0,
        untracked: 0,
    }
    for (const entry of entries) counts[entry.state]++

    return {
        source: {
            queue: 'apps/icon-parity/app/compare/icon-family-queue.json',
            lucideSnapshot: coverage.generatedFrom.sourceSnapshot,
            capturedAt: manifest.capturedAt,
        },
        normalization: manifest.normalization,
        solarFamilyInventory,
        entries,
        counts,
    }
}

function renderCandidateNames(entry: FamilyReportEntry): string {
    return entry.solarCandidates.length > 0 ? entry.solarCandidates.join(', ') : '—'
}

function renderReport(report: FamilyReport): string {
    const rows = report.entries
        .map(
            entry =>
                `| ${entry.family} | ${entry.requested === entry.canonical ? entry.canonical : `${entry.requested} → ${entry.canonical}`} | ${entry.state} | ${entry.lucideId ?? '—'} | ${renderCandidateNames(entry)} |`
        )
        .join('\n')

    const inventory = Object.entries(report.solarFamilyInventory)
        .map(([family, names]) => `- **${family}:** ${names.length > 0 ? names.join(', ') : '—'}`)
        .join('\n')

    const normalization = report.normalization
        .map(entry => `| ${entry.input} | ${entry.canonical} | ${entry.reason} |`)
        .join('\n')

    return `# Solar icon family easy-win inventory

This report is generated by \`apps/icon-parity/scripts/generate-icon-family-report.ts\`.
It keeps compound-family work separate from the shadcn compatibility queue while using the
same Lucide coverage snapshot for evidence.

## Source and counts

- Queue: \`${report.source.queue}\`
- Lucide snapshot: \`${report.source.lucideSnapshot}\`
- Queue capture date: ${report.source.capturedAt}

| State | Count |
| --- | ---: |
| Already present under the proposed canonical name | ${report.counts['already-present']} |
| Existing Solar semantic equivalent | ${report.counts['existing-equivalent']} |
| Existing candidate requiring visual review | ${report.counts.review} |
| Lucide concept with no current Solar candidate | ${report.counts.missing} |
| Solar-family proposal outside the Lucide snapshot | ${report.counts.untracked} |

The queue is a triage instrument, not an instruction to create every item. An existing
equivalent should be removed from the extension queue after maintainer review. A \`review\`
entry needs a rendered comparison before it can be accepted as a compatibility mapping.

## Existing Solar family inventory

${inventory}

## Proposed family queue

| Family | Requested / canonical name | State | Lucide ID | Solar candidates |
| --- | --- | --- | --- | --- |
${rows}

## Input normalization

| Input spelling | Canonical proposal | Reason |
| --- | --- | --- |
${normalization}

## Naming policy proposal

The machine-readable rename and chat-family decisions are tracked in
\`apps/icon-parity/app/compare/naming-normalization-proposal.json\`.

- Use explicit \`chat-round-*\` and \`chat-square-*\` names for all new chat variants.
- Keep unqualified chat names only as legacy compatibility aliases when their geometry is
  already established, for example \`chat-dots\` → \`chat-square-dots\` if that canonical rename
  is approved.
- Reserve \`circle\` for a genuinely circular enclosure. Keep existing \`round-*\` names stable;
  do not mass-rename them without a visual and migration decision because the current catalogue
  contains historical exceptions.
- Normalize the four current \`*-file\` names (\`cloud-file\`, \`code-file\`, \`figma-file\`, and
  \`zip-file\`) to \`file-cloud\`, \`file-code\`, \`file-figma\`, and \`file-zip\` only through canonical
  renames plus generated deprecated aliases.

New canonical names still require six-style source artwork and metadata. The existing
\`deprecatedAliases\` mechanism can preserve published names after a canonical rename; it does
not remove the need to move or export the canonical SVG set.
`
}

function main() {
    const check = process.argv.includes('--check')
    const report = buildReport()
    const output = `${JSON.stringify(report, null, 2)}\n`
    const markdown = renderReport(report)

    if (check) {
        const currentOutput = fs.existsSync(outputPath) ? fs.readFileSync(outputPath, 'utf8') : ''
        const currentReport = fs.existsSync(reportPath) ? fs.readFileSync(reportPath, 'utf8') : ''
        if (
            currentOutput !== formatArtifact(outputPath, output) ||
            currentReport !== formatArtifact(reportPath, markdown)
        ) {
            throw new Error('Icon family report is stale; run the generator without --check')
        }
        console.log(`Icon family report is up to date (${report.entries.length} proposals)`)
        return
    }

    writeJson(outputPath, report)
    fs.writeFileSync(reportPath, formatArtifact(reportPath, markdown))
    console.log(`Generated icon family report (${report.entries.length} proposals)`)
    for (const [state, count] of Object.entries(report.counts)) {
        console.log(`  ${state}: ${count}`)
    }
}

main()
