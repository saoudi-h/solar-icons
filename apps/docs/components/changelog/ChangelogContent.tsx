import { readFileSync } from 'node:fs'
import { join } from 'node:path'

// ─── Packages to display ───────────────────────────────────────────────────
const PACKAGES: { id: string; label: string; pkg: string }[] = [
    { id: 'react', label: 'React', pkg: '@solar-icons/react' },
    { id: 'react-perf', label: 'React Perf', pkg: '@solar-icons/react-perf' },
    { id: 'react-native', label: 'React Native', pkg: '@solar-icons/react-native' },
    { id: 'vue', label: 'Vue', pkg: '@solar-icons/vue' },
    { id: 'nuxt', label: 'Nuxt', pkg: '@solar-icons/nuxt' },
    { id: 'svelte', label: 'Svelte', pkg: '@solar-icons/svelte' },
    { id: 'solid', label: 'Solid', pkg: '@solar-icons/solid' },
    { id: 'angular', label: 'Angular', pkg: '@solar-icons/angular' },
]

// ─── Types ─────────────────────────────────────────────────────────────────
interface ChangelogEntry {
    version: string
    sections: { type: string; items: string[] }[]
}

interface PackageChangelog {
    id: string
    label: string
    pkg: string
    entries: ChangelogEntry[]
    raw: string
}

// ─── Helpers ──────────────────────────────────────────────────────────────
function parseSectionType(raw: string): string {
    const lower = raw.toLowerCase()
    if (lower.includes('major')) return 'major'
    if (lower.includes('minor')) return 'minor'
    if (lower.includes('patch')) return 'patch'
    return 'other'
}

function parseChangelog(content: string): ChangelogEntry[] {
    // Split by version headings like "## 1.0.0"
    const versionBlocks = content.split(/^(?=## )/m).filter(b => b.trim())

    return versionBlocks
        .map(block => {
            const lines = block.split('\n')
            const versionLine = lines[0]?.trim()
            const versionMatch = versionLine?.match(/^## (.+)$/)
            if (!versionMatch) return null

            const version = versionMatch[1].trim()
            // Skip beta/prerelease versions
            if (/-(alpha|beta|rc|next)\./i.test(version)) return null

            // Split the rest into ### sub-sections
            const body = lines.slice(1).join('\n')
            const subSections = body.split(/^(?=### )/m).filter(s => s.trim())

            const sections = subSections.map(sub => {
                const subLines = sub.split('\n')
                const typeLine = subLines[0].replace(/^###\s*/, '').trim()
                const type = parseSectionType(typeLine)
                // Collect bullet items – strip GitHub PR/commit links for cleaner display
                const items = subLines
                    .slice(1)
                    .filter(l => l.startsWith('- '))
                    .map(l =>
                        l
                            .replace(/- \[#\d+\]\([^)]+\)\s*/g, '')
                            .replace(/\[`[a-f0-9]+`\]\([^)]+\)\s*/g, '')
                            .replace(/Thanks\s+\[@[^\]]+\]\([^)]+\)!\s*-?\s*/g, '')
                            .trim()
                    )
                    .filter(Boolean)

                return { type, items }
            })

            return { version, sections }
        })
        .filter((e): e is ChangelogEntry => e !== null)
}

function readPackageChangelog(id: string): string {
    try {
        const changelogPath = join(process.cwd(), '..', '..', 'packages', id, 'CHANGELOG.md')
        return readFileSync(changelogPath, 'utf-8')
    } catch {
        return ''
    }
}

function typeLabel(type: string): { label: string; color: string } {
    switch (type) {
        case 'major':
            return { label: 'Breaking', color: '#ef4444' }
        case 'minor':
            return { label: 'Feature', color: '#6366f1' }
        case 'patch':
            return { label: 'Fix', color: '#22c55e' }
        default:
            return { label: 'Other', color: '#94a3b8' }
    }
}

// ─── Component ─────────────────────────────────────────────────────────────
export function ChangelogContent() {
    const changelogs: PackageChangelog[] = PACKAGES.map(pkg => ({
        ...pkg,
        raw: readPackageChangelog(pkg.id),
        entries: parseChangelog(readPackageChangelog(pkg.id)),
    }))

    return (
        <div className="mt-6 w-full">
            {/* Package Tabs */}
            <div className="not-prose">
                <ChangelogTabs changelogs={changelogs} />
            </div>
        </div>
    )
}

function ChangelogTabs({ changelogs }: { changelogs: PackageChangelog[] }) {
    return (
        <div className="w-full">
            {/* We render each package as its own accordion-style section for static rendering */}
            <div className="space-y-10">
                {changelogs.map(pkg => (
                    <ChangelogPackageSection key={pkg.id} pkg={pkg} />
                ))}
            </div>
        </div>
    )
}

function ChangelogPackageSection({ pkg }: { pkg: PackageChangelog }) {
    if (pkg.entries.length === 0) {
        return null
    }

    return (
        <section>
            {/* Package Header */}
            <div className="mb-6 flex items-center gap-3 border-b border-border pb-4">
                <h2 className="font-heading text-xl font-bold text-foreground">{pkg.label}</h2>
                <code className="rounded-md border border-border bg-muted px-2 py-0.5 font-mono text-xs text-muted-foreground">
                    {pkg.pkg}
                </code>
            </div>

            {/* Entries */}
            <div className="relative space-y-8 pl-6">
                {/* Vertical timeline line */}
                <div className="absolute left-1.5 top-2 bottom-2 w-px bg-border" />

                {pkg.entries.map((entry, i) => (
                    <ChangelogEntry key={i} entry={entry} />
                ))}
            </div>
        </section>
    )
}

function ChangelogEntry({ entry }: { entry: ChangelogEntry }) {
    const allItems = entry.sections.flatMap(s =>
        s.items.map(item => ({ type: s.type, text: item }))
    )

    return (
        <div className="relative">
            {/* Timeline dot */}
            <div className="absolute -left-[22px] top-1.5 h-3 w-3 rounded-full border-2 border-primary bg-background" />

            {/* Version tag */}
            <div className="mb-3 flex items-center gap-3">
                <span className="font-mono text-sm font-bold text-foreground">v{entry.version}</span>
                <span className="text-xs text-muted-foreground">{getVersionType(entry)}</span>
            </div>

            {/* Items */}
            {allItems.length > 0 && (
                <ul className="space-y-2">
                    {allItems.map((item, i) => {
                        const badge = typeLabel(item.type)
                        return (
                            <li key={i} className="flex items-start gap-2 text-sm">
                                <span
                                    className="mt-0.5 shrink-0 rounded px-1.5 py-0.5 font-mono text-[10px] font-semibold text-white"
                                    style={{ backgroundColor: badge.color }}>
                                    {badge.label}
                                </span>
                                <span className="text-foreground/80">{item.text}</span>
                            </li>
                        )
                    })}
                </ul>
            )}
        </div>
    )
}

function getVersionType(entry: ChangelogEntry): string {
    const types = entry.sections.map(s => s.type)
    if (types.includes('major')) return 'Major Release'
    if (types.includes('minor')) return 'Minor Release'
    if (types.includes('patch')) return 'Patch'
    return 'Release'
}
