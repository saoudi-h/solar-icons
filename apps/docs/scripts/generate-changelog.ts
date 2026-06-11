import { readFileSync, writeFileSync, mkdirSync } from 'node:fs'
import { join } from 'node:path'

const PACKAGES = [
    { id: 'react', label: 'React', pkg: '@solar-icons/react' },
    { id: 'react-perf', label: 'React Perf', pkg: '@solar-icons/react-perf' },
    { id: 'react-native', label: 'React Native', pkg: '@solar-icons/react-native' },
    { id: 'vue', label: 'Vue', pkg: '@solar-icons/vue' },
    { id: 'nuxt', label: 'Nuxt', pkg: '@solar-icons/nuxt' },
    { id: 'svelte', label: 'Svelte', pkg: '@solar-icons/svelte' },
    { id: 'solid', label: 'Solid', pkg: '@solar-icons/solid' },
    { id: 'angular', label: 'Angular', pkg: '@solar-icons/angular' },
]

interface ParsedEntry {
    version: string
    sections: { type: string; items: string[] }[]
}

function parseSectionType(raw: string): string {
    const lower = raw.toLowerCase()
    if (lower.includes('major')) return 'major'
    if (lower.includes('minor')) return 'minor'
    if (lower.includes('patch')) return 'patch'
    return 'other'
}

function parseChangelog(content: string): ParsedEntry[] {
    const blocks = content.split(/^(?=## )/m).filter(b => b.trim())

    return blocks
        .map(block => {
            const lines = block.split('\n')
            const versionLine = lines[0]?.trim()
            if (!versionLine?.match(/^## .+$/)) return null

            const version = versionLine.slice(3).trim()
            if (/-(?:alpha|beta|rc|next)\./i.test(version)) return null

            const body = lines.slice(1).join('\n')
            const subSections = body.split(/^(?=### )/m).filter(s => s.trim())

            const sections = subSections.map(sub => {
                const subLines = sub.split('\n')
                const typeLine = (subLines[0] ?? '').replace(/^###\s*/, '').trim()
                const type = parseSectionType(typeLine)
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
        .filter((e): e is ParsedEntry => e !== null)
}

function readPackageChangelog(id: string): string {
    try {
        const path = join(import.meta.dirname, '..', '..', '..', 'packages', id, 'CHANGELOG.md')
        return readFileSync(path, 'utf-8')
    } catch {
        return ''
    }
}

function typeLabel(type: string): string {
    switch (type) {
        case 'major':
            return 'Breaking'
        case 'minor':
            return 'Feature'
        case 'patch':
            return 'Fix'
        default:
            return 'Other'
    }
}

const REPO_URL = 'https://github.com/saoudi-h/solar-icons'

const lines: string[] = [
    '---',
    'title: Changelog',
    'description: Full release history for all Solar Icons packages.',
    'icon: ClipboardList',
    '---',
    '',
]

for (const pkg of PACKAGES) {
    const raw = readPackageChangelog(pkg.id)
    const entries = parseChangelog(raw)
    const changelogUrl = `${REPO_URL}/blob/main/packages/${pkg.id}/CHANGELOG.md`

    lines.push(`## ${pkg.label}`)
    lines.push('')
    lines.push(
        `<a href="${changelogUrl}" target="_blank" rel="noopener noreferrer" className="text-sm text-muted-foreground hover:text-foreground transition-colors">${pkg.pkg} on GitHub →</a>`
    )
    lines.push('')

    if (entries.length === 0) {
        lines.push('*No changelog available.*')
        lines.push('')
        continue
    }

    for (const entry of entries) {
        const releaseUrl = `${REPO_URL}/releases/tag/%40solar-icons%2F${pkg.id}%40${entry.version}`
        lines.push(`### v${entry.version}`)
        lines.push('')
        lines.push(
            `<a href="${releaseUrl}" target="_blank" rel="noopener noreferrer" className="text-xs text-muted-foreground hover:text-foreground transition-colors">Release on GitHub →</a>`
        )
        lines.push('')

        for (const section of entry.sections) {
            const label = typeLabel(section.type)
            for (const item of section.items) {
                lines.push(`- **${label}:** ${item}`)
            }
        }

        lines.push('')
    }
}

const output = lines.join('\n')

const outPath = join(import.meta.dirname, '..', 'content', 'docs', 'community', 'changelog.mdx')
mkdirSync(join(import.meta.dirname, '..', 'content', 'docs', 'community'), { recursive: true })
writeFileSync(outPath, output)

console.log(`Generated changelog.mdx with ${PACKAGES.length} packages`)
