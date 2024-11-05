import pc from 'picocolors'
import type { Metadata } from '../types'
import { checkMetadataFileExists, isValidMetadata, loadMetadata } from '../utils'

/**
 * Check if all icon names are valid and unique
 * @param metadata The metadata object.
 * @throws {Error} If any icon name is invalid or not unique
 */
const checkIconNames = (metadata: Metadata) => {
    const categories = Object.values(metadata.categories)
    const iconsCount = categories.reduce((count, category) => count + category.icons.length, 0)
    const uniqueIconsSet = new Set(categories.flatMap(category => category.icons))

    if (iconsCount !== uniqueIconsSet.size) {
        console.log(pc.red('Error: Icon names are not unique.'))
        console.log(
            pc.red(
                `Expected ${iconsCount.toString()} unique icon names, but found ${uniqueIconsSet.size.toString()}.`
            )
        )
        displayDuplicateIcons(metadata)
        process.exit(1) // Exit with an error
    }

    // Check if all icon names are valid
    for (const icon of uniqueIconsSet.values()) {
        if (!/^[a-z0-9-]+$/i.test(icon)) {
            console.log(pc.red(`Error: Icon name "${icon}" is invalid.`))
            process.exit(1) // Exit with an error
        }
        // check if the icon name does not start with a number
        if (/^\d/.test(icon)) {
            console.log(pc.red(`Error: Icon name "${icon}" cannot start with a number.`))
            process.exit(1) // Exit with an error
        }
    }
    console.log(pc.green('All icon names are valid.'))
}

//----------------------------------------------------------------------------------------------------------------

const displayDuplicateIcons = (metadata: Metadata) => {
    const categories = Object.values(metadata.categories)

    // On extrait tous les icônes de chaque catégorie
    const icons = categories.flatMap(value => value.icons)

    // On utilise un Set pour repérer les icônes uniques
    const uniqueIcons = new Set(icons)

    // Si la taille du Set est différente du nombre d'icônes, il y a des doublons
    if (uniqueIcons.size === icons.length) {
        console.log(pc.green('No duplicate icons found.'))
        return // On retourne ici car il n'y a pas de doublons
    }

    // Map pour compter la fréquence d'apparition de chaque icône
    const iconCounts = new Map<string, number>()
    for (const icon of icons) {
        iconCounts.set(icon, (iconCounts.get(icon) ?? 0) + 1)
    }

    // Affiche les icônes qui apparaissent plus d'une fois
    for (const [icon, count] of iconCounts.entries()) {
        if (count > 1) {
            console.log(pc.red(`${icon} appears ${count.toString()} times.`))
        }
    }
}

//----------------------------------------------------------------------------------------------------------------
// Main function
//----------------------------------------------------------------------------------------------------------------

const main = async () => {
    console.log(pc.blue('Checking metadata integrity...\n'))
    // Check if the metadata file exists
    checkMetadataFileExists()

    // Load the metadata
    const metadata = await loadMetadata()

    // Check if the metadata is valid
    if (isValidMetadata(metadata)) {
        console.log(pc.green('Metadata is valid.'))
    } else {
        console.log(pc.red('Metadata is invalid.'))
        process.exit(1)
    }

    // Check if all icon names are valid and unique
    checkIconNames(metadata)
}

await main()
