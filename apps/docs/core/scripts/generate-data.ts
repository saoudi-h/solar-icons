import metadata from '@solar-icons/core/metadata.json' assert { type: 'json' }
import fs from 'node:fs'

const toPascalCase = (str: string) =>
    str
        .split('-')
        .map(word => word.charAt(0).toUpperCase() + word.slice(1))
        .join('')

const outputDataFilePath = './core/generated/data.ts'
const outputUtilsFilePath = './core/generated/utils.ts'
const categoryList: string[] = []

const generateIcons = (metadata: any) => {
    const categories = metadata.categories
    let utils = `/* Generated by core/scripts/generate-data.ts */

export const styles = ['Broken', 'Outline', 'Linear', 'Bold', 'LineDuotone', 'BoldDuotone'] as const
export type Style = (typeof styles)[number] 

`
    let data = `/* Generated by core/scripts/generate-data.ts */

import { solar } from '@solar-icons/react'

export const icons = {`

    Object.entries(categories).forEach(([categoryName, categoryData]: [string, any]) => {
        const icons = categoryData.icons
        const tags = categoryData.tags

        const categoryPascalCase = toPascalCase(categoryName)
        categoryList.push(categoryName)
        const dataIcons = icons
            .map(
                (icon: string) =>
                    `           "${icon}": {
                pascalName: '${toPascalCase(icon)}',
                import: solar.${categoryPascalCase}.${toPascalCase(icon)}    
            }`
            )
            .join(',\n')

        data += `
    "${categoryName}": {
        tags: ${JSON.stringify(tags)},
        icons: {
${dataIcons}
        },
    },`
    })

    data += `
}

export default icons
`

    utils += `export const categories = ${JSON.stringify(categoryList)} as const\n`

    utils += 'export type Category = typeof categories[number]'

    return { data, utils }
}

const main = async () => {
    try {
        const { data, utils } = generateIcons(metadata)
        fs.writeFileSync(outputDataFilePath, data)
        console.log('The file has been generated with success !')
        fs.writeFileSync(outputUtilsFilePath, utils)
    } catch (error) {
        console.error('Error while generating the file:', error)
    }
}

main()
