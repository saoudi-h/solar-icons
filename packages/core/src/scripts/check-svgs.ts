import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

const __dirname = import.meta.dirname
const SVGS_PATH = path.resolve(__dirname, '../../svgs')

const ICON_WEIGHTS: string[] = ['Broken', 'LineDuotone', 'Linear', 'Outline', 'Bold', 'BoldDuotone'] // List of icon weights

const checkSvgs = () => {
    let totalIcons = 0

    console.log(pc.blue('Checking SVGs...\n'))

    // Check if svgs directory exists
    if (!fs.existsSync(SVGS_PATH)) {
        console.log(pc.red(`Error: Directory ${SVGS_PATH} does not exist.`))
        process.exit(1) // Exit with an error
    }

    // Read all categories (top-level directories in svgs)
    const categories = fs
        .readdirSync(SVGS_PATH, { withFileTypes: true })
        .filter(dirent => dirent.isDirectory())

    if (categories.length === 0) {
        console.log(pc.red('No categories found in the SVGs directory.'))
        process.exit(1)
    }

    // Structure to hold results for each category and weight
    const rows: { category: string; weight: string; files: number }[] = []

    categories.forEach(categoryDir => {
        const categoryPath = path.join(SVGS_PATH, categoryDir.name)

        // Check each weight directory within the category
        ICON_WEIGHTS.forEach(weight => {
            const weightPath = path.join(categoryPath, weight)

            if (fs.existsSync(weightPath)) {
                const files = fs.readdirSync(weightPath).filter(file => file.endsWith('.svg')) // Only count SVG files
                const fileCount = files.length

                totalIcons += fileCount
                rows.push({ category: categoryDir.name, weight, files: fileCount })
            } else {
                console.log(
                    pc.yellow(
                        `Warning: Weight directory "${weight}" missing in category "${categoryDir.name}".`
                    )
                )
            }
        })
    })

    // Add a final row for total icons
    rows.push({ category: 'Total', weight: '', files: totalIcons })

    // Calculate column widths for formatted table output
    const categoryColumnWidth = Math.max(
        ...rows.map(entry => entry.category.length),
        'Category'.length
    )
    const weightColumnWidth = Math.max(...rows.map(entry => entry.weight.length), 'Weight'.length)
    const filesColumnWidth = Math.max(
        ...rows.map(entry => entry.files.toString().length),
        'Files'.length
    )

    // Prepare formatted table with dynamically adjusted column widths
    const separator = `┌${'─'.repeat(categoryColumnWidth + 2)}┬${'─'.repeat(weightColumnWidth + 2)}┬${'─'.repeat(filesColumnWidth + 2)}┐`
    const header = `│ ${'Category'.padEnd(categoryColumnWidth)} │ ${'Weight'.padEnd(weightColumnWidth)} │ ${'Files'.padEnd(filesColumnWidth)} │`
    const divider = `├${'─'.repeat(categoryColumnWidth + 2)}┼${'─'.repeat(weightColumnWidth + 2)}┼${'─'.repeat(filesColumnWidth + 2)}┤`
    const footer = `└${'─'.repeat(categoryColumnWidth + 2)}┴${'─'.repeat(weightColumnWidth + 2)}┴${'─'.repeat(filesColumnWidth + 2)}┘`

    // Print table
    console.log(pc.blue(separator))
    console.log(pc.blue(header))
    console.log(pc.blue(divider))

    rows.forEach(({ category, weight, files }, index) => {
        const row = `│ ${category.padEnd(categoryColumnWidth)} │ ${weight.padEnd(weightColumnWidth)} │ ${files
            .toString()
            .padStart(filesColumnWidth)} │`
        console.log(pc.blue(row))

        if (index === rows.length - 2) console.log(pc.blue(divider)) // Divider before the total row
    })

    console.log(pc.blue(footer))
    console.log(pc.green('\nSVGs check completed successfully.'))
}

// Run the check
checkSvgs()
