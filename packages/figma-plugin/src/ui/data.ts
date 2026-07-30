export type IconMetadata = {
    name: string
    category: string
    categoryTags: string[]
    tags: string[]
}

export type PackageLogo = {
    body: string
    width: number
    height: number
}

function readEmbeddedJson<T>(id: string): T {
    const element = document.getElementById(id)
    if (!element) throw new Error(`Missing embedded data: ${id}`)
    return JSON.parse(element.textContent ?? '') as T
}

export const iconData = readEmbeddedJson<Record<string, string>>('solar-icon-data')
export const icons = readEmbeddedJson<IconMetadata[]>('solar-icon-metadata')
export const packageLogos = readEmbeddedJson<Record<string, PackageLogo>>('solar-package-logos')
