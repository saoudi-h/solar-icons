import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'
import type { IconDescription, Metadata } from '../types'
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

    const metadata = JSON.parse(fs.readFileSync(METADATA_PATH, 'utf-8')) as Metadata
    const iconNames = new Set(
        Object.values(metadata.categories).flatMap(category => category.icons)
    )

    const schemaErrors = validateDescriptions(data, iconNames)
    for (const error of schemaErrors) {
        console.log(pc.red(`  - ${error}`))
    }

    const required = ['name', 'category', 'categoryTags', 'tags']
    let fails = schemaErrors.length
    const seenNames = new Set<string>()
    const seenAliases = new Set<string>()
    for (let i = 0; i < data.length; i++) {
        const entry = data[i] as Record<string, unknown>
        for (const key of required) {
            const validArray = key === 'categoryTags' || key === 'tags'
            if (
                (validArray &&
                    (!Array.isArray(entry[key]) ||
                        !(entry[key] as unknown[]).every(value => typeof value === 'string'))) ||
                (!validArray && typeof entry[key] !== 'string')
            ) {
                console.log(pc.red(`  Entry #${i}: missing or invalid "${key}" field`))
                fails++
            }
        }

        const description = entry as unknown as IconDescription
        if (typeof description.name === 'string') {
            if (seenNames.has(description.name)) {
                console.log(pc.red(`  Entry #${i}: duplicate icon "${description.name}"`))
                fails++
            }
            seenNames.add(description.name)
        }

        for (const alias of description.deprecatedAliases ?? []) {
            if (
                typeof alias.name !== 'string' ||
                typeof alias.replacement !== 'string' ||
                typeof alias.reason !== 'string'
            ) {
                console.log(pc.red(`  Entry #${i}: invalid deprecated alias metadata`))
                fails++
                continue
            }
            if (alias.replacement !== description.name) {
                console.log(
                    pc.red(
                        `  Entry #${i}: deprecated alias "${alias.name}" must replace with "${description.name}"`
                    )
                )
                fails++
            }
            if (iconNames.has(alias.name)) {
                console.log(
                    pc.red(`  Entry #${i}: deprecated alias "${alias.name}" is a live icon name`)
                )
                fails++
            }
            if (seenAliases.has(alias.name)) {
                console.log(pc.red(`  Entry #${i}: duplicate deprecated alias "${alias.name}"`))
                fails++
            }
            seenAliases.add(alias.name)
        }
    }
    if (fails > 0) {
        console.log(pc.red(`\n${fails} validation error(s) in metadata-descriptions.json.`))
        console.log(pc.yellow('This file is hand-curated source code. Fix it manually.'))
        process.exit(1)
    }

    console.log(pc.green(`metadata-descriptions.json is valid (${data.length} entries).`))
    console.log(pc.dim('This file is hand-curated source code — never auto-generated.'))
}

main()
