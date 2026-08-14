import fs from 'node:fs'
import path from 'node:path'
import type { IconDescription } from '../types'

/**
 * Icon ↔ metadata coverage utilities for the EXT-DIFF-GATE.
 *
 * The gate enforces three invariants:
 *   1. Every icon in `svgs/` has a hand-curated entry in
 *      `metadata-descriptions.json` (no icon without searchable metadata).
 *   2. Every descriptions entry references an existing icon (no orphaned
 *      entries left behind by renames).
 *   3. Every newly added icon (not present in git HEAD) declares its `origin`
 *      explicitly — an absent origin defaults to `upstream` (480 Design) and
 *      would silently misattribute an extended icon.
 */

/**
 * Icons that exist on disk but have no descriptions entry.
 */
export const findMissingDescriptions = (
    iconNames: ReadonlySet<string>,
    entries: ReadonlyArray<IconDescription>
): string[] => {
    const described = new Set(entries.map(entry => entry.name))
    return [...iconNames].filter(name => !described.has(name)).sort()
}

/**
 * Descriptions entries whose icon no longer exists on disk.
 */
export const findOrphanEntries = (
    iconNames: ReadonlySet<string>,
    entries: ReadonlyArray<IconDescription>
): string[] => {
    return entries
        .filter(entry => !iconNames.has(entry.name))
        .map(entry => entry.name)
        .sort()
}

/**
 * Newly added icons whose entry does not declare an explicit `origin`.
 */
export const findNewIconsWithoutOrigin = (
    entries: ReadonlyArray<IconDescription>,
    newIconNames: ReadonlySet<string>
): string[] => {
    const entryByIcon = new Map(entries.map(entry => [entry.name, entry]))
    return [...newIconNames].filter(name => !entryByIcon.get(name)?.origin).sort()
}

/**
 * Extract the icon name from a repo-relative SVG path.
 *
 * @example
 * extractIconNameFromSvgPath('svgs/files/Linear/file-smile.svg') // 'file-smile'
 * extractIconNameFromSvgPath('src/foo.svg') // null
 */
export const extractIconNameFromSvgPath = (relativePath: string): string | null => {
    const segments = relativePath.split('/')
    if (segments.length !== 4 || segments[0] !== 'svgs') return null
    const fileName = segments[3] ?? ''
    if (!fileName.endsWith('.svg')) return null
    const iconName = fileName.slice(0, -4)
    return iconName.length > 0 ? iconName : null
}

/**
 * Extract icon names from git-reported SVG paths (untracked/staged-added).
 */
export const extractIconNamesFromGitPaths = (paths: readonly string[]): Set<string> => {
    const names = new Set<string>()
    for (const filePath of paths) {
        const iconName = extractIconNameFromSvgPath(filePath)
        if (iconName) names.add(iconName)
    }
    return names
}

/**
 * Walk `svgs/<category>/<Style>/*.svg` on disk.
 * @returns All icon names and their category (first category wins when an icon
 *          spans multiple categories, e.g. `Scale`).
 */
export const scanSvgIcons = (
    svgsDir: string
): { iconNames: Set<string>; categoryByIcon: Map<string, string> } => {
    const iconNames = new Set<string>()
    const categoryByIcon = new Map<string, string>()

    for (const category of fs.readdirSync(svgsDir, { withFileTypes: true })) {
        if (!category.isDirectory()) continue
        const categoryPath = path.join(svgsDir, category.name)
        for (const style of fs.readdirSync(categoryPath, { withFileTypes: true })) {
            if (!style.isDirectory()) continue
            const stylePath = path.join(categoryPath, style.name)
            for (const file of fs.readdirSync(stylePath)) {
                if (!file.endsWith('.svg')) continue
                const iconName = file.slice(0, -4)
                iconNames.add(iconName)
                if (!categoryByIcon.has(iconName)) categoryByIcon.set(iconName, category.name)
            }
        }
    }

    return { iconNames, categoryByIcon }
}

/**
 * Build a draft descriptions entry for a newly added icon, to be pasted into
 * `metadata-descriptions.json` and curated manually.
 */
export const buildSkeletonEntry = (
    iconName: string,
    category: string,
    author: string,
    addedAt: string
): IconDescription => ({
    name: iconName,
    category,
    categoryTags: [category],
    tags: [category],
    origin: 'extended',
    addedAt,
    author,
    state: 'beta',
})
