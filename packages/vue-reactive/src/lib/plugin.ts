import type { App } from 'vue'
import { createSolarIcons, SOLAR_ICONS_CONFIG_KEY } from './context'
import type { SolarIconsConfig } from './types'

/**
 * Interface for the Solar Icons plugin
 */
export interface SolarIconsPlugin {
    /**
     * Installs the Solar Icons plugin into a Vue application
     * @param app The Vue application instance
     * @param options Configuration options for the plugin
     */
    install(app: App, options?: Partial<SolarIconsConfig>): void
}

/**
 * Vue plugin for Solar Icons
 */
export const SolarIconsPlugin: SolarIconsPlugin = {
    /**
     * Installs the plugin and provides the Solar Icons context to the application
     * @param app The Vue application instance
     * @param options Configuration options for the plugin
     */
    install(app: App, options: Partial<SolarIconsConfig> = {}) {
        const solarContext = createSolarIcons(options)
        app.provide(SOLAR_ICONS_CONFIG_KEY, solarContext)
    },
}
