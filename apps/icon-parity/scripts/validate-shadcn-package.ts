import fs from 'node:fs'
import path from 'node:path'
import { pathToFileURL } from 'node:url'

type AuditEntry = {
    lucide: string
    solar: string | null
    solarExport: string | null
    status: string
}

type Audit = {
    entries: AuditEntry[]
}

const repoRoot = path.resolve(import.meta.dirname, '../../..')
const auditPath = path.join(repoRoot, 'apps/icon-parity/app/compare/shadcn-coverage/coverage.json')
const linearBarrel = path.join(repoRoot, 'packages/react/dist/icons/style/linear.mjs')

async function main() {
    if (!fs.existsSync(linearBarrel)) {
        throw new Error(`Missing ${linearBarrel}; build @solar-icons/react first`)
    }

    const audit = JSON.parse(fs.readFileSync(auditPath, 'utf8')) as Audit
    const linear = (await import(pathToFileURL(linearBarrel).href)) as Record<string, unknown>
    const checked = audit.entries.filter(entry => entry.solarExport)
    const missing = checked.filter(entry => !(entry.solarExport! in linear))

    if (missing.length > 0) {
        throw new Error(
            `Solar Linear barrel is missing ${missing.length} shadcn exports: ${missing
                .map(entry => `${entry.lucide} -> ${entry.solarExport}`)
                .join(', ')}`
        )
    }

    const unresolved = audit.entries.filter(entry => entry.status === 'missing')
    console.log(
        `Solar Linear barrel exports ${checked.length} current shadcn mappings; ${unresolved.length} entries still need icons or decisions`
    )
}

main()
