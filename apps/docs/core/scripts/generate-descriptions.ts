import icons from '@solar-icons/core/metadata-descriptions.json' assert { type: 'json' }
import fs from 'node:fs'

const outputDataFilePath = './core/generated/descriptions.ts'

const toPascalCase = (str: string) =>
    str
        .split('-')
        .map(word => word.charAt(0).toUpperCase() + word.slice(1))
        .join('')

type IconData = {
    name: string
    category: string
    categoryTags: string[]
    tags: string[]
}

const generate = (icons: IconData[]): string => {
    let data = `/* Generated by core/scripts/generate-data.ts */

import { solar } from '@solar-icons/react'
import { Icon as IconType } from '@solar-icons/react/lib/types'
import { Category } from './utils'

export interface IconData {
    name: string
    category: Category
    categoryTags: string[]
    tags: string[]
    Icon: IconType
}

export const icons = [
`
    const res = Object.entries(icons).map(([_, icon]) => {
        return `    {
        name: '${icon.name}',
        category: '${icon.category}',
        categoryTags: ${JSON.stringify(icon.categoryTags)},
        tags: ${JSON.stringify(icon.tags)},
        Icon: solar.${toPascalCase(icon.category)}.${toPascalCase(icon.name)},
    }`
    })

    data += res.join(',\n')
    data += `]

export default icons

`

    return data
}

const main = async () => {
    try {
        const data = generate(icons)
        fs.writeFileSync(outputDataFilePath, data)
        console.log('The file has been generated with success !')
    } catch (error) {
        console.error('Error while generating the file:', error)
    }
}

main()
