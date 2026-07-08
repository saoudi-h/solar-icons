import { inject, ref, type App, type Ref } from 'vue'
import { SOLAR_CONTEXT_KEY } from './context-key'

export interface SolarIconsConfig {
    color?: string
    size?: string | number
    strokeWidth?: number
    secondaryColor?: string
    secondaryOpacity?: number
}

export interface SolarState {
    color: Ref<string | undefined>
    setColor: (val: string) => void
    size: Ref<string | number | undefined>
    setSize: (val: string | number) => void
    strokeWidth: Ref<number | undefined>
    setStrokeWidth: (val: number) => void
    secondaryColor: Ref<string | undefined>
    setSecondaryColor: (val: string) => void
    secondaryOpacity: Ref<number | undefined>
    setSecondaryOpacity: (val: number) => void
}

export function createSolarIcons(config: SolarIconsConfig = {}): SolarState {
    const color = ref(config.color)
    const size = ref(config.size)
    const strokeWidth = ref(config.strokeWidth)
    const secondaryColor = ref(config.secondaryColor)
    const secondaryOpacity = ref(config.secondaryOpacity)

    return {
        color,
        setColor: (val: string) => {
            color.value = val
        },
        size,
        setSize: (val: string | number) => {
            size.value = val
        },
        strokeWidth,
        setStrokeWidth: (val: number) => {
            strokeWidth.value = val
        },
        secondaryColor,
        setSecondaryColor: (val: string) => {
            secondaryColor.value = val
        },
        secondaryOpacity,
        setSecondaryOpacity: (val: number) => {
            secondaryOpacity.value = val
        },
    }
}

export function provideSolarIconsContextInApp(app: App, state: SolarState): void {
    app.provide(SOLAR_CONTEXT_KEY, state)
}

export function useSolar(): SolarState {
    const ctx = inject<SolarState>(SOLAR_CONTEXT_KEY)
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>')
    return ctx
}

export interface SolarIconsPlugin {
    install(app: App, options?: SolarIconsConfig): void
}

export const SolarIconsPlugin: SolarIconsPlugin = {
    install(app: App, options: SolarIconsConfig = {}) {
        const state = createSolarIcons(options)
        provideSolarIconsContextInApp(app, state)
    },
}
