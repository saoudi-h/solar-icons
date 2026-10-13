export type ThemeMode = 'system' | 'light' | 'dark'
export type InsertionMode = 'instant' | 'selection'

export type PluginSettings = {
    insertionMode: InsertionMode
    iconSize: number
    strokeWidth: number
    theme: ThemeMode
}

export type IconInsertItem = {
    name: string
    svg: string
}

export type PackChunk = {
    style: string
    category: string
    icons: Record<string, string>
}

export type UiMessage =
    | { type: 'load-settings' }
    | { type: 'save-settings'; settings: PluginSettings }
    | { type: 'init-packs'; version: string }
    | {
          type: 'fetch-chunks'
          requestId: number
          /** True for the launch download: never aborted, never aborts. */
          background?: boolean
          chunks: { style: string; category: string; names: string[] }[]
      }
    | { type: 'get-storage-stats' }    | {
          type: 'insert-icons'
          items: IconInsertItem[]
          styleLabel: string
          supportsStrokeWidth: boolean
          iconSize: number
          strokeWidth: number
      }
    | { type: 'open-external'; url: string }
    | { type: 'resize-start' }
    | { type: 'resize-window'; width: number; height: number; offsetX: number; offsetY: number }
    | { type: 'resize-end' }

export type MainMessage =
    | { type: 'settings-loaded'; settings: PluginSettings }
    | { type: 'inserted'; count: number }
    | { type: 'error'; message: string }
    | { type: 'chunks-ready'; requestId: number; chunks: PackChunk[] }
    | { type: 'chunks-failed'; requestId: number; offline: boolean }
    | { type: 'chunks-dropped'; requestId: number; keys: string[] }
    | { type: 'storage-stats'; version: string; chunks: number; bytes: number }

export const DEFAULT_SETTINGS: PluginSettings = {
    insertionMode: 'instant',
    iconSize: 24,
    strokeWidth: 1.5,
    theme: 'system',
}
