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

export type CatalogProvenance = {
    schemaVersion: number
    packageName: string
    packageVersion: string
    logicalIconCount: number
    styleCount: number
    canonicalSvgCount: number
    aliasSvgCount: number
    mapEntryCount: number
    catalogHash: string
}

export type EmbeddedStyles = Record<string, Record<string, Record<string, string>>>

function readEmbeddedJson<T>(id: string): T {
    const element = document.getElementById(id)
    if (!element) throw new Error(`Missing embedded data: ${id}`)
    return JSON.parse(element.textContent ?? '') as T
}

/** Bundled pack bodies: every style, embedded chunks only. */
export const embeddedStyles = readEmbeddedJson<EmbeddedStyles>('solar-icon-data')

export type RegistrySkill = {
    name: string
    slug: string
    registry: string
    package: string
    path: string
    summary: string
}

export type RegistryPackage = RegistrySkill & {
    logo: string
}

export type EmbeddedRegistry = {
    packages: RegistryPackage[]
    skills: RegistrySkill[]
}

/** Registry manifest: every published package and agent skill. */
export const embeddedRegistry = readEmbeddedJson<EmbeddedRegistry>('solar-registry')
export const icons = readEmbeddedJson<IconMetadata[]>('solar-icon-metadata')
export const catalogProvenance = readEmbeddedJson<CatalogProvenance>('solar-catalog-provenance')
export const packageLogos = readEmbeddedJson<Record<string, PackageLogo>>('solar-package-logos')
