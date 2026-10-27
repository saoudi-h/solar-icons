import fs from 'node:fs'
import path from 'node:path'

import { categoryCards } from '../apps/docs-start/generated/categories'
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

type InventoryCountKind = 'logical' | 'svg'

const CURRENT_DOCUMENTATION_FILES: Array<{
    relativePath: string
    counts: InventoryCountKind[]
}> = [
    { relativePath: 'README.md', counts: ['logical', 'svg'] },
    { relativePath: 'AGENT.md', counts: ['logical', 'svg'] },
    { relativePath: 'apps/docs-start/src/config/index.tsx', counts: ['logical'] },
    {
        relativePath: 'apps/docs-start/src/components/home-page/sections/community/index.tsx',
        counts: ['svg'],
    },
    { relativePath: 'apps/docs-start/content/docs/v2/index.mdx', counts: ['logical', 'svg'] },
    {
        relativePath: 'apps/docs-start/content/docs/v2/icon-reference/categories.mdx',
        counts: ['logical'],
    },
    { relativePath: 'apps/docs-start/content/docs/v2/figma-plugin.mdx', counts: ['logical'] },
    { relativePath: 'apps/docs-start/content/docs/v2/packages/js.mdx', counts: ['svg'] },
    {
        relativePath: 'apps/docs-start/content/docs/v2/packages/nuxt.mdx',
        counts: ['logical', 'svg'],
    },
    { relativePath: 'packages/core/README.md', counts: ['logical'] },
    { relativePath: 'packages/core/AGENT.md', counts: ['svg'] },
    { relativePath: 'packages/core/EXTENDING-ICON-SET.md', counts: ['logical'] },
    { relativePath: 'packages/figma-plugin/community/presentation.html', counts: ['logical'] },
    { relativePath: 'packages/figma-plugin/community/listing-description.md', counts: ['logical'] },
    { relativePath: 'packages/nuxt/AGENT.md', counts: ['logical', 'svg'] },
    { relativePath: 'packages/nuxt/playground/app/pages/gallery.vue', counts: ['logical', 'svg'] },
    { relativePath: 'packages/vue/AGENT.md', counts: ['logical'] },
]

const PUBLIC_ICON_PACKAGE_READMES = [
    'angular',
    'blazor',
    'flutter',
    'js',
    'nuxt',
    'react',
    'react-native',
    'solid',
    'static',
    'svelte',
    'vue',
].map(name => ({
    relativePath: `packages/${name}/README.md`,
    counts: ['logical', 'svg'] as InventoryCountKind[],
}))

const readJson = <T>(filename: string): T => JSON.parse(fs.readFileSync(filename, 'utf8')) as T

const hasCount = (content: string, count: number): boolean => {
    const variants = [String(count), count.toLocaleString('en-US')]
    return variants.some(variant => {
        const escaped = variant.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')
        return new RegExp(`(?<!\\d)${escaped}(?!\\d)`).test(content)
    })
}

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

    if (process.argv.includes('--check-docs')) {
        const documentationChecks = [...CURRENT_DOCUMENTATION_FILES, ...PUBLIC_ICON_PACKAGE_READMES]
        const expectedCounts: Record<InventoryCountKind, number> = {
            logical: iconNames.size,
            svg: svgFiles,
        }

        // Categories published by the docs. The list is generated from
        // the catalogue, so it must match it exactly: a stale entry
        // means the icon reference shows a category that no longer
        // exists, or hides one that does.
        const catalogueCategories = Object.keys(metadata.categories)
        if (categoryCards.length !== catalogueCategories.length) {
            errors.push(
                `apps/docs-start/generated/categories.ts lists ${categoryCards.length} categories, but the catalogue has ${catalogueCategories.length}`
            )
        }
        for (const card of categoryCards) {
            const catalogueCategory = metadata.categories[card.slug]
            if (!catalogueCategory) {
                errors.push(
                    `apps/docs-start/generated/categories.ts publishes an unknown category "${card.slug}"`
                )
                continue
            }
            if (card.count !== catalogueCategory.icons.length) {
                errors.push(
                    `apps/docs-start/generated/categories.ts reports ${card.count} icons for "${card.slug}", but the catalogue has ${catalogueCategory.icons.length}`
                )
            }
            if (!catalogueCategory.icons.includes(card.representative)) {
                errors.push(
                    `apps/docs-start/generated/categories.ts uses "${card.representative}" as the thumbnail of "${card.slug}", but that icon is not in the category`
                )
            }
        }
        for (const slug of catalogueCategories) {
            if (!categoryCards.some(card => card.slug === slug)) {
                errors.push(
                    `apps/docs-start/generated/categories.ts does not publish the catalogue category "${slug}"`
                )
            }
        }

        // The markdown table of the categories, published in the page
        // source and consumed by `/llms-full.txt`, must list the same
        // categories with the same counts.
        const categoriesPage = path.join(
            REPOSITORY_ROOT,
            'apps/docs-start/content/docs/v2/icon-reference/categories.mdx'
        )
        if (fs.existsSync(categoriesPage)) {
            const page = fs.readFileSync(categoriesPage, 'utf8')
            const published = new Map<string, number>()
            for (const row of page.matchAll(
                /^\|\s*\[([^\]]+)\]\(\/icons\?view=grouped&category=([^)]+)\)\s*\|\s*(\d+)\s*\|/gm
            )) {
                published.set(row[2]!, Number(row[3]))
            }
            for (const card of categoryCards) {
                const count = published.get(card.slug)
                if (count === undefined) {
                    errors.push(`the categories page does not list the category "${card.slug}"`)
                } else if (count !== card.count) {
                    errors.push(
                        `the categories page lists ${count} icons for "${card.slug}", but the catalogue has ${card.count}`
                    )
                }
            }
            for (const slug of published.keys()) {
                if (!categoryCards.some(card => card.slug === slug)) {
                    errors.push(`the categories page lists an unknown category "${slug}"`)
                }
            }
        } else {
            errors.push('the categories page is missing')
        }

        for (const { relativePath, counts } of documentationChecks) {
            const filename = path.join(REPOSITORY_ROOT, relativePath)
            if (!fs.existsSync(filename)) {
                errors.push(`${relativePath} is missing from the documentation inventory checks`)
                continue
            }

            const content = fs.readFileSync(filename, 'utf8')
            for (const kind of counts) {
                const expected = expectedCounts[kind]
                if (!hasCount(content, expected)) {
                    errors.push(
                        `${relativePath} does not report the current ${kind} count (${expected})`
                    )
                }
            }
        }

        // Package count: README table rows must match the homepage stat card.
        const readmeLines = fs
            .readFileSync(path.join(REPOSITORY_ROOT, 'README.md'), 'utf8')
            .split('\n')
        const tableHead = readmeLines.findIndex(line => line.startsWith('| Package |'))
        let tableRows = 0
        for (const line of readmeLines.slice(tableHead + 1)) {
            if (!line.startsWith('|')) break
            if (!line.includes('---')) tableRows += 1
        }
        const homepage = fs.readFileSync(
            path.join(
                REPOSITORY_ROOT,
                'apps/docs-start/src/components/home-page/sections/community/index.tsx'
            ),
            'utf8'
        )
        const homepageMatch = homepage.match(/title="Total Packages" value=\{(\d+)\}/)
        if (!homepageMatch) {
            errors.push('homepage has no Total Packages stat card')
        } else if (Number(homepageMatch[1]) !== tableRows) {
            errors.push(
                `homepage reports ${homepageMatch[1]} packages but README lists ${tableRows}`
            )
        }

        // Banner integrity: every logo img must resolve to a committed
        // asset and vice versa (catches broken refs and orphans).
        const bannerHtml = fs.readFileSync(
            path.join(REPOSITORY_ROOT, 'apps/docs-start/ressources/solar-icons-banner.html'),
            'utf8'
        )
        if (!bannerHtml.includes('logo-row framework-logos')) {
            errors.push('banner has no framework logo row')
        } else {
            const referenced = [...bannerHtml.matchAll(/src="readme-banner-assets\/([^"]+)"/g)].map(
                match => match[1]
            )
            const assetDir = path.join(
                REPOSITORY_ROOT,
                'apps/docs-start/ressources/readme-banner-assets'
            )
            const committed = new Set(
                fs.readdirSync(assetDir).filter(file => file.endsWith('.svg'))
            )
            for (const logo of referenced) {
                if (!committed.has(logo)) {
                    errors.push(`banner references missing logo asset ${logo}`)
                }
            }
            for (const logo of committed) {
                if (!referenced.includes(logo)) {
                    errors.push(`banner logo asset ${logo} is not referenced in the HTML`)
                }
            }
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
