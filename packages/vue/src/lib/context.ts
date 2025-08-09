import type { App, InjectionKey } from 'vue'
import { inject, provide, reactive } from 'vue'
import type { IconWeight, Numbrish, SolarIconContext, SolarIconsConfig } from './types'

/**
 * Default configuration for Solar icons
 */
export const DEFAULT_SOLAR = {
    color: 'currentColor',
    size: '24',
    weight: 'Linear',
    mirrored: false,
} as const

/**
 * Default context for Solar icons
 */
export const DEFAULT_CONTEXT: SolarIconContext = {
    config: DEFAULT_SOLAR,
    setConfig: () => {},
    setWeight: () => {},
    setSize: () => {},
    setColor: () => {},
}

export const SOLAR_ICONS_CONFIG_KEY: InjectionKey<SolarIconContext> = Symbol.for('solar-icons-config')

/**
 * Creates a reactive configuration for Solar icons
 * @param partial - Partial configuration to override default values
 * @returns An object containing the configuration and methods to update it
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
 * Injects the Solar icons context
 * @returns The Solar icons context
 */
export function useSolar() {
    return inject(SOLAR_ICONS_CONFIG_KEY, DEFAULT_CONTEXT)
}

/**
 * Provides the Solar icons context to a Vue application
 * @param app - The Vue application instance
 * @param context - The Solar icons context to provide
 * @returns The Vue application instance
 */
export function provideSolarIconsContextInApp(
    app: App,
    context: ReturnType<typeof createSolarIcons>
) {
    app.provide(SOLAR_ICONS_CONFIG_KEY, context)
    return app
}

/**
 * Provides the Solar icons context using the Composition API
 * @param context - The Solar icons context to provide
 */
export function provideSolarIconsContext(context: ReturnType<typeof createSolarIcons>) {
    provide(SOLAR_ICONS_CONFIG_KEY, context)
}
