import fs from 'node:fs'
import path from 'node:path'

type IconPriority = 'critical' | 'high' | 'normal' | 'low'
type WorkType = 'derived-variant' | 'assisted-design'

type RoadmapStatus = 'planned' | 'in-progress' | 'ready' | 'created' | 'deferred'

interface RoadmapItem {
    source: 'lucide'
    sourceId: string
    sourceName: string
    priority: IconPriority
    priorityReason: string
    workType: WorkType
    status: RoadmapStatus
    createdIcon?: string
}

interface CoverageEntry {
    id: string
    name: string
    reverseTier: string
}

const ROADMAP_PATH = path.resolve(
    import.meta.dirname,
    '../app/compare/lucide-extension-roadmap.json'
)
const COVERAGE_PATH = path.resolve(
    import.meta.dirname,
    '../app/compare/lucide-coverage/coverage.json'
)

const fail = (messages: string[]): never => {
    console.error(`Extension roadmap is invalid (${messages.length} error(s):`)
    for (const message of messages) console.error(`  - ${message}`)
    process.exit(1)
}

const main = () => {
    const roadmap = JSON.parse(fs.readFileSync(ROADMAP_PATH, 'utf8')) as unknown
    const coverage = JSON.parse(fs.readFileSync(COVERAGE_PATH, 'utf8')) as {
        entries: CoverageEntry[]
    }
    const errors: string[] = []
    if (!Array.isArray(roadmap) || roadmap.length === 0) {
        fail(['the roadmap must be a non-empty JSON array'])
    }

    const seenIds = new Set<string>()
    const seenNames = new Set<string>()
    const priorities = new Set<IconPriority>(['critical', 'high', 'normal', 'low'])
    const workTypes = new Set<WorkType>(['derived-variant', 'assisted-design'])
    const statuses = new Set<RoadmapStatus>([
        'planned',
        'in-progress',
        'ready',
        'created',
        'deferred',
    ])
    const entries = new Map(coverage.entries.map(entry => [entry.id, entry]))

    for (const [index, item] of (roadmap as unknown[]).entries()) {
        const value = item as Partial<RoadmapItem>
        const label = `item #${index + 1}`
        if (value.source !== 'lucide') errors.push(`${label}: source must be "lucide"`)
        if (!value.sourceId || !entries.has(value.sourceId)) {
            errors.push(`${label}: sourceId must exist in coverage.json`)
        }
        if (!value.sourceName) errors.push(`${label}: sourceName is required`)
        if (!value.priority || !priorities.has(value.priority)) {
            errors.push(`${label}: priority must be critical, high, normal, or low`)
        }
        if (!value.priorityReason?.trim()) errors.push(`${label}: priorityReason is required`)
        if (!value.workType || !workTypes.has(value.workType)) {
            errors.push(`${label}: workType must be derived-variant or assisted-design`)
        }
        if (!value.status || !statuses.has(value.status)) {
            errors.push(`${label}: status is invalid`)
        }
        if (value.sourceId && seenIds.has(value.sourceId)) {
            errors.push(`${label}: sourceId ${value.sourceId} is duplicated`)
        }
        if (value.sourceName && seenNames.has(value.sourceName)) {
            errors.push(`${label}: sourceName ${value.sourceName} is duplicated`)
        }
        if (value.sourceId) seenIds.add(value.sourceId)
        if (value.sourceName) seenNames.add(value.sourceName)

        const entry = value.sourceId ? entries.get(value.sourceId) : undefined
        if (entry && entry.name !== value.sourceName) {
            errors.push(`${label}: ${value.sourceId} is ${entry.name}, not ${value.sourceName}`)
        }
        // A created package icon may remain a reverse gap until its Solar → Lucide
        // mapping is integrated in a separate, audited parity change.
        if (entry && value.status !== 'created' && entry.reverseTier !== 'gap') {
            errors.push(
                `${label}: ${value.sourceName} is not a confirmed gap (tier: ${entry.reverseTier})`
            )
        }
        if (value.status === 'created' && !value.createdIcon) {
            errors.push(`${label}: created items must declare createdIcon`)
        }
    }

    if (errors.length > 0) fail(errors)
    console.log(`Extension roadmap is valid (${(roadmap as unknown[]).length} item(s)).`)
}

main()
