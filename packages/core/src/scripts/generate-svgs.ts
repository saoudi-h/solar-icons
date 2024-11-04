import fs from 'node:fs/promises'
import path from 'node:path'
import axios from 'axios'
import chalk from 'chalk'
import dotenv from 'dotenv'
import * as Figma from 'figma-api'
import pLimit from 'p-limit'
import { fixIconName, toKebabCase } from '../utils'
import { Metadata } from '../types'
import iconWeights from '../icon-weights.json' assert { type: 'json' }

// Load environment variables
dotenv.config()

// Define base constants
const __dirname = import.meta.dirname
const SVGS_PATH = path.resolve(__dirname, '../svgs')
const METADATA_PATH = path.resolve(__dirname, '../metadata.json')
const CONCURRENCY_LIMIT = 50

// Retrieve environment tokens
const { FIGMA_API_TOKEN, FIGMA_FILE_ID } = process.env

// Check environment variables
if (!FIGMA_API_TOKEN || !FIGMA_FILE_ID) {
    console.error(chalk.red('Environment Variables not set.'))
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
        console.log(chalk.green(`Initialized directory: ${SVGS_PATH}`))
    } catch (error) {
        console.error(chalk.red('Error initializing svgs directory:'), error)
        process.exit(1)
    }
}

// Function to parse and clean the icon name
const parseIconName = (name: string): ParsedIconName => {
    const parts = name.split('/').map(part => part.trim())

    if (parts.length !== 3) {
        console.error(
            chalk.red(`Invalid name format: "${name}". Expected 3 parts separated by "/".`)
        )
        process.exit(1)
    }

    const [styleRaw, categoriesRaw, iconNameRaw] = parts

    // Style: remove spaces
    const style = styleRaw!.replace(/\s+/g, '')

    // Categories: split by ',' or '&', trim, kebab-case
    const categoryParts = categoriesRaw!.split(/[,&]+/).map(part => part.trim())

    if (categoryParts.length === 0) {
        console.error(chalk.red(`No categories found in: "${categoriesRaw}"`))
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
            console.warn(chalk.yellow(`Retrying download... Attempts remaining: ${retries}`))
            await new Promise(res => setTimeout(res, 1000))
            return downloadSvg(url, retries - 1)
        } else {
            console.error(chalk.red('Error downloading SVG:'), error)
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

    console.log(chalk.blue('Fetching image URLs from Figma...'))
    for (let i = 0; i < ids.length; i += chunkSize) {
        const chunkIds = ids.slice(i, i + chunkSize).join(',')
        const response = await api.getImage(fileId, {
            scale: 1,
            ids: chunkIds,
            format: 'svg',
        })
        Object.assign(urls, response.images)
        console.log(chalk.green(`Fetched URLs for chunk ${Math.floor(i / chunkSize) + 1}`))
    }

    return urls
}

// Function to create the save path for the SVG
const createIconPath = (
    svgsPath: string,
    categoryOriginal: string,
    weight: string,
    iconKebab: string
): string => {
    const categoryPath = path.join(svgsPath, categoryOriginal) // Original name of the category
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
    metadata: Metadata,
    categoryMap: Record<
        string,
        { simplifiedOriginal: string; simplifiedKebab: string; tags: string[] }
    >
): Promise<void> => {
    console.log(chalk.blue('Verifying directory contents...'))
    let totalIcons = 0

    // Calculate column widths for the report
    const rows: { category: string; weight: string; files: number }[] = []

    for (const [categoryKebab, data] of Object.entries(metadata.categories)) {
        // Find the original category name from categoryMap
        const originalCategoryEntry = Object.values(categoryMap).find(
            cat => cat.simplifiedKebab === categoryKebab
        )
        const originalCategory = originalCategoryEntry
            ? originalCategoryEntry.simplifiedOriginal
            : toKebabCase(categoryKebab)

        for (const weight of Object.values(iconWeights)) {
            const weightPath = path.join(svgsPath, originalCategory, weight)
            try {
                const files = await fs.readdir(weightPath)
                const svgFiles = files.filter(file => file.endsWith('.svg'))
                const fileCount = svgFiles.length

                totalIcons += fileCount
                rows.push({ category: originalCategory, weight, files: fileCount })
                console.log(
                    chalk.blue(` - ${originalCategory} / ${weight}:`),
                    chalk.green(`${fileCount} icons`)
                )
            } catch (error) {
                console.error(chalk.red(`Error reading directory ${weightPath}:`), error)
            }
        }
    }

    console.log(chalk.green(`Total icons: ${totalIcons}`))
}

//------------------------------------------------------------------------------------------------
// Main function
//------------------------------------------------------------------------------------------------

// Main function to generate the SVGs
const main = async (): Promise<void> => {
    try {
        // Initialize the svgs directory
        await initializeSvgsDirectory()

        // Initialize the Figma API
        const api = new Figma.Api({ personalAccessToken: FIGMA_API_TOKEN })

        console.log(chalk.blue('Fetching file data from Figma...'))
        const { components } = await api.getFile(FIGMA_FILE_ID)
        const ids = Object.keys(components)

        console.log(chalk.blue(`Fetched ${ids.length} components.`))

        // Fetch the URLs for the SVGs
        const urls = await fetchImageUrls(api, FIGMA_FILE_ID, ids)

        console.log(chalk.blue('Downloading and saving icons...'))

        const limit = pLimit(CONCURRENCY_LIMIT)
        let totalIconsProcessed = 0

        // Initialize structures for metadata and failed downloads
        const metadata: Metadata = { categories: {} }
        const failedDownloads: Record<string, string> = {}
        const categoryMap: Record<
            string,
            { simplifiedOriginal: string; simplifiedKebab: string; tags: string[] }
        > = {}
        const simplifiedCategorySet = new Set<string>()

        // Create download promises
        const downloadPromises = ids.map(id =>
            limit(async () => {
                const component = components[id]
                const name = component?.name

                if (!name) {
                    console.warn(chalk.yellow(`Skipping undefined name for component ID: ${id}`))
                    failedDownloads[id] = 'undefined name'
                    return
                }

                const svgData = await downloadSvg(urls[id] ?? '')
                if (!svgData) {
                    failedDownloads[id] = 'failed to download'
                    return
                }

                const parsed = parseIconName(name)
                const { style, mainCategoryOriginal, mainCategoryKebab, tags, iconNameKebab } =
                    parsed

                const iconWeight = ICON_WEIGHTS[style]

                if (!iconWeight) {
                    console.warn(chalk.yellow(`Unknown style for icon: ${name}`))
                    failedDownloads[id] = 'unknown style'
                    return
                }

                // Simplify the category name and collect tags
                if (!categoryMap[parsed.mainCategoryOriginal]) {
                    // Check for collisions
                    if (simplifiedCategorySet.has(mainCategoryKebab)) {
                        console.error(
                            chalk.red(
                                `Collision detected for simplified category name: "${mainCategoryKebab}"`
                            )
                        )
                        console.error(
                            `Categories "${parsed.mainCategoryOriginal}" and another category simplify to the same name.`
                        )
                        console.error(
                            'Please adjust the simplifyCategory function or category names to resolve the collision.'
                        )
                        process.exit(1)
                    } else {
                        simplifiedCategorySet.add(mainCategoryKebab)
                        categoryMap[parsed.mainCategoryOriginal] = {
                            simplifiedOriginal: mainCategoryOriginal,
                            simplifiedKebab: mainCategoryKebab,
                            tags,
                        }
                    }
                }

                // Generate metadata
                generateMetadata(metadata, parsed)

                // Define the path to save the SVG
                const iconPath = createIconPath(
                    SVGS_PATH,
                    mainCategoryOriginal,
                    iconWeight,
                    iconNameKebab
                )

                // Ensure the weight directory exists
                try {
                    await fs.mkdir(path.dirname(iconPath), { recursive: true })
                } catch (error) {
                    console.error(chalk.red(`Error creating directory for ${iconPath}:`), error)
                    failedDownloads[id] = 'failed to create directory'
                    return
                }

                // Write the SVG file
                try {
                    await fs.writeFile(iconPath, svgData, 'utf-8')
                    console.log(
                        chalk.green(
                            `Saved "${parsed.iconNameKebab}" in "${mainCategoryOriginal}" / "${iconWeight}"`
                        )
                    )
                    totalIconsProcessed++
                } catch (error) {
                    console.error(chalk.red(`Error writing file ${iconPath}:`), error)
                    failedDownloads[id] = 'failed to write file'
                }
            })
        )

        // Wait for all download promises to resolve
        await Promise.all(downloadPromises)
        console.log(chalk.green(`\nSVGs generated successfully: ${totalIconsProcessed} icons.`))

        // Verify directory contents
        await verifySvgs(SVGS_PATH, ICON_WEIGHTS, metadata, categoryMap)

        // Summary of failed downloads
        if (Object.keys(failedDownloads).length > 0) {
            console.log(chalk.yellow('\nSummary of failed downloads:'))
            for (const [id, reason] of Object.entries(failedDownloads)) {
                console.log(chalk.red(`ID ${id}: ${reason}`))
            }
        } else {
            console.log(chalk.green('\nNo failures!'))
        }

        // Generate the metadata file
        await fs.writeFile(METADATA_PATH, JSON.stringify(metadata, null, 2), 'utf-8')
        console.log(chalk.green(`\nMetadata file generated at ${METADATA_PATH}`))

        console.log(chalk.green('\nSVG generation and verification completed.'))
    } catch (error) {
        console.error(chalk.red('An unexpected error occurred:'), error)
        process.exit(1)
    }
}

await main()
