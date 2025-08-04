import axios from 'axios'
import dotenv from 'dotenv'
import * as Figma from 'figma-api'
import fs from 'node:fs/promises'
import path from 'node:path'
import pLimit from 'p-limit'
import pc from 'picocolors'
import iconWeights from '../icon-weights.json' assert { type: 'json' }
import type { Metadata } from '../types'
import { fixIconName, toKebabCase } from '../utils'

// Load environment variables
dotenv.config()

// Define base constants
const __dirname = import.meta.dirname
const SVGS_PATH = path.resolve(__dirname, '../../svgs')
const METADATA_PATH = path.resolve(__dirname, '../metadata.json')
const CONCURRENCY_LIMIT = 50

// Retrieve environment tokens
const { FIGMA_API_TOKEN, FIGMA_FILE_ID } = process.env

// Check environment variables
if (!FIGMA_API_TOKEN || !FIGMA_FILE_ID) {
    console.error(pc.red('Environment Variables not set.'))
    process.exit(1)
}

// Define icon styles as in Figma
const ICON_WEIGHTS: Record<string, string> = iconWeights

interface ParsedIconName {
    style: string
    mainCategoryOriginal: string
    mainCategoryKebab: string
    tags: string[]
    iconNameKebab: string
}

// Function to initialize the svgs directory
const initializeSvgsDirectory = async (): Promise<void> => {
    try {
        await fs.rm(SVGS_PATH, { recursive: true, force: true })
        await fs.mkdir(SVGS_PATH, { recursive: true })
        console.log(pc.green(`Initialized directory: ${SVGS_PATH}`))
    } catch (error) {
        console.error(pc.red('Error initializing svgs directory:'), error)
        process.exit(1)
    }
}

// Function to parse and clean the icon name
const parseIconName = (name: string): ParsedIconName => {
    const parts = name.split('/').map(part => part.trim())

    if (parts.length !== 3) {
        console.error(pc.red(`Invalid name format: "${name}". Expected 3 parts separated by "/".`))
        process.exit(1)
    }

    const [styleRaw, categoriesRaw, iconNameRaw] = parts

    // Style: remove spaces
    const style = styleRaw!.replace(/\s+/g, '')

    // Categories: split by ',' or '&', trim, kebab-case
    const categoryParts = categoriesRaw!
        .split(/[,&]+/)
        .map(part => part.trim())
        .sort((a, b) => a.length - b.length)

    if (categoryParts.length === 0) {
        console.error(pc.red(`No categories found in: "${categoriesRaw}"`))
        process.exit(1)
    }

    // Select the first keyword after filtering as the simplified category
    const mainCategoryOriginal: string = categoryParts[0]! // Original name for the directory
    const mainCategoryKebab = toKebabCase(mainCategoryOriginal) // Kebab-case for metadata

    // Tags: all categories in kebab-case
    const tags = categoryParts.map(part => toKebabCase(part))

    // fix icon name
    const cleanedIconName = fixIconName(iconNameRaw!)

    // Icon name in kebab-case
    const iconNameKebab = toKebabCase(cleanedIconName)

    return { style, mainCategoryOriginal, mainCategoryKebab, tags, iconNameKebab }
}

// Function to download an SVG with retry attempts
const downloadSvg = async (url: string, retries = 3): Promise<string> => {
    try {
        const { data } = await axios.get<string>(url, { timeout: 10000 })
        return data
    } catch (error) {
        if (retries > 0) {
            console.warn(pc.yellow(`Retrying download... Attempts remaining: ${retries}`))
            await new Promise(res => setTimeout(res, 1000))
            return downloadSvg(url, retries - 1)
        } else {
            console.error(pc.red('Error downloading SVG:'), error)
            return ''
        }
    }
}

// Function to fetch image URLs from Figma
const fetchImageUrls = async (
    api: Figma.Api,
    fileId: string,
    ids: string[]
): Promise<Record<string, string>> => {
    const chunkSize = 500
    const urls: Record<string, string> = {}

    console.log(pc.blue('Fetching image URLs from Figma...'))
    for (let i = 0; i < ids.length; i += chunkSize) {
        const chunkIds = ids.slice(i, i + chunkSize).join(',')
        const response = await api.getImage(fileId, {
            scale: 1,
            ids: chunkIds,
            format: 'svg',
        })
        Object.assign(urls, response.images)
        console.log(pc.green(`Fetched URLs for chunk ${Math.floor(i / chunkSize) + 1}`))
    }

    return urls
}

// Function to create the save path for the SVG
const createIconPath = (
    svgsPath: string,
    categoryKebab: string,
    weight: string,
    iconKebab: string
): string => {
    const categoryPath = path.join(svgsPath, categoryKebab) // kebab-case name of the category
    const weightPath = path.join(categoryPath, weight) // Original name of the weight
    return path.join(weightPath, `${iconKebab}.svg`) // Kebab-case name of the icon
}

// Function to generate metadata
const generateMetadata = (metadata: Metadata, parsed: ParsedIconName): void => {
    const { mainCategoryKebab, tags, iconNameKebab } = parsed

    // Add the category to metadata if it doesn't exist
    if (!metadata.categories[mainCategoryKebab]) {
        metadata.categories[mainCategoryKebab] = {
            tags,
            icons: [],
        }
    }

    // Add the icon name to the category in metadata if it doesn't exist
    if (!metadata.categories[mainCategoryKebab].icons.includes(iconNameKebab)) {
        metadata.categories[mainCategoryKebab].icons.push(iconNameKebab)
    }
}

// Function to verify the contents of the directories and produce a report
const verifySvgs = async (
    svgsPath: string,
    iconWeights: Record<string, string>,
    metadata: Metadata
): Promise<void> => {
    console.log(pc.blue('Verifying directory contents...'))
    let totalIcons = 0

    // Calculate column widths for the report
    const rows: { category: string; weight: string; files: number }[] = []

    for (const [categoryKebab, _] of Object.entries(metadata.categories)) {
        for (const weight of Object.values(iconWeights)) {
            const weightPath = path.join(svgsPath, categoryKebab, weight)
            try {
                const files = await fs.readdir(weightPath)
                const svgFiles = files.filter(file => file.endsWith('.svg'))
                const fileCount = svgFiles.length

                totalIcons += fileCount
                rows.push({ category: categoryKebab, weight, files: fileCount })
                console.log(
                    pc.blue(` - ${categoryKebab} / ${weight}:`),
                    pc.green(`${fileCount} icons`)
                )
            } catch (error) {
                console.error(pc.red(`Error reading directory ${weightPath}:`), error)
            }
        }
    }

    console.log(pc.green(`Total icons: ${totalIcons}`))
}

// Types
interface CategoryMapEntry {
    simplifiedOriginal: string
    simplifiedKebab: string
    tags: string[]
}

interface ComponentData {
    components: Record<string, { name: string }>
    ids: string[]
}

interface ParsedIconName {
    style: string
    mainCategoryOriginal: string
    mainCategoryKebab: string
    iconNameKebab: string
    tags: string[]
}

interface DownloadResult {
    success: number
    failures: Record<string, string>
    metadata: Metadata
    categoryMap: Record<string, CategoryMapEntry>
}

// Fetch data from Figma
const fetchFigmaComponents = async (api: Figma.Api): Promise<ComponentData> => {
    console.log(pc.blue('Fetching file data from Figma...'))
    const { components } = await api.getFile(FIGMA_FILE_ID)
    const ids = Object.keys(components)
    console.log(pc.blue(`Fetched ${ids.length} components.`))
    return { components, ids }
}

// Process categories
const processCategoryMap = (
    parsed: ParsedIconName,
    simplifiedCategorySet: Set<string>,
    categoryMap: Record<string, CategoryMapEntry>
): void => {
    const { mainCategoryOriginal, mainCategoryKebab, tags } = parsed

    if (!categoryMap[mainCategoryOriginal]) {
        if (simplifiedCategorySet.has(mainCategoryKebab)) {
            throw new Error(
                `Collision detected for simplified category name: "${mainCategoryKebab}"`
            )
        }

        simplifiedCategorySet.add(mainCategoryKebab)
        categoryMap[mainCategoryOriginal] = {
            simplifiedOriginal: mainCategoryOriginal,
            simplifiedKebab: mainCategoryKebab,
            tags,
        }
    }
}

// Save individual SVG
const saveSvg = async (
    iconPath: string,
    svgData: string,
    parsed: ParsedIconName,
    mainCategoryOriginal: string,
    iconWeight: string
): Promise<void> => {
    await fs.mkdir(path.dirname(iconPath), { recursive: true })
    await fs.writeFile(iconPath, svgData, 'utf-8')
    console.log(
        pc.green(`Saved "${parsed.iconNameKebab}" in "${mainCategoryOriginal}" / "${iconWeight}"`)
    )
}

// Process single component
const processComponent = async (
    component: { name?: string },
    id: string,
    urls: Record<string, string>,
    metadata: Metadata,
    categoryMap: Record<string, CategoryMapEntry>,
    simplifiedCategorySet: Set<string>
): Promise<boolean> => {
    if (!component.name) {
        console.warn(pc.yellow(`Skipping undefined name for component ID: ${id}`))
        return false
    }

    const svgData = await downloadSvg(urls[id] ?? '')
    if (!svgData) return false

    const parsed = parseIconName(component.name)
    const iconWeight = ICON_WEIGHTS[parsed.style]

    if (!iconWeight) {
        console.warn(pc.yellow(`Unknown style for icon: ${component.name}`))
        return false
    }

    processCategoryMap(parsed, simplifiedCategorySet, categoryMap)
    generateMetadata(metadata, parsed)

    const iconPath = createIconPath(
        SVGS_PATH,
        parsed.mainCategoryKebab,
        iconWeight,
        parsed.iconNameKebab
    )

    try {
        await saveSvg(iconPath, svgData, parsed, parsed.mainCategoryKebab, iconWeight)
        return true
    } catch (error) {
        console.error(pc.red(`Error processing ${iconPath}:`), error)
        return false
    }
}

// Download all components
const downloadComponents = async (
    components: Record<string, { name: string }>,
    ids: string[],
    urls: Record<string, string>
): Promise<DownloadResult> => {
    const limit = pLimit(CONCURRENCY_LIMIT)
    let totalIconsProcessed = 0
    const failedDownloads: Record<string, string> = {}
    const metadata: Metadata = { categories: {} }
    const categoryMap: Record<string, CategoryMapEntry> = {}
    const simplifiedCategorySet = new Set<string>()

    const downloadPromises = ids.map(id =>
        limit(async () => {
            try {
                const success = await processComponent(
                    components[id]!,
                    id,
                    urls,
                    metadata,
                    categoryMap,
                    simplifiedCategorySet
                )
                if (success) totalIconsProcessed++
                else failedDownloads[id] = 'processing failed'
            } catch {
                failedDownloads[id] = 'download failed'
            }
        })
    )

    await Promise.all(downloadPromises)
    return {
        success: totalIconsProcessed,
        failures: failedDownloads,
        metadata,
        categoryMap,
    }
}

// Generate final outputs
const generateOutputs = async (
    metadata: Metadata,
    failedDownloads: Record<string, string>
): Promise<void> => {
    if (Object.keys(failedDownloads).length > 0) {
        console.log(pc.yellow('\nSummary of failed downloads:'))
        for (const [id, reason] of Object.entries(failedDownloads)) {
            console.log(pc.red(`ID ${id}: ${reason}`))
        }
    } else {
        console.log(pc.green('\nNo failures!'))
    }

    await fs.writeFile(METADATA_PATH, JSON.stringify(metadata, null, 2), 'utf-8')
    console.log(pc.green(`\nMetadata file generated at ${METADATA_PATH}`))
}

// Main function
const main = async (): Promise<void> => {
    try {
        await initializeSvgsDirectory()

        const api = new Figma.Api({ personalAccessToken: FIGMA_API_TOKEN })
        const { components, ids } = await fetchFigmaComponents(api)

        const urls = await fetchImageUrls(api, FIGMA_FILE_ID, ids)
        console.log(pc.blue('Downloading and saving icons...'))

        const { success, failures, metadata } = await downloadComponents(components, ids, urls)
        console.log(pc.green(`\nSVGs generated successfully: ${success} icons.`))

        await verifySvgs(SVGS_PATH, ICON_WEIGHTS, metadata)
        await generateOutputs(metadata, failures)

        console.log(pc.green('\nSVG generation and verification completed.'))
    } catch (error) {
        console.error(pc.red('An unexpected error occurred:'), error)
        process.exit(1)
    }
}

await main()
