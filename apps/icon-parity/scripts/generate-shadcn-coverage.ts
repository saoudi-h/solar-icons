import { execFileSync } from 'node:child_process'
import fs from 'node:fs'
import path from 'node:path'

type CoverageEntry = {
    name: string
    aliases?: string[]
    coverage?: string
    reverseTier?: string
    strictSolarMatches?: SolarMatch[]
    semanticSolarMatches?: SolarMatch[]
    fallbackSolarMatches?: SolarMatch[]
    evidence?: {
        candidateOnly?: SolarMatch[]
    }
}

type SolarMatch = {
    solar: string
    decision?: string
    note?: string
}

type SourceIcon = {
    name: string
    occurrences: number
}

type SourceRegistry = {
    source: {
        repository: string
        commit: string
        generatedFile: string
        capturedAt: string
    }
    icons: SourceIcon[]
}

type Override = {
    solar?: string
    status?: MappingStatus
    confidence?: string
    note?: string
}

type MappingStatus = 'mapped' | 'fallback' | 'review' | 'missing'

type AuditEntry = {
    lucide: string
    canonicalLucide?: string
    occurrences: number
    solar: string | null
    solarExport: string | null
    status: MappingStatus
    confidence: string
    source: string
    note: string
    candidates: string[]
}

type AuditReport = {
    source: SourceRegistry['source']
    counts: Record<MappingStatus, number>
    totalIcons: number
    totalOccurrences: number
    entries: AuditEntry[]
}

const repoRoot = path.resolve(import.meta.dirname, '../../..')
const coverageDir = path.join(repoRoot, 'apps/icon-parity/app/compare/shadcn-coverage')
const sourcePath = path.join(coverageDir, 'source-registry.json')
const overridesPath = path.join(coverageDir, 'mapping-overrides.json')
const coveragePath = path.join(
    repoRoot,
    'apps/icon-parity/app/compare/lucide-coverage/coverage.json'
)
const metadataPath = path.join(repoRoot, 'packages/core/src/metadata-descriptions.json')
const outputPath = path.join(coverageDir, 'coverage.json')
const reportPath = path.join(coverageDir, 'AUDIT-REPORT.md')

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

function kebabCase(value: string): string {
    return value
        .replace(/Icon$/, '')
        .replace(/([a-z0-9])([A-Z])/g, '$1-$2')
        .replace(/([A-Za-z])([0-9])/g, '$1-$2')
        .toLowerCase()
}

function pascalToKebab(value: string): string {
    return kebabCase(value)
}

function solarComponentName(value: string | null): string | null {
    if (!value) return null

    return `${value
        .split('-')
        .map(part => part.charAt(0).toUpperCase() + part.slice(1))
        .join('')}Icon`
}

function parseCanonicalNames(sourceFile: string): string[] {
    const content = fs.readFileSync(sourceFile, 'utf8')
    const names = [...content.matchAll(/export\s*\{\s*([A-Za-z][A-Za-z0-9]*)\s*\}/g)].map(match =>
        pascalToKebab(match[1])
    )

    return [...new Set(names)].sort()
}

function listTsxFiles(directory: string): string[] {
    const files: string[] = []
    const entries = fs
        .readdirSync(directory, { withFileTypes: true })
        .sort((a, b) => a.name.localeCompare(b.name))

    for (const entry of entries) {
        const fullPath = path.join(directory, entry.name)
        if (entry.isDirectory()) {
            files.push(...listTsxFiles(fullPath))
        } else if (entry.isFile() && entry.name.endsWith('.tsx')) {
            files.push(fullPath)
        }
    }

    return files
}

function countOccurrences(basesDirectory: string): Map<string, number> {
    const counts = new Map<string, number>()
    const placeholder = /<IconPlaceholder\b[^>]*\blucide=["']([^"']+)["'][^>]*\/?>/g

    for (const filePath of listTsxFiles(basesDirectory)) {
        const content = fs.readFileSync(filePath, 'utf8')
        for (const match of content.matchAll(placeholder)) {
            const name = pascalToKebab(match[1])
            counts.set(name, (counts.get(name) ?? 0) + 1)
        }
    }

    return counts
}

function refreshSource(sourceFile: string, basesDirectory: string, commit: string) {
    const occurrences = countOccurrences(basesDirectory)
    const names = parseCanonicalNames(sourceFile)
    const icons: SourceIcon[] = names.map(name => ({
        name,
        occurrences: occurrences.get(name) ?? 0,
    }))

    writeJson(sourcePath, {
        source: {
            repository: 'https://github.com/shadcn-ui/ui',
            commit,
            generatedFile: 'apps/v4/registry/icons/__lucide__.ts',
            capturedAt: new Date().toISOString().slice(0, 10),
        },
        icons,
    } satisfies SourceRegistry)
}

function getArgs() {
    const args = process.argv.slice(2)
    const getValue = (name: string) => {
        const index = args.indexOf(name)
        return index === -1 ? undefined : args[index + 1]
    }

    return {
        check: args.includes('--check'),
        sourceFile: getValue('--source-file'),
        basesDirectory: getValue('--bases-dir'),
        commit: getValue('--commit') ?? 'unknown',
    }
}

function firstSolarMatch(...groups: (SolarMatch[] | undefined)[]): SolarMatch | undefined {
    return groups.flatMap(group => group ?? []).find(match => match.solar)
}

function candidateNames(entry: CoverageEntry | undefined): string[] {
    if (!entry) return []

    return [
        ...(entry.evidence?.candidateOnly ?? []),
        ...(entry.fallbackSolarMatches ?? []),
        ...(entry.semanticSolarMatches ?? []),
    ]
        .map(match => match.solar)
        .filter((name, index, names) => names.indexOf(name) === index)
        .slice(0, 8)
}

function buildAudit(): AuditReport {
    const source = readJson<SourceRegistry>(sourcePath)
    const overrides = readJson<Record<string, Override>>(overridesPath)
    const historical = readJson<{ entries: CoverageEntry[] }>(coveragePath)
    const metadata = readJson<{ name: string }[]>(metadataPath)
    const solarNames = new Set(metadata.map(icon => icon.name))
    const byName = new Map(historical.entries.map(entry => [entry.name, entry]))
    const byAlias = new Map<string, CoverageEntry>()

    for (const entry of historical.entries) {
        for (const alias of entry.aliases ?? []) {
            byAlias.set(alias, entry)
        }
    }

    const counts: Record<MappingStatus, number> = {
        mapped: 0,
        fallback: 0,
        review: 0,
        missing: 0,
    }

    const entries = source.icons.map<AuditEntry>(icon => {
        const override = overrides[icon.name]
        const historicalEntry = byName.get(icon.name) ?? byAlias.get(icon.name)
        const canonicalLucide =
            historicalEntry && historicalEntry.name !== icon.name ? historicalEntry.name : undefined

        if (override) {
            const status = override.status ?? 'mapped'
            if (override.solar && !solarNames.has(override.solar)) {
                throw new Error(
                    `Override for ${icon.name} points to missing Solar icon: ${override.solar}`
                )
            }
            counts[status]++
            return {
                lucide: icon.name,
                canonicalLucide,
                occurrences: icon.occurrences,
                solar: override.solar ?? null,
                solarExport: solarComponentName(override.solar ?? null),
                status,
                confidence: override.confidence ?? 'manual',
                source: 'shadcn-override',
                note: override.note ?? '',
                candidates: candidateNames(historicalEntry),
            }
        }

        if (solarNames.has(icon.name)) {
            counts.mapped++
            return {
                lucide: icon.name,
                canonicalLucide,
                occurrences: icon.occurrences,
                solar: icon.name,
                solarExport: solarComponentName(icon.name),
                status: 'mapped',
                confidence: 'direct-name',
                source: 'current-solar-catalogue',
                note: 'The current Solar catalogue contains the same kebab-case name.',
                candidates: [],
            }
        }

        const match = firstSolarMatch(
            historicalEntry?.strictSolarMatches,
            historicalEntry?.semanticSolarMatches
        )

        if (historicalEntry?.coverage === 'equivalent' && match && solarNames.has(match.solar)) {
            counts.mapped++
            return {
                lucide: icon.name,
                canonicalLucide,
                occurrences: icon.occurrences,
                solar: match.solar,
                solarExport: solarComponentName(match.solar),
                status: 'mapped',
                confidence: 'audited-equivalent',
                source: 'lucide-coverage',
                note:
                    historicalEntry.name === icon.name
                        ? ''
                        : `Resolved through Lucide alias ${historicalEntry.name}.`,
                candidates: candidateNames(historicalEntry),
            }
        }

        const fallback = firstSolarMatch(historicalEntry?.fallbackSolarMatches)
        if (fallback && solarNames.has(fallback.solar)) {
            counts.fallback++
            return {
                lucide: icon.name,
                canonicalLucide,
                occurrences: icon.occurrences,
                solar: fallback.solar,
                solarExport: solarComponentName(fallback.solar),
                status: 'fallback',
                confidence: 'audited-fallback',
                source: 'lucide-coverage',
                note:
                    historicalEntry?.name === icon.name
                        ? ''
                        : `Resolved through Lucide alias ${historicalEntry?.name ?? 'unknown'}.`,
                candidates: candidateNames(historicalEntry),
            }
        }

        const candidates = candidateNames(historicalEntry).filter(name => solarNames.has(name))
        if (candidates.length > 0) {
            counts.review++
            return {
                lucide: icon.name,
                occurrences: icon.occurrences,
                solar: candidates[0],
                solarExport: solarComponentName(candidates[0]),
                status: 'review',
                confidence: 'candidate-only',
                source: 'lucide-coverage',
                note: 'A visual or semantic candidate exists but has not been promoted to an accepted equivalence.',
                candidates,
            }
        }

        counts.missing++
        return {
            lucide: icon.name,
            canonicalLucide,
            occurrences: icon.occurrences,
            solar: null,
            solarExport: null,
            status: 'missing',
            confidence: 'no-accepted-match',
            source: historicalEntry ? 'lucide-coverage' : 'no-historical-entry',
            note: canonicalLucide
                ? `No current Solar icon or accepted candidate is available. Lucide exports ${icon.name} as an alias of ${canonicalLucide}.`
                : 'No current Solar icon or accepted candidate is available.',
            candidates: candidateNames(historicalEntry),
        }
    })

    return {
        source: source.source,
        counts,
        totalIcons: entries.length,
        totalOccurrences: entries.reduce((sum, entry) => sum + entry.occurrences, 0),
        entries,
    }
}

function renderReport(audit: AuditReport): string {
    const { counts } = audit
    const rows = audit.entries
        .filter(entry => entry.status === 'missing' || entry.status === 'review')
        .sort((a, b) => b.occurrences - a.occurrences || a.lucide.localeCompare(b.lucide))
        .map(entry => {
            const candidates = entry.candidates.length > 0 ? entry.candidates.join(', ') : '—'
            const lucideName = entry.canonicalLucide
                ? `${entry.lucide} → ${entry.canonicalLucide}`
                : entry.lucide
            return `| ${lucideName} | ${entry.occurrences} | ${entry.status} | ${entry.solar ?? '—'} | ${candidates} |`
        })
        .join('\n')

    return `# shadcn/ui icon compatibility audit

This report is generated by \`apps/icon-parity/scripts/generate-shadcn-coverage.ts\`.

## Source

- Repository: ${audit.source.repository}
- Commit: \`${audit.source.commit}\`
- Generated file: \`${audit.source.generatedFile}\`
- Capture date: ${audit.source.capturedAt}

## Summary

| Metric | Count |
| --- | ---: |
| Unique Lucide names | ${audit.totalIcons} |
| Icon placeholder occurrences | ${audit.totalOccurrences} |
| Accepted mappings | ${counts.mapped} |
| Fallback mappings | ${counts.fallback} |
| Candidate mappings requiring review | ${counts.review} |
| Missing mappings | ${counts.missing} |

The source list is the current shadcn registry surface, not the full Lucide catalogue. A mapping may use a different Solar name; identical names are not required.

## Review queue

| Lucide export / canonical name | Uses | Status | Current Solar candidate | Other candidates |
| --- | ---: | --- | --- | --- |
${rows || '| — | 0 | — | — | — |'}

## Maintenance rule

Regenerate this audit when shadcn changes its registry icon set or when Solar adds an extension. Do not promote a candidate to an accepted mapping without visual review. New Solar glyphs must follow the six-style extension workflow and the metadata checks in \`packages/core\`.
`
}

function main() {
    const args = getArgs()

    if (args.sourceFile || args.basesDirectory) {
        if (!args.sourceFile || !args.basesDirectory) {
            throw new Error('--source-file and --bases-dir must be provided together')
        }
        refreshSource(args.sourceFile, args.basesDirectory, args.commit)
    }

    const audit = buildAudit()
    const output = `${JSON.stringify(audit, null, 2)}\n`
    const report = renderReport(audit)

    if (args.check) {
        const currentOutput = fs.existsSync(outputPath) ? fs.readFileSync(outputPath, 'utf8') : ''
        const currentReport = fs.existsSync(reportPath) ? fs.readFileSync(reportPath, 'utf8') : ''
        if (
            currentOutput !== formatArtifact(outputPath, output) ||
            currentReport !== formatArtifact(reportPath, report)
        ) {
            throw new Error(
                'shadcn coverage artifacts are stale; run the generator without --check'
            )
        }
        console.log(
            `shadcn coverage is up to date (${audit.totalIcons} icons, ${audit.totalOccurrences} uses)`
        )
        return
    }

    fs.mkdirSync(coverageDir, { recursive: true })
    fs.writeFileSync(outputPath, formatArtifact(outputPath, output))
    fs.writeFileSync(reportPath, formatArtifact(reportPath, report))
    console.log(
        `Generated shadcn coverage (${audit.totalIcons} icons, ${audit.totalOccurrences} uses)`
    )
    console.log(`  accepted: ${audit.counts.mapped}`)
    console.log(`  fallback: ${audit.counts.fallback}`)
    console.log(`  review:   ${audit.counts.review}`)
    console.log(`  missing:  ${audit.counts.missing}`)
}

main()
