import {
    DEFAULT_SETTINGS,
    type IconInsertItem,
    type MainMessage,
    type PluginSettings,
    type UiMessage,
} from '../shared/messages'

const SETTINGS_KEY = 'settings'
let resizeStartPosition: Vector | null = null

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

    if (message.type === 'insert-icons') {
        await insertIcons(message)
        return
    }

    if (message.type === 'open-external' && isAllowedExternalUrl(message.url)) {
        figma.openExternal(message.url)
    }
}
