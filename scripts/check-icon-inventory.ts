import fs from 'node:fs'
import path from 'node:path'
import { scanSvgIcons } from '../packages/core/src/scripts/icon-metadata'
import type { Metadata } from '../packages/core/src/types'

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')
const CORE_ROOT = path.join(REPOSITORY_ROOT, 'packages/core')
const SVG_ROOT = path.join(CORE_ROOT, 'svgs')
const METADATA_PATH = path.join(CORE_ROOT, 'src/metadata.json')
const DESCRIPTIONS_PATH = path.join(CORE_ROOT, 'src/metadata-descriptions.json')

const GENERATED_ICON_LISTS = [
    'apps/react-app/app/icon-list.ts',
    'apps/svelte-app/src/lib/icon-list.ts',
    'apps/solid-app/src/lib/icon-list.ts',
    'apps/angular-app/src/app/icon-list.ts',
    'apps/test-react-native-icons/icon-list.ts',
    'apps/icon-parity/app/icon-list.ts',
]

const readJson = <T>(filename: string): T => JSON.parse(fs.readFileSync(filename, 'utf8')) as T

const countSvgFiles = (): number => {
    let count = 0
    for (const category of fs.readdirSync(SVG_ROOT, { withFileTypes: true })) {
        if (!category.isDirectory()) continue
        const categoryPath = path.join(SVG_ROOT, category.name)
        for (const style of fs.readdirSync(categoryPath, { withFileTypes: true })) {
            if (!style.isDirectory()) continue
            count += fs
                .readdirSync(path.join(categoryPath, style.name))
                .filter(filename => filename.endsWith('.svg')).length
        }
    }
    return count
}

const main = () => {
    const { iconNames } = scanSvgIcons(SVG_ROOT)
    const metadata = readJson<Metadata>(METADATA_PATH)
    const metadataNames = new Set(
        Object.values(metadata.categories).flatMap(category => category.icons)
    )
    const descriptions = readJson<unknown[]>(DESCRIPTIONS_PATH)
    const svgFiles = countSvgFiles()
    const styleCount = iconNames.size === 0 ? 0 : svgFiles / iconNames.size
    const errors: string[] = []
    const warnings: string[] = []

    if (!Number.isInteger(styleCount) || styleCount !== 6) {
        errors.push(`expected 6 SVG styles per icon, found ${styleCount}`)
    }
    if (metadataNames.size !== iconNames.size) {
        errors.push(
            `metadata.json contains ${metadataNames.size} icons, but svgs/ contains ${iconNames.size}`
        )
    }
    if (descriptions.length !== iconNames.size) {
        errors.push(
            `metadata-descriptions.json contains ${descriptions.length} entries, but svgs/ contains ${iconNames.size}`
        )
    }

    console.log('Solar icon inventory (computed from packages/core):')
    console.log(`  Logical icons: ${iconNames.size}`)
    console.log(`  SVG files:     ${svgFiles}`)
    console.log(`  Styles/icon:   ${styleCount}`)
    console.log(`  Metadata:      ${metadataNames.size}`)
    console.log(`  Descriptions:  ${descriptions.length}`)

    for (const relativePath of GENERATED_ICON_LISTS) {
        const filename = path.join(REPOSITORY_ROOT, relativePath)
        if (!fs.existsSync(filename)) {
            warnings.push(`${relativePath} is absent (generate it only for the app that needs it)`)
            continue
        }
        const content = fs.readFileSync(filename, 'utf8')
        const match = content.match(/Total icons:\s*(\d+)/)
        if (!match) {
            warnings.push(`${relativePath} has no generated inventory comment`)
        } else if (Number(match[1]) !== iconNames.size) {
            warnings.push(`${relativePath} reports ${match[1]} icons (expected ${iconNames.size})`)
        }
    }

    for (const warning of warnings) console.log(`Warning: ${warning}`)
    if (process.argv.includes('--check-generated') && warnings.length > 0) {
        errors.push(`${warnings.length} generated icon list(s) are stale or absent`)
    }
    for (const error of errors) console.log(`Error: ${error}`)
    if (errors.length > 0) process.exit(1)
    console.log('Inventory source checks passed.')
}

main()
