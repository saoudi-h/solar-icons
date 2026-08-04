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

export type UiMessage =
    | { type: 'load-settings' }
    | { type: 'save-settings'; settings: PluginSettings }
    | {
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

export const DEFAULT_SETTINGS: PluginSettings = {
    insertionMode: 'instant',
    iconSize: 24,
    strokeWidth: 1.5,
    theme: 'system',
}
