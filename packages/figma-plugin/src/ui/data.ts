import { unzlibSync, strFromU8 } from 'fflate'

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

function base64ToUint8Array(base64: string): Uint8Array {
    const binString = atob(base64)
    const len = binString.length
    const bytes = new Uint8Array(len)
    for (let i = 0; i < len; i++) {
        bytes[i] = binString.charCodeAt(i)
    }
    return bytes
}

function readEmbeddedJson<T>(id: string): T {
    const element = document.getElementById(id)
    if (!element) throw new Error(`Missing embedded data: ${id}`)
    const text = (element.textContent ?? '').trim()
    if (element.getAttribute('data-encoding') === 'deflate-base64') {
        const u8 = base64ToUint8Array(text)
        const decompressed = unzlibSync(u8)
        return JSON.parse(strFromU8(decompressed)) as T
    }
    return JSON.parse(text) as T
}

/** Bundled pack bodies: every style, fully embedded and decompressed offline. */
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
