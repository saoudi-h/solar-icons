import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import * as prettier from 'prettier'

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')
const CORE_SVGS_PATH = path.join(REPOSITORY_ROOT, 'packages/core/svgs')

const OUTPUT_PATHS = [
    'apps/react-app/app/icon-list.ts',
    'apps/svelte-app/src/lib/icon-list.ts',
    'apps/solid-app/src/lib/icon-list.ts',
    'apps/angular-app/src/app/icon-list.ts',
    'apps/test-react-native-icons/icon-list.ts',
    'apps/icon-parity/app/icon-list.ts',
]

const STYLES = ['Bold', 'Linear', 'BoldDuotone', 'LineDuotone', 'Broken', 'Outline'] as const

const toPascalCase = (name: string): string =>
    name
        .split('-')
        .map(part => part.charAt(0).toUpperCase() + part.slice(1))
        .join('')

const readIconNames = (): string[] => {
    const names = new Set<string>()

    for (const category of fs.readdirSync(CORE_SVGS_PATH, { withFileTypes: true })) {
        if (!category.isDirectory()) continue

        const categoryPath = path.join(CORE_SVGS_PATH, category.name)
        const boldPath = path.join(categoryPath, 'Bold')
        if (!fs.existsSync(boldPath)) {
            throw new Error(`Missing Bold style directory for core category: ${category.name}`)
        }

        const boldFiles = fs.readdirSync(boldPath).filter(file => file.endsWith('.svg'))
        const expectedFiles = new Set(boldFiles)

        for (const style of STYLES) {
            const stylePath = path.join(categoryPath, style)
            if (!fs.existsSync(stylePath)) {
                throw new Error(
                    `Missing ${style} style directory for core category: ${category.name}`
                )
            }

            const actualFiles = new Set(
                fs.readdirSync(stylePath).filter(file => file.endsWith('.svg'))
            )
            const missing = [...expectedFiles].filter(file => !actualFiles.has(file))
            const extra = [...actualFiles].filter(file => !expectedFiles.has(file))
            if (missing.length > 0 || extra.length > 0) {
                throw new Error(
                    `Style ${style} is out of sync in ${category.name} (missing: ${missing.join(', ') || 'none'}; extra: ${extra.join(', ') || 'none'})`
                )
            }
        }

        for (const file of boldFiles) {
            if (file.endsWith('.svg')) names.add(toPascalCase(file.slice(0, -4)))
        }
    }

    return [...names].sort()
}

const render = (names: string[]): string => `// AUTO-GENERATED FILE - DO NOT EDIT
// Generated from packages/core/svgs by scripts/generate-test-app-icon-lists.ts
// Total icons: ${names.length}

export const ALL_ICONS = [
${names.map(name => `  '${name}',`).join('\n')}
] as const;

export type IconName = (typeof ALL_ICONS)[number];

export const STYLES = [${STYLES.map(style => `'${style}'`).join(', ')}] as const;
export type IconStyle = (typeof STYLES)[number];
`

export const generateTestAppIconLists = async (): Promise<number> => {
    const names = readIconNames()

    for (const relativePath of OUTPUT_PATHS) {
        const outputPath = path.join(REPOSITORY_ROOT, relativePath)
        fs.mkdirSync(path.dirname(outputPath), { recursive: true })
        const config = (await prettier.resolveConfig(outputPath)) ?? {}
        const content = await prettier.format(render(names), { ...config, filepath: outputPath })
        const previous = fs.existsSync(outputPath) ? fs.readFileSync(outputPath, 'utf8') : undefined
        if (previous !== content) fs.writeFileSync(outputPath, content)
        console.log(`Generated ${relativePath} (${names.length} icons)`)
    }

    return names.length
}

if (process.argv[1] && path.resolve(process.argv[1]) === fileURLToPath(import.meta.url)) {
    await generateTestAppIconLists()
}
