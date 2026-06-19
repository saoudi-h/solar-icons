import {
  addComponent,
  addImports,
  addPlugin,
  addTypeTemplate,
  createResolver,
  defineNuxtModule,
} from '@nuxt/kit'
import type { IconWeight, SolarIconsConfig } from '@solar-icons/vue-reactive/lib'

export interface SolarNuxtModuleOptions extends Partial<SolarIconsConfig> {
  namePrefix?: string
  autoImport?: boolean
}

export async function getAllIconNames(): Promise<string[]> {
  try {
    const solarIcons = await import('@solar-icons/vue')
    const iconNames = Object.keys(solarIcons).filter(
      name =>
        name !== 'default'
        && name !== 'solar'
        && name !== 'IconStyle',
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

    nuxt.options.alias['#solar-icons'] = '@solar-icons/vue'
    nuxt.options.alias['#solar-icons/lib'] = '@solar-icons/vue/lib'
    nuxt.options.alias['#solar-icons/category'] = '@solar-icons/vue/category'
    nuxt.options.alias['#solar-icons/reactive'] = '@solar-icons/vue-reactive'
    nuxt.options.alias['#solar-icons/reactive/lib'] = '@solar-icons/vue-reactive/lib'

    addTypeTemplate({
      filename: 'types/solar-icons.d.ts',
      getContents: () => `
          declare module '#solar-icons' {
            export * from '@solar-icons/vue'
          }
          
          declare module '#solar-icons/lib' {
            export * from '@solar-icons/vue/lib'
          }
          
          declare module '#solar-icons/category' {
            export * from '@solar-icons/vue/category'
          }
          
          declare module '#solar-icons/reactive' {
            export * from '@solar-icons/vue-reactive'
          }

          declare module '#solar-icons/reactive/lib' {
            export * from '@solar-icons/vue-reactive/lib'
          }
        `,
    })

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

    addComponent({
      name: 'SolarProvider',
      export: 'SolarProvider',
      filePath: '@solar-icons/vue-reactive/lib',
    })

    addImports({
      name: 'useSolar',
      from: '@solar-icons/vue-reactive/lib',
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
        src: await resolver.resolve('./runtime/plugin'),
        mode: 'all',
      })
    }
  },
})
