import icons from '@/core/generated/data'
import { Category } from '@/core/generated/utils'
import { Icon as IconType } from '@solar-icons/react/lib/types'
import { CategoryOption } from '.'

export interface IconData {
    category: Category
    name: string
    pascalName: string
    tags: string[]
    Icon: IconType
}

export const getAllIcons = (): IconData[] => {
    return Object.entries(icons).flatMap(([category, data]) =>
        Object.entries(data.icons).map(([name, icon]) => ({
            category: category as Category,
            name,
            pascalName: icon.pascalName,
            tags: data.tags,
            Icon: icon.import,
        }))
    )
}

export const searchIcons = ({
    keyword,
    categories,
}: {
    keyword?: string
    categories?: CategoryOption[] | undefined
}): IconData[] => {
    const lowerKeyword = keyword && keyword.toLowerCase()
    return getAllIcons().filter(icon => {
        const matchesKeyword =
            !lowerKeyword ||
            icon.name.includes(lowerKeyword) ||
            icon.tags.some(tag => tag.includes(lowerKeyword))

        const matchesCategory = !categories || categories.length === 0 || categories.find(c => c.value === icon.category)

        return matchesCategory && matchesKeyword
    })
}
