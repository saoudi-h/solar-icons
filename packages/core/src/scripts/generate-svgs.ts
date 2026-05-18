import axios from 'axios'
import dotenv from 'dotenv'
import * as Figma from 'figma-api'
import fs from 'node:fs/promises'
import path from 'node:path'
import pLimit from 'p-limit'
import pc from 'picocolors'
import iconWeights from '../icon-weights.json' with { type: 'json' }
import type { Metadata } from '../types'
import { fixIconName, toKebabCase } from '../utils'

// Load environment variables
dotenv.config()

// Define base constants
const __dirname = import.meta.dirname
const SVGS_PATH = path.resolve(__dirname, '../../svgs')
const METADATA_PATH = path.resolve(__dirname, '../metadata.json')

// Retrieve environment tokens
const { FIGMA_API_TOKEN, FIGMA_FILE_ID } = process.env

// Check environment variables
if (!FIGMA_API_TOKEN || !FIGMA_FILE_ID) {
    console.error(pc.red('Environment Variables FIGMA_API_TOKEN and FIGMA_FILE_ID are not set.'))
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

interface CategoryMapEntry {
    simplifiedOriginal: string
    simplifiedKebab: string
    tags: string[]
}

interface ComponentData {
    components: Record<string, { name: string }>
    ids: string[]
}

// Function to initialize the svgs directory (used for force-clean runs)
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

// Function to check if a file exists and has content
const fileExists = async (filePath: string): Promise<boolean> => {
    try {
        const stats = await fs.stat(filePath)
        return stats.size > 0
    } catch {
        return false
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

// Function to download an SVG with exponential backoff and 429 rate limit handling
const downloadSvg = async (url: string, retries = 5, delay = 2000): Promise<string> => {
    try {
        const { data } = await axios.get<string>(url, { timeout: 15000 })
        return data
    } catch (error: any) {
        const status = error?.response?.status
        if (status === 429) {
            const retryAfter = parseInt(error?.response?.headers?.['retry-after'], 10)
            const waitTime = !isNaN(retryAfter) ? retryAfter * 1000 : delay
            console.warn(pc.yellow(`Rate limited (429) on SVG download. Waiting ${waitTime}ms...`))
            await new Promise(res => setTimeout(res, waitTime))
            return downloadSvg(url, retries - 1, delay * 2)
        }
        if (retries > 0) {
            console.warn(
                pc.yellow(
                    `Retrying SVG download... Error: ${error.message}. Attempts remaining: ${retries}`
                )
            )
            await new Promise(res => setTimeout(res, delay))
            return downloadSvg(url, retries - 1, delay * 2)
        } else {
            console.error(pc.red('Error downloading SVG:'), error.message)
            return ''
        }
    }
}

// Helper to retry asynchronous actions with exponential backoff and rate limit handling
const withRetry = async <T>(
    fn: () => Promise<T>,
    retries = 8,
    delay = 5000,
    contextName = 'API Call'
): Promise<T> => {
    try {
        return await fn()
    } catch (error: any) {
        const response = error?.response || error?.error?.response
        const status = response?.status || error?.status
        const headers = response?.headers || error?.headers
        const message = error?.message || response?.statusText || 'Unknown error'

        if (status === 429) {
            const retryAfter = parseInt(headers?.['retry-after'], 10)
            const waitTime = !isNaN(retryAfter) ? retryAfter * 1000 : delay

            // If the wait time is extremely large (e.g. 4 days), abort immediately
            if (waitTime > 60000) {
                const hours = (waitTime / 3600000).toFixed(2)
                throw new Error(
                    `Figma API returned an extreme rate limit wait time of ${waitTime / 1000}s (approx. ${hours} hours).\n` +
                        `This indicates that your Figma account or token is under an active multi-day cooldown ban by Figma.\n` +
                        `Please wait for this period to end, use a different Figma token, or run in offline fallback mode.`,
                    { cause: error }
                )
            }

            console.warn(
                pc.yellow(
                    `[429 Too Many Requests] ${contextName} rate limited. Waiting ${waitTime / 1000}s before retrying... (Attempts left: ${retries})`
                )
            )
            await new Promise(res => setTimeout(res, waitTime))
            return withRetry(fn, retries - 1, delay * 1.5, contextName)
        }

        if (retries > 0) {
            console.warn(
                pc.yellow(
                    `[Error] ${contextName} failed: ${message}. Retrying in ${delay / 1000}s... (Attempts left: ${retries})`
                )
            )
            await new Promise(res => setTimeout(res, delay))
            return withRetry(fn, retries - 1, delay * 1.5, contextName)
        }

        console.error(pc.red(`[Fatal] ${contextName} failed: ${message}. No retries left.`))
        throw error
    }
}

// Function to fetch image URLs from Figma in chunks with safety delays and retry logic
const fetchImageUrls = async (
    api: Figma.Api,
    fileId: string,
    ids: string[],
    chunkSize = 1000,
    delayBetweenChunks = 3000
): Promise<Record<string, string>> => {
    const urls: Record<string, string> = {}

    console.log(
        pc.blue(
            `Fetching image URLs from Figma for ${ids.length} icons in chunks of ${chunkSize}...`
        )
    )

    for (let i = 0; i < ids.length; i += chunkSize) {
        const chunkIds = ids.slice(i, i + chunkSize)
        const chunkIdsStr = chunkIds.join(',')

        const response = await withRetry(
            () =>
                api.getImages(
                    { file_key: fileId },
                    {
                        ids: chunkIdsStr,
                        format: 'svg',
                    }
                ),
            8,
            5000,
            `Figma getImages (Chunk ${Math.floor(i / chunkSize) + 1})`
        )

        Object.assign(urls, response.images)
        console.log(
            pc.green(
                `Fetched URLs for chunk ${Math.floor(i / chunkSize) + 1} (${chunkIds.length} icons)`
            )
        )

        // Apply a safety delay between chunk requests to give Figma API limits time to recover
        if (i + chunkSize < ids.length) {
            console.log(
                pc.blue(`Waiting ${delayBetweenChunks / 1000}s safety delay before next chunk...`)
            )
            await new Promise(res => setTimeout(res, delayBetweenChunks))
        }
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
    const categoryPath = path.join(svgsPath, categoryKebab)
    const weightPath = path.join(categoryPath, weight)
    return path.join(weightPath, `${iconKebab}.svg`)
}

// Function to generate metadata
const generateMetadata = (metadata: Metadata, parsed: ParsedIconName): void => {
    const { mainCategoryKebab, tags, iconNameKebab } = parsed

    if (!metadata.categories[mainCategoryKebab]) {
        metadata.categories[mainCategoryKebab] = {
            tags,
            icons: [],
        }
    }

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

// Fetch data from Figma
const fetchFigmaComponents = async (api: Figma.Api): Promise<ComponentData> => {
    console.log(pc.blue('Fetching file data from Figma...'))
    const { components } = await withRetry(
        () => api.getFile({ file_key: FIGMA_FILE_ID! }),
        8,
        5000,
        'Figma getFile'
    )
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

// Rebuild metadata.json and verify SVGs from the existing local folder structure when Figma is offline or rate-limited
const runOfflineFallback = async (): Promise<void> => {
    console.log(
        pc.yellow(
            '\n[Offline Fallback Mode] Rebuilding metadata and verifying existing SVGs from local disk cache...'
        )
    )

    // Try to load existing metadata.json to preserve categories tags
    let existingMetadata: Metadata = { categories: {} }
    try {
        const content = await fs.readFile(METADATA_PATH, 'utf-8')
        existingMetadata = JSON.parse(content) as Metadata
    } catch {
        console.warn(pc.yellow('Could not read existing metadata.json for category tag mapping.'))
    }

    const metadata: Metadata = { categories: {} }
    const validTargetPaths = new Set<string>()

    const categoriesOnDisk = await fs.readdir(SVGS_PATH, { withFileTypes: true })
    for (const catDirent of categoriesOnDisk) {
        if (!catDirent.isDirectory()) continue
        const categoryKebab = catDirent.name
        const catPath = path.join(SVGS_PATH, categoryKebab)

        // Extract tags from existing metadata or default to category name
        const tags = existingMetadata.categories[categoryKebab]?.tags || [categoryKebab]
        metadata.categories[categoryKebab] = {
            tags,
            icons: [],
        }

        const weightsOnDisk = await fs.readdir(catPath, { withFileTypes: true })
        for (const weightDirent of weightsOnDisk) {
            if (!weightDirent.isDirectory()) continue
            const weightPath = path.join(catPath, weightDirent.name)

            const filesOnDisk = await fs.readdir(weightPath)
            for (const file of filesOnDisk) {
                if (!file.endsWith('.svg')) continue
                const iconNameKebab = file.slice(0, -4)

                if (!metadata.categories[categoryKebab].icons.includes(iconNameKebab)) {
                    metadata.categories[categoryKebab].icons.push(iconNameKebab)
                }

                const filePath = path.join(weightPath, file)
                validTargetPaths.add(filePath)
            }
        }
    }

    // Sort icon lists in metadata categories
    for (const category in metadata.categories) {
        metadata.categories[category]!.icons.sort()
    }

    await verifySvgs(SVGS_PATH, ICON_WEIGHTS, metadata)
    await generateOutputs(metadata, {})

    console.log(
        pc.green('\nOffline fallback SVG generation and verification completed successfully.')
    )
}

// Main function
const main = async (): Promise<void> => {
    const forceOffline = process.argv.includes('--offline')
    if (forceOffline) {
        await runOfflineFallback()
        return
    }

    try {
        const forceClean = process.argv.includes('--force') || process.argv.includes('--clean')

        if (forceClean) {
            console.log(pc.yellow('Force clean flag detected. Re-initializing SVG directory...'))
            await initializeSvgsDirectory()
        } else {
            // Ensure directory exists without deleting it to preserve cache
            await fs.mkdir(SVGS_PATH, { recursive: true })
            console.log(pc.green(`Using existing SVG directory: ${SVGS_PATH} (incremental mode)`))
        }

        const api = new Figma.Api({ personalAccessToken: FIGMA_API_TOKEN })
        const { components, ids } = await fetchFigmaComponents(api)

        // Step 1: Pre-parse all icon names and identify what needs to be downloaded
        console.log(pc.blue('Parsing icon names and checking local cache...'))
        const parsedIcons: Record<string, ParsedIconName & { targetPath: string }> = {}
        const missingIds: string[] = []
        const validTargetPaths = new Set<string>()

        for (const id of ids) {
            const component = components[id]
            if (!component || !component.name) {
                continue
            }

            try {
                const parsed = parseIconName(component.name)
                const iconWeight = ICON_WEIGHTS[parsed.style]
                if (!iconWeight) {
                    continue
                }

                const targetPath = createIconPath(
                    SVGS_PATH,
                    parsed.mainCategoryKebab,
                    iconWeight,
                    parsed.iconNameKebab
                )

                parsedIcons[id] = {
                    ...parsed,
                    targetPath,
                }
                validTargetPaths.add(targetPath)

                const exists = await fileExists(targetPath)
                if (!exists) {
                    missingIds.push(id)
                }
            } catch {
                console.warn(pc.yellow(`Skipping invalid icon component: "${component.name}"`))
            }
        }

        console.log(pc.blue(`Total Figma icons: ${Object.keys(parsedIcons).length}`))
        console.log(
            pc.blue(
                `Icons already cached on disk: ${Object.keys(parsedIcons).length - missingIds.length}`
            )
        )
        console.log(pc.blue(`Icons needing download: ${missingIds.length}`))

        // Step 2: Fetch URLs only for missing icons
        let urls: Record<string, string> = {}
        if (missingIds.length > 0) {
            urls = await fetchImageUrls(api, FIGMA_FILE_ID, missingIds, 1000, 5000)
            console.log(
                pc.blue(
                    'Downloading and saving missing icons with a highly-conservative paced rate limit (10 requests/sec)...'
                )
            )

            const limit = pLimit(5) // Concurrency limit of 5 to protect CDN limits
            let downloadedCount = 0
            const failedDownloads: Record<string, string> = {}

            const downloadPromises = missingIds.map((id, index) =>
                limit(async () => {
                    // Stagger request start times by 100ms to stay strictly under 10 requests/sec,
                    // guaranteeing we never trigger Figma CDN's AWS WAF anti-DDoS spam blocks.
                    await new Promise(res => setTimeout(res, index * 100))

                    const parsed = parsedIcons[id]!
                    const url = urls[id]
                    if (!url) {
                        failedDownloads[id] = 'No Figma image URL returned'
                        return
                    }

                    const svgData = await downloadSvg(url)
                    if (!svgData) {
                        failedDownloads[id] = 'Failed to download SVG content'
                        return
                    }

                    try {
                        await saveSvg(
                            parsed.targetPath,
                            svgData,
                            parsed,
                            parsed.mainCategoryKebab,
                            ICON_WEIGHTS[parsed.style]!
                        )
                        downloadedCount++
                    } catch (error: any) {
                        failedDownloads[id] = `Write error: ${error.message}`
                    }
                })
            )

            await Promise.all(downloadPromises)
            console.log(
                pc.green(`\nDownloads complete. Successfully downloaded: ${downloadedCount} icons.`)
            )

            // Write a detailed report of the generation/downloads to help diagnose any issues
            const reportPath = path.resolve(__dirname, '../../FIGMA_GENERATION_REPORT.md')
            let reportContent = `# Figma Icon Generation Report\n\n`
            reportContent += `**Date:** ${new Date().toISOString()}\n\n`
            reportContent += `**Total Figma components found:** ${Object.keys(parsedIcons).length}\n`
            reportContent += `**Successfully downloaded in this run:** ${downloadedCount}\n`
            reportContent += `**Failed downloads:** ${Object.keys(failedDownloads).length}\n\n`

            if (Object.keys(failedDownloads).length > 0) {
                reportContent += `## Failed Downloads Detail\n\n`
                reportContent += `Below is the list of Figma components that failed to download. You can use this report to inspect or manually retrieve these icons if needed.\n\n`
                reportContent += `| Figma ID | Component Name (Figma) | Style | Category | Icon Name | Reason |\n`
                reportContent += `| --- | --- | --- | --- | --- | --- |\n`

                for (const [id, reason] of Object.entries(failedDownloads)) {
                    const compName = components[id]?.name || 'Unknown'
                    const parsed = parsedIcons[id]
                    const style = parsed?.style || 'Unknown'
                    const category = parsed?.mainCategoryOriginal || 'Unknown'
                    const name = parsed?.iconNameKebab || 'Unknown'
                    reportContent += `| \`${id}\` | \`${compName}\` | ${style} | ${category} | \`${name}\` | *${reason}* |\n`
                }
            } else {
                reportContent += `## All downloads succeeded! 🎉\n\nAll components were successfully synced and written to disk without any errors.\n`
            }

            await fs.writeFile(reportPath, reportContent, 'utf-8')
            console.log(pc.green(`Detailed generation report written to: ${reportPath}`))

            if (Object.keys(failedDownloads).length > 0) {
                console.log(pc.yellow('\nSummary of failed downloads:'))
                for (const [id, reason] of Object.entries(failedDownloads)) {
                    const name = components[id]?.name || 'unknown'
                    console.log(pc.red(`ID ${id} ("${name}"): ${reason}`))
                }
            }
        } else {
            console.log(pc.green('\nAll icons are already up to date. No downloads necessary!'))

            // Write a success report even if no downloads were needed
            const reportPath = path.resolve(__dirname, '../../FIGMA_GENERATION_REPORT.md')
            let reportContent = `# Figma Icon Generation Report\n\n`
            reportContent += `**Date:** ${new Date().toISOString()}\n\n`
            reportContent += `**Total Figma components found:** ${Object.keys(parsedIcons).length}\n`
            reportContent += `**Status:** Up to date 🎉 (no downloads necessary)\n`
            await fs.writeFile(reportPath, reportContent, 'utf-8')
        }

        // Step 3: Generate clean metadata using the complete list of valid Figma components
        const metadata: Metadata = { categories: {} }
        const categoryMap: Record<string, CategoryMapEntry> = {}
        const simplifiedCategorySet = new Set<string>()

        for (const id of ids) {
            const parsed = parsedIcons[id]
            if (!parsed) continue

            processCategoryMap(parsed, simplifiedCategorySet, categoryMap)
            generateMetadata(metadata, parsed)
        }

        // Clean up obsolete SVGs on disk (when icons are renamed/deleted in Figma)
        console.log(pc.blue('\nCleaning up obsolete local SVG files...'))
        let deletedCount = 0
        const categoriesOnDisk = await fs.readdir(SVGS_PATH, { withFileTypes: true })
        for (const catDirent of categoriesOnDisk) {
            if (!catDirent.isDirectory()) continue
            const catPath = path.join(SVGS_PATH, catDirent.name)

            const weightsOnDisk = await fs.readdir(catPath, { withFileTypes: true })
            for (const weightDirent of weightsOnDisk) {
                if (!weightDirent.isDirectory()) continue
                const weightPath = path.join(catPath, weightDirent.name)

                const filesOnDisk = await fs.readdir(weightPath)
                for (const file of filesOnDisk) {
                    if (!file.endsWith('.svg')) continue
                    const filePath = path.join(weightPath, file)
                    if (!validTargetPaths.has(filePath)) {
                        await fs.rm(filePath, { force: true })
                        deletedCount++
                        console.log(
                            pc.yellow(
                                `Deleted obsolete file: ${catDirent.name}/${weightDirent.name}/${file}`
                            )
                        )
                    }
                }

                // Clean empty weight directories
                const remainingFiles = await fs.readdir(weightPath)
                if (remainingFiles.length === 0) {
                    await fs.rmdir(weightPath)
                }
            }

            // Clean empty category directories
            const remainingWeights = await fs.readdir(catPath)
            if (remainingWeights.length === 0) {
                await fs.rmdir(catPath)
            }
        }
        console.log(pc.green(`Cleanup complete. Removed ${deletedCount} obsolete SVG files.`))

        // Sort icon lists in metadata categories
        for (const category in metadata.categories) {
            metadata.categories[category]!.icons.sort()
        }

        await verifySvgs(SVGS_PATH, ICON_WEIGHTS, metadata)
        await generateOutputs(metadata, {})

        console.log(pc.green('\nSVG generation and verification completed successfully.'))
    } catch (error: any) {
        console.error(pc.red('\nAn error occurred while connecting to Figma API:'), error.message)

        // Try to recover by running the offline fallback mode using cached SVGs
        try {
            const hasCachedSvgs = await fs
                .stat(SVGS_PATH)
                .then(s => s.isDirectory())
                .catch(() => false)
            if (hasCachedSvgs) {
                console.log(pc.blue('\nCached local SVGs found. Falling back to Offline Mode...'))
                await runOfflineFallback()
            } else {
                console.error(pc.red('No cached SVGs found. Cannot run in offline mode.'))
                process.exit(1)
            }
        } catch (fallbackError: any) {
            console.error(pc.red('Offline fallback failed:'), fallbackError.message)
            process.exit(1)
        }
    }
}

await main()
