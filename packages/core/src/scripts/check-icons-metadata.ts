import { execSync } from 'node:child_process'
import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'
import type { IconDescription } from '../types'
import {
    extractAddedIconNamesFromGitStatus,
    findMissingDescriptions,
    findNewIconsWithoutOrigin,
    findOrphanEntries,
    scanSvgIcons,
} from './icon-metadata'

const SVGS_PATH = path.resolve(import.meta.dirname, '../../svgs')
const DESCRIPTIONS_PATH = path.resolve(import.meta.dirname, '../metadata-descriptions.json')
const PACKAGE_DIR = path.resolve(import.meta.dirname, '../..')

const gitList = (command: string): string[] =>
    execSync(command, { cwd: PACKAGE_DIR, encoding: 'utf-8' }).split('\n').filter(Boolean)

const loadDescriptions = (): IconDescription[] => {
    const raw = fs.readFileSync(DESCRIPTIONS_PATH, 'utf-8')
    const parsed: unknown = JSON.parse(raw)
    if (!Array.isArray(parsed)) {
        console.log(pc.red('metadata-descriptions.json must be a JSON array.'))
        process.exit(1)
    }
    return parsed as IconDescription[]
}

const main = () => {
    console.log(pc.blue('Checking icon ↔ metadata coverage...\n'))

    if (!fs.existsSync(SVGS_PATH)) {
        console.log(pc.red(`Error: Directory ${SVGS_PATH} does not exist.`))
        process.exit(1)
    }

    const { iconNames, categoryByIcon } = scanSvgIcons(SVGS_PATH)
    const entries = loadDescriptions()

    // New icons = untracked files plus staged-added files in svgs/ (not in git HEAD).
    const gitStatus = gitList('git status --porcelain=v1 --untracked-files=all -- svgs/')
    const newIconNames = extractAddedIconNamesFromGitStatus(gitStatus)
    const newIcons = [...newIconNames].sort()
    for (const iconName of newIcons) {
        console.log(
            pc.dim(`New icon detected: ${iconName} (category: ${categoryByIcon.get(iconName)})`)
        )
    }

    const missingDescriptions = findMissingDescriptions(iconNames, entries)
    const orphanEntries = findOrphanEntries(iconNames, entries)
    const newIconsWithoutOrigin = findNewIconsWithoutOrigin(entries, newIconNames)

    let fails = 0

    if (missingDescriptions.length > 0) {
        fails++
        console.log(
            pc.red(
                `\n${missingDescriptions.length} icon(s) have no metadata-descriptions.json entry:`
            )
        )
        for (const iconName of missingDescriptions) {
            console.log(pc.red(`  - ${iconName} (category: ${categoryByIcon.get(iconName)})`))
        }
        console.log(
            pc.yellow('Run `pnpm fix:icons-metadata` to get draft entries, then curate them.')
        )
    }

    if (orphanEntries.length > 0) {
        fails++
        console.log(
            pc.red(
                `\n${orphanEntries.length} descriptions entry(ies) reference a non-existent icon:`
            )
        )
        for (const iconName of orphanEntries) {
            console.log(pc.red(`  - ${iconName}`))
        }
        console.log(
            pc.yellow('These are stale entries left by renames — remap or remove them manually.')
        )
    }

    if (newIconsWithoutOrigin.length > 0) {
        fails++
        console.log(
            pc.red(
                `\n${newIconsWithoutOrigin.length} newly added icon(s) do not declare an explicit "origin":`
            )
        )
        for (const iconName of newIconsWithoutOrigin) {
            console.log(pc.red(`  - ${iconName}`))
        }
        console.log(
            pc.yellow(
                'An absent origin defaults to "upstream" (480 Design) and would misattribute your own icons. Add origin: "extended".'
            )
        )
    }

    if (fails > 0) {
        console.log(
            pc.red(`\n${fails} coverage error(s). Fix them before committing icon changes.`)
        )
        process.exit(1)
    }

    console.log(
        pc.green(
            `Icon ↔ metadata coverage is complete (${iconNames.size} icons, ${entries.length} entries).`
        )
    )
}

main()
