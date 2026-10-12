import {
    DEFAULT_SETTINGS,
    type IconInsertItem,
    type MainMessage,
    type PluginSettings,
    type UiMessage,
} from '../shared/messages'
import {
    CACHE_BUDGET_BYTES,
    canonicalName,
    chunkKey,
    combineUrls,
    isStaleChunkKey,
    normalizeBody,
    PACK_ORIGIN,
    planEvictions,
    splitCombined,
    type CacheUsage,
} from '../shared/packs'

const SETTINGS_KEY = 'settings'
let resizeStartPosition: Vector | null = null

function packLog(...args: unknown[]): void {
    // Visible in Figma Desktop via Plugins → Development → Open Console.
    console.log('[packs]', ...args)
}

// Icon pack cache: linear ships in the bundle, other styles download once
// per style × category chunk and persist in clientStorage under a strict
// byte budget (LRU, oldest first). All storage mutations run serialized
// through one promise chain: concurrent fetches must never evict each
// other's fresh entries.
let packVersion = ''
const packMemory = new Map<string, Record<string, string>>()
const packInFlight = new Map<string, Promise<Record<string, string>>>()
const packIndex = new Map<string, { bytes: number; at: number }>()
let packClock = 0
let storageChain: Promise<void> = Promise.resolve()

const indexKey = (): string => `solar:index:${packVersion}`

function mutateStorage(task: () => Promise<void>): Promise<void> {
    const run = storageChain.then(task, task)
    storageChain = run.catch(() => undefined)
    return run
}

async function deleteStoredKey(key: string): Promise<void> {
    try {
        await figma.clientStorage.deleteAsync(key)
    } catch {
        // Storage unavailable: the memory cache still serves this session.
    }
}

async function writeIndex(): Promise<void> {
    try {
        const usage: CacheUsage[] = [...packIndex.entries()].map(([key, entry]) => ({
            key,
            bytes: entry.bytes,
            at: entry.at,
        }))
        await figma.clientStorage.setAsync(indexKey(), usage)
    } catch {
        // Index loss only costs LRU precision until the next rebuild.
    }
}

async function readIndex(): Promise<void> {
    packIndex.clear()
    try {
        const stored = await figma.clientStorage.getAsync(indexKey())
        if (Array.isArray(stored)) {
            for (const entry of stored as CacheUsage[]) {
                if (
                    entry &&
                    typeof entry.key === 'string' &&
                    typeof entry.bytes === 'number' &&
                    typeof entry.at === 'number'
                ) {
                    packIndex.set(entry.key, { bytes: entry.bytes, at: entry.at })
                    if (entry.at > packClock) packClock = entry.at
                }
            }
            return
        }
    } catch {
        // Fall through to measuring.
    }
    // No usable index: measure every cached chunk once.
    try {
        const keys = await figma.clientStorage.keysAsync()
        for (const key of keys) {
            if (!key.startsWith(`solar:pack:${packVersion}:`)) continue
            try {
                const stored = await figma.clientStorage.getAsync(key)
                if (stored && typeof stored === 'object') {
                    packClock += 1
                    packIndex.set(key, { bytes: JSON.stringify(stored).length, at: packClock })
                }
            } catch {
                // Skip unreadable entries.
            }
        }
        await writeIndex()
    } catch {
        // Storage unavailable: memory cache only.
    }
}

async function purgeStalePacks(version: string): Promise<void> {
    packVersion = version
    packMemory.clear()
    packInFlight.clear()
    packIndex.clear()
    try {
        const keys = await figma.clientStorage.keysAsync()
        await Promise.all(
            keys
                .filter(
                    key =>
                        isStaleChunkKey(key, version) ||
                        (key.startsWith('solar:index:') && key !== indexKey())
                )
                .map(deleteStoredKey)
        )
    } catch {
        // Storage unavailable: the memory cache still serves this session.
    }
    await readIndex()
}

async function storeChunk(key: string, icons: Record<string, string>): Promise<void> {
    const bytes = JSON.stringify(icons).length
    return mutateStorage(async () => {
        packClock += 1
        const usage: CacheUsage[] = [...packIndex.entries()].map(([entryKey, entry]) => ({
            key: entryKey,
            bytes: entryKey === key ? bytes : entry.bytes,
            at: entryKey === key ? packClock : entry.at,
        }))
        if (!packIndex.has(key)) {
            usage.push({ key, bytes, at: packClock })
        }
        const evicted = planEvictions(usage, 0, CACHE_BUDGET_BYTES)
        for (const evictedKey of evicted) {
            packMemory.delete(evictedKey)
            packIndex.delete(evictedKey)
            await deleteStoredKey(evictedKey)
        }
        packIndex.set(key, { bytes, at: packClock })
        await figma.clientStorage.setAsync(key, icons)
        await writeIndex()
    })
}

async function loadChunk(
    style: string,
    category: string,
    names: readonly string[],
    signal?: { readonly aborted: boolean }
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
            packLog(`GET ${url}`)
            let response
            try {
                response = await fetch(
                    url,
                    signal === undefined ? undefined : ({ signal }) as never
                )
            } catch (error) {
                packLog(`fetch threw for ${style}/${category}:`, error)
                throw error
            }
            packLog(`HTTP ${response.status} for ${style}/${category}`)
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

const batchControllers = new Map<number, SandboxAbortController | null>()
const batchKeys = new Map<number, string[]>()
let maxBatchId = 0

type SandboxAbortController = { readonly signal: { readonly aborted: boolean }; abort(): void }

function createAbortController(): SandboxAbortController | null {
    const factory = (
        globalThis as unknown as { AbortController?: new () => SandboxAbortController }
    ).AbortController
    if (typeof factory !== 'function') return null
    try {
        return new factory()
    } catch {
        return null
    }
}

function chunkKeysOf(chunks: { style: string; category: string }[]): string[] {
    return chunks.map(chunk => `${chunk.style}/${chunk.category}`)
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
        packLog(`ready (catalog ${packVersion})`)
        return
    }

    if (message.type === 'get-storage-stats') {
        try {
            const keys = await figma.clientStorage.keysAsync()
            const ours = keys.filter(
                key => key.startsWith('solar:pack:') && !isStaleChunkKey(key, packVersion)
            )
            let bytes = 0
            for (const key of ours) {
                try {
                    const stored = await figma.clientStorage.getAsync(key)
                    if (stored && typeof stored === 'object') {
                        bytes += JSON.stringify(stored).length
                    }
                } catch {
                    // Count what we can read; unreadable entries still occupy quota.
                }
            }
            postMessage({ type: 'storage-stats', version: packVersion, chunks: ours.length, bytes })
        } catch {
            postMessage({ type: 'storage-stats', version: packVersion, chunks: 0, bytes: 0 })
        }
        return
    }

    if (message.type === 'fetch-chunks') {
        const batchId = message.requestId
        const keys = chunkKeysOf(message.chunks)
        // A newer interaction wins: abort older batches so stale scroll
        // positions can never clog the queue behind the visible window.
        // Aborted batches report `dropped` so the UI pending set converges.
        for (const [otherId, controller] of batchControllers) {
            if (otherId < batchId) {
                try {
                    controller?.abort()
                } catch {
                    // Aborting is best-effort; staleness is also enforced below.
                }
                batchControllers.delete(otherId)
                const otherKeys = batchKeys.get(otherId) ?? []
                batchKeys.delete(otherId)
                postMessage({ type: 'chunks-dropped', requestId: otherId, keys: otherKeys })
            }
        }
        if (batchId < maxBatchId) {
            postMessage({ type: 'chunks-dropped', requestId: batchId, keys })
            return
        }
        maxBatchId = batchId
        const controller = createAbortController()
        packLog(`batch #${batchId}: ${message.chunks.length} chunk(s), abort=${controller !== null}`)
        batchControllers.set(batchId, controller)
        batchKeys.set(batchId, keys)
        // One message per chunk, never a batched blob: large postMessage
        // payloads risk silent drops between sandbox and iframe.
        const deliveries = message.chunks.map(async ({ style, category, names }) => {
            const chunkKey = `${style}/${category}`
            try {
                const icons = await loadChunk(style, category, names, controller?.signal)
                // Completed data always merges, even from a superseded batch:
                // it is valid and warms the cache for free.
                packLog(`ready #${batchId} ${chunkKey}: ${Object.keys(icons).length} icons`)
                postMessage({
                    type: 'chunks-ready',
                    requestId: batchId,
                    chunks: [{ style, category, icons }],
                })
            } catch (error) {
                if (controller?.signal.aborted || batchId < maxBatchId) {
                    postMessage({ type: 'chunks-dropped', requestId: batchId, keys: [chunkKey] })
                } else {
                    packLog(`failed #${batchId} ${chunkKey}:`, error)
                    postMessage({
                        type: 'chunks-failed',
                        requestId: batchId,
                        offline: error instanceof TypeError,
                    })
                }
            }
        })
        await Promise.allSettled(deliveries)
        batchControllers.delete(batchId)
        batchKeys.delete(batchId)
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
