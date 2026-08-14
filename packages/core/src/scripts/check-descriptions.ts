import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'
import { validateDescriptions } from './validate-descriptions'

const DESCRIPTIONS_PATH = path.resolve(import.meta.dirname, '../metadata-descriptions.json')
const METADATA_PATH = path.resolve(import.meta.dirname, '../metadata.json')

const main = () => {
    console.log(pc.blue('Checking metadata-descriptions.json integrity...\n'))

    if (!fs.existsSync(DESCRIPTIONS_PATH)) {
        console.log(
            pc.red('metadata-descriptions.json is missing — this file is required source code.')
        )
        process.exit(1)
    }

    let raw: string
    try {
        raw = fs.readFileSync(DESCRIPTIONS_PATH, 'utf-8')
    } catch {
        console.log(pc.red('Cannot read metadata-descriptions.json.'))
        process.exit(1)
    }

    let data: unknown
    try {
        data = JSON.parse(raw)
    } catch {
        console.log(pc.red('metadata-descriptions.json is not valid JSON.'))
        process.exit(1)
    }

    if (!Array.isArray(data)) {
        console.log(pc.red('metadata-descriptions.json must be a JSON array.'))
        process.exit(1)
    }

    if (data.length === 0) {
        console.log(
            pc.red('metadata-descriptions.json is empty — this file is hand-curated source code.')
        )
        process.exit(1)
    }

    if (!fs.existsSync(METADATA_PATH)) {
        console.log(pc.red('metadata.json is missing — run `pnpm generate:svgs --offline` first.'))
        process.exit(1)
    }

    const metadata = JSON.parse(fs.readFileSync(METADATA_PATH, 'utf-8'))
    const iconNames = new Set<string>()
    for (const category of Object.values(metadata.categories)) {
        for (const icon of (category as { icons: string[] }).icons) {
            iconNames.add(icon)
        }
    }

    const errors = validateDescriptions(data, iconNames)
    if (errors.length > 0) {
        console.log(pc.red(`\n${errors.length} validation error(s) in metadata-descriptions.json:`))
        for (const error of errors) {
            console.log(pc.red(`  - ${error}`))
        }
        console.log(pc.yellow('This file is hand-curated source code. Fix it manually.'))
        process.exit(1)
    }

    console.log(pc.green(`metadata-descriptions.json is valid (${data.length} entries).`))
    console.log(pc.dim('This file is hand-curated source code — never auto-generated.'))
}

main()
