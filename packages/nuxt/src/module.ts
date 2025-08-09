import { addComponent, addImports, addPlugin, addTypeTemplate, createResolver, defineNuxtModule } from '@nuxt/kit'
import type { IconWeight, SolarIconsConfig } from '@solar-icons/vue/lib'

export interface SolarNuxtModuleOptions extends Partial<SolarIconsConfig> {
  namePrefix?: string
  autoImport?: boolean
  provider?: boolean
}

async function getAllIconNames(): Promise<string[]> {
  try {
    const solarIcons = await import('@solar-icons/vue')
    const iconNames = Object.keys(solarIcons).filter(
      name =>
        name !== 'default'
        && name !== 'SolarProvider'
        && name !== 'SolarIcon'
        && name !== 'useSolar'
        && name !== 'createSolarIcons'
        && name !== 'SolarIconsPlugin'
        && !name.startsWith('use')
        && !name.startsWith('create')
        && !name.endsWith('Plugin')
        && !name.endsWith('Provider'),
    )
    return iconNames
  }
  catch (error) {
    console.error('Solar Icons: Error getting icon names:', error)
    return []
  }
}

export default defineNuxtModule<SolarNuxtModuleOptions>({
  meta: {
    name: '@solar-icons/nuxt',
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
    size: 24,
    weight: 'Linear' as IconWeight,
    mirrored: false,
  },
  async setup(options, nuxt) {
    const resolver = createResolver(import.meta.url)

    // Configuration des alias pour la résolution des modules
    nuxt.options.alias['#solar-icons'] = '@solar-icons/vue'
    nuxt.options.alias['#solar-icons/lib'] = '@solar-icons/vue/lib'

    addTypeTemplate({
      filename: 'types/solar-icons.d.ts',
      getContents: () => `
          // Types pour les alias Solar Icons
          declare module '#solar-icons' {
            export * from '@solar-icons/vue'
          }
          
          declare module '#solar-icons/lib' {
            export * from '@solar-icons/vue/lib'
          }
        `,
    })

    // Auto-import des icônes
    if (options.autoImport) {
      const iconNames = await getAllIconNames()
      iconNames.forEach((iconName) => {
        addComponent({
          name: `${options.namePrefix}${iconName}`,
          export: iconName,
          filePath: '@solar-icons/vue',
        })
      })
    }

    // Composants de base
    addComponent({
      name: 'SolarProvider',
      export: 'SolarProvider',
      filePath: '@solar-icons/vue/lib',
    })

    // Composable
    addImports({
      name: 'useSolar',
      from: '@solar-icons/vue/lib',
    })

    // Provider global
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
        src: await resolver.resolve('./runtime/plugin.ts'),
        mode: 'all',
      })
    }
  },
})
