import type { App, InjectionKey } from 'vue'
import { inject, provide, reactive } from 'vue'
import type { IconWeight, Numbrish, SolarIconContext, SolarIconsConfig } from './types'

/** Default configuration values. */
export const DEFAULT_SOLAR = {
    color: 'currentColor',
    size: '24',
    weight: 'Linear',
    mirrored: false,
} as const

/** Default context state. */
export const DEFAULT_CONTEXT: SolarIconContext = {
    config: DEFAULT_SOLAR,
    setConfig: () => {},
    setWeight: () => {},
    setSize: () => {},
    setColor: () => {},
}

export const SOLAR_ICONS_CONFIG_KEY: InjectionKey<SolarIconContext> =
    Symbol.for('solar-icons-config')

/**
 * Creates reactive context state and update methods.
 */
export function createSolarIcons(partial: SolarIconsConfig = {}) {
    const config = reactive<SolarIconsConfig>({
        ...DEFAULT_SOLAR,
        ...partial,
    })

    function setConfig(updates: SolarIconsConfig) {
        Object.assign(config, updates)
    }

    const setWeight = (weight: IconWeight) => {
        config.weight = weight
    }

    const setSize = (size: Numbrish) => {
        config.size = size
    }

    const setColor = (color: string) => {
        config.color = color
    }

    return {
        config,
        setConfig,
        setWeight,
        setSize,
        setColor,
    }
}

/**
 * Injects the configuration context.
 */
export function useSolar() {
    return inject(SOLAR_ICONS_CONFIG_KEY, DEFAULT_CONTEXT)
}

/**
 * Registers the configuration context on the app instance.
 */
export function provideSolarIconsContextInApp(
    app: App,
    context: ReturnType<typeof createSolarIcons>
) {
    app.provide(SOLAR_ICONS_CONFIG_KEY, context)
    return app
}

/**
 * Provides the configuration context to the component tree.
 */
export function provideSolarIconsContext(context: ReturnType<typeof createSolarIcons>) {
    provide(SOLAR_ICONS_CONFIG_KEY, context)
}
