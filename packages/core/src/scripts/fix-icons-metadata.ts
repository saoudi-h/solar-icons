import { execSync } from 'node:child_process'
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'
import type { IconDescription } from '../types'
import { buildSkeletonEntry, findMissingDescriptions, scanSvgIcons } from './icon-metadata'

const SVGS_PATH = path.resolve(import.meta.dirname, '../../svgs')
const DESCRIPTIONS_PATH = path.resolve(import.meta.dirname, '../metadata-descriptions.json')
const PACKAGE_DIR = path.resolve(import.meta.dirname, '../..')

const gitConfig = (key: string, fallback: string): string => {
    try {
        return (
            execSync(`git config ${key}`, { cwd: PACKAGE_DIR, encoding: 'utf-8' }).trim() ||
            fallback
        )
    } catch {
        return fallback
    }
}

const main = () => {
    console.log(pc.blue('Drafting metadata-descriptions.json entries for new icons...\n'))

    if (!fs.existsSync(SVGS_PATH)) {
        console.log(pc.red(`Error: Directory ${SVGS_PATH} does not exist.`))
        process.exit(1)
    }

    const { iconNames, categoryByIcon } = scanSvgIcons(SVGS_PATH)
    let entries: IconDescription[] = []
    try {
        const parsed: unknown = JSON.parse(fs.readFileSync(DESCRIPTIONS_PATH, 'utf-8'))
        if (Array.isArray(parsed)) entries = parsed as IconDescription[]
    } catch {
        console.log(
            pc.yellow(
                'Could not read metadata-descriptions.json — drafts will ignore existing entries.'
            )
        )
    }

    const missing = findMissingDescriptions(iconNames, entries)
    if (missing.length === 0) {
        console.log(pc.green('No new icons without a description entry. Nothing to draft.'))
        return
    }

    const author = gitConfig('user.name', 'YOUR-GITHUB-USERNAME')
    const addedAt = new Date().toISOString().slice(0, 10)

    const drafts = missing.map(iconName =>
        buildSkeletonEntry(iconName, categoryByIcon.get(iconName) ?? 'unknown', author, addedAt)
    )

    console.log(pc.dim(`Author taken from git config: ${author}`))
    console.log(pc.dim('Paste the array below into src/metadata-descriptions.json, then curate:'))
    console.log(
        pc.dim('  - categoryTags and tags need real search terms (not just the category name)')
    )
    console.log(pc.dim('  - add aliases for name synonyms (e.g. "add" for "plus")'))
    console.log(
        pc.dim('  - keep state: "beta" until the icon is visually validated in the demo apps')
    )
    console.log('')
    console.log(JSON.stringify(drafts, null, 4))
}

main()
