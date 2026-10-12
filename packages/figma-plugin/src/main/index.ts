import {
    DEFAULT_SETTINGS,
    type IconInsertItem,
    type MainMessage,
    type PluginSettings,
    type UiMessage,
} from '../shared/messages'
import {
    canonicalName,
    chunkKey,
    combineUrls,
    isStaleChunkKey,
    normalizeBody,
    PACK_ORIGIN,
    splitCombined,
} from '../shared/packs'

const SETTINGS_KEY = 'settings'
let resizeStartPosition: Vector | null = null

// Icon pack cache: linear ships in the bundle, other styles download once
// per style × category chunk and persist in clientStorage (5 MiB quota).
let packVersion = ''
const packMemory = new Map<string, Record<string, string>>()
const packInFlight = new Map<string, Promise<Record<string, string>>>()

async function deleteStoredKey(key: string): Promise<void> {
    try {
        await figma.clientStorage.deleteAsync(key)
    } catch {
        // Storage unavailable: the memory cache still serves this session.
    }
}

async function purgeStalePacks(version: string): Promise<void> {
    packVersion = version
    packMemory.clear()
    packInFlight.clear()
    try {
        const keys = await figma.clientStorage.keysAsync()
        await Promise.all(
            keys.filter(key => isStaleChunkKey(key, version)).map(deleteStoredKey)
        )
    } catch {
        // Storage unavailable: the memory cache still serves this session.
    }
}

async function storeChunk(key: string, icons: Record<string, string>): Promise<void> {
    try {
        await figma.clientStorage.setAsync(key, icons)
    } catch {
        // Quota exceeded: drop the oldest half of the cache and retry once,
        // then serve memory-only for the rest of the session.
        const keys = [...packMemory.keys()]
        const evicted = keys.slice(0, Math.ceil(keys.length / 2))
        for (const evictedKey of evicted) packMemory.delete(evictedKey)
        await Promise.all(evicted.map(deleteStoredKey))
        try {
            await figma.clientStorage.setAsync(key, icons)
        } catch {
            // Serve memory-only.
        }
    }
}

async function loadChunk(
    style: string,
    category: string,
    names: readonly string[]
): Promise<Record<string, string>> {
    const key = chunkKey(packVersion, style, category)
    const cached = packMemory.get(key)
    if (cached) return cached
    const inFlight = packInFlight.get(key)
    if (inFlight) return inFlight
    const task = (async (): Promise<Record<string, string>> => {
        try {
            const stored = await figma.clientStorage.getAsync(key)
            if (stored && typeof stored === 'object') {
                const icons = stored as Record<string, string>
                packMemory.set(key, icons)
                return icons
            }
        } catch {
            // Storage unreadable: fall through to the network.
        }
        const icons: Record<string, string> = {}
        for (const url of combineUrls(PACK_ORIGIN, packVersion, style, names)) {
            const response = await fetch(url)
            if (!response.ok) throw new Error(`pack ${response.status}`)
            for (const document of splitCombined(await response.text())) {
                const name = canonicalName(document)
                if (name) icons[name] = normalizeBody(document)
            }
        }
        const missing = names.filter(name => icons[name] === undefined)
        if (missing.length > 0) {
            throw new Error(`pack incomplete, missing: ${missing.slice(0, 3).join(', ')}`)
        }
        packMemory.set(key, icons)
        await storeChunk(key, icons)
        return icons
    })()
    packInFlight.set(key, task)
    try {
        return await task
    } finally {
        packInFlight.delete(key)
    }
}

function postMessage(message: MainMessage): void {
    figma.ui.postMessage(message)
}

function isAllowedExternalUrl(url: string): boolean {
    return (
        url === 'https://github.com/saoudi-h/solar-icons' ||
        url === 'https://solar-icons.vercel.app' ||
        url.startsWith('https://solar-icons.vercel.app/docs/v2/packages/')
    )
}

figma.showUI(__html__, {
    width: 300,
    height: 520,
    themeColors: true,
    title: 'Solar Icons',
})

function visitNodes(node: SceneNode, callback: (node: SceneNode) => void): void {
    callback(node)
    if (!('children' in node)) return

    for (const child of node.children) visitNodes(child, callback)
}

function applyStrokeWidth(node: SceneNode, strokeWidth: number): void {
    visitNodes(node, child => {
        if (!('strokes' in child) || child.strokes.length === 0) return
        if (!('strokeWeight' in child)) return
        child.strokeWeight = strokeWidth
    })
}

function createIconNode(
    item: IconInsertItem,
    settings: Pick<PluginSettings, 'iconSize' | 'strokeWidth'> & {
        styleLabel: string
        supportsStrokeWidth: boolean
    }
): FrameNode {
    if (!item.svg) throw new Error('The selected Solar icon is unavailable.')

    const node = figma.createNodeFromSvg(item.svg)
    node.name = `Solar / ${settings.styleLabel} / ${item.name}`

    const scale = settings.iconSize / node.width
    if (Math.abs(scale - 1) > 0.001) node.rescale(scale)
    if (settings.supportsStrokeWidth) applyStrokeWidth(node, settings.strokeWidth)

    return node
}

function placeNodes(nodes: FrameNode[], iconSize: number): void {
    const gap = Math.max(12, Math.round(iconSize / 2))
    const columns = Math.min(6, Math.ceil(Math.sqrt(nodes.length)))
    const rows = Math.ceil(nodes.length / columns)
    const width = columns * iconSize + (columns - 1) * gap
    const height = rows * iconSize + (rows - 1) * gap
    const startX = Math.round(figma.viewport.center.x - width / 2)
    const startY = Math.round(figma.viewport.center.y - height / 2)

    nodes.forEach((node, index) => {
        node.x = startX + (index % columns) * (iconSize + gap)
        node.y = startY + Math.floor(index / columns) * (iconSize + gap)
    })
}

async function insertIcons(message: Extract<UiMessage, { type: 'insert-icons' }>): Promise<void> {
    const created: FrameNode[] = []

    try {
        for (const item of message.items) created.push(createIconNode(item, message))
        placeNodes(created, message.iconSize)
        figma.currentPage.selection = created
        figma.viewport.scrollAndZoomIntoView(created)
        figma.commitUndo()
        postMessage({ type: 'inserted', count: created.length })
    } catch (error) {
        for (const node of created) node.remove()
        postMessage({
            type: 'error',
            message: error instanceof Error ? error.message : 'The icons could not be inserted.',
        })
    }
}

figma.ui.onmessage = async (message: UiMessage): Promise<void> => {
    if (message.type === 'resize-start') {
        resizeStartPosition = figma.ui.getPosition().windowSpace
        return
    }

    if (message.type === 'resize-window') {
        figma.ui.resize(message.width, message.height)
        if (resizeStartPosition && (message.offsetX !== 0 || message.offsetY !== 0)) {
            figma.ui.reposition(
                resizeStartPosition.x + message.offsetX,
                resizeStartPosition.y + message.offsetY
            )
        }
        return
    }

    if (message.type === 'resize-end') {
        resizeStartPosition = null
        return
    }

    if (message.type === 'load-settings') {
        const storedSettings = await figma.clientStorage.getAsync(SETTINGS_KEY)
        postMessage({
            type: 'settings-loaded',
            settings: { ...DEFAULT_SETTINGS, ...(storedSettings as Partial<PluginSettings> | undefined) },
        })
        return
    }

    if (message.type === 'save-settings') {
        await figma.clientStorage.setAsync(SETTINGS_KEY, message.settings)
        return
    }

    if (message.type === 'init-packs') {
        await purgeStalePacks(message.version)
        return
    }

    if (message.type === 'fetch-chunks') {
        try {
            const chunks = await Promise.all(
                message.chunks.map(async ({ style, category, names }) => ({
                    style,
                    category,
                    icons: await loadChunk(style, category, names),
                }))
            )
            postMessage({ type: 'chunks-ready', requestId: message.requestId, chunks })
        } catch (error) {
            postMessage({
                type: 'chunks-failed',
                requestId: message.requestId,
                offline: error instanceof TypeError,
            })
        }
        return
    }

    if (message.type === 'insert-icons') {
        await insertIcons(message)
        return
    }

    if (message.type === 'open-external' && isAllowedExternalUrl(message.url)) {
        figma.openExternal(message.url)
    }
}
