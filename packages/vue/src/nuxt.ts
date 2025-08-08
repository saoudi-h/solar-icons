import { addComponent, addImports, addPlugin, createResolver, defineNuxtModule } from '@nuxt/kit'
import type { IconWeight, SolarIconsConfig } from './lib/types'

/**
 * Options for the Solar Nuxt module
 */
export interface SolarNuxtModuleOptions extends Partial<SolarIconsConfig> {
    /**
     * Prefix for auto-imported components
     * @default 'Solar'
     */
    namePrefix?: string

    /**
     * Auto-import all icons as components
     * @default true
     */
    autoImport?: boolean

    /**
     * Inject global provider automatically
     * @default true
     */
    provider?: boolean
}

/**
 * Retrieves all icon names from the Solar Icons package
 * @returns Array of icon names
 */
async function getAllIconNames(): Promise<string[]> {
    try {
        const solarIcons = await import('@solar-icons/vue')

        const iconNames = Object.keys(solarIcons).filter(
            name =>
                name !== 'default' &&
                name !== 'SolarProvider' &&
                name !== 'SolarIcon' &&
                name !== 'useSolarIcons' &&
                name !== 'createSolarIcons' &&
                name !== 'SolarIconsPlugin' &&
                !name.startsWith('use') &&
                !name.startsWith('create') &&
                !name.endsWith('Plugin') &&
                !name.endsWith('Provider')
        )

        return iconNames
    } catch (error) {
        console.error('Solar Icons: Error getting icon names:', error)
        return []
    }
}

export default defineNuxtModule<SolarNuxtModuleOptions>({
    meta: {
        name: 'solar-icons',
        configKey: 'solarIcons',
        compatibility: {
            nuxt: '>=3.0.0',
        },
    },
    defaults: {
        namePrefix: 'Solar',
        autoImport: true,
        provider: true,
        color: 'currentColor',
        size: '24',
        weight: 'Linear' as IconWeight,
        mirrored: false,
    },
    async setup(options: SolarNuxtModuleOptions, nuxt) {
        const resolver = createResolver(import.meta.url)

        const packageName = '@solar-icons/vue'

        if (options.autoImport) {
            const iconNames = await getAllIconNames()

            iconNames.forEach(iconName => {
                addComponent({
                    name: `${options.namePrefix}${iconName}`,
                    export: iconName,
                    filePath: packageName,
                })
            })
        }

        addComponent({
            name: 'SolarIcon',
            export: 'SolarIcon',
            filePath: `${packageName}/lib`,
        })

        addComponent({
            name: 'SolarProvider',
            export: 'SolarProvider',
            filePath: `${packageName}/lib`,
        })

        if (options.provider) {
            nuxt.options.runtimeConfig.public.solarIcons = {
                config: {
                    color: options.color,
                    size: options.size,
                    weight: options.weight,
                    mirrored: options.mirrored,
                },
            }

            addPlugin({
                src: await resolver.resolve('./runtime/plugin.mjs'),
                mode: 'all',
            })
        }

        addImports({
            name: 'useSolarIcons',
            from: `${packageName}/lib`,
        })
    },
})
