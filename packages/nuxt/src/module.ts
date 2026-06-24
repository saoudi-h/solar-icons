import {
  addComponent,
  addImports,
  addTypeTemplate,
  createResolver,
  defineNuxtModule,
} from '@nuxt/kit'

export interface SolarNuxtModuleOptions {
  namePrefix?: string
  autoImport?: boolean
  color?: string
  size?: string | number
  strokeWidth?: number
}

export async function getAllIconNames(): Promise<string[]> {
  try {
    const solarIcons = await import('@solar-icons/vue')
    const iconNames = Object.keys(solarIcons).filter(
      name =>
        name !== 'default'
        && name !== 'IconBase'
        && name !== 'SolarProvider'
        && name !== 'useSolar'
        && name !== 'IconStyle'
        && name !== 'DynamicIcon',
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
    color: 'currentColor',
    size: 24,
    strokeWidth: 1.5,
  },
  async setup(options, nuxt) {
    const resolver = createResolver(import.meta.url)

    nuxt.options.alias['#solar-icons'] = '@solar-icons/vue'
    nuxt.options.alias['#solar-icons/lib'] = '@solar-icons/vue/lib'

    addTypeTemplate({
      filename: 'types/solar-icons.d.ts',
      getContents: () => `
          declare module '#solar-icons' {
            export * from '@solar-icons/vue'
          }
          
          declare module '#solar-icons/lib' {
            export * from '@solar-icons/vue/lib'
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
      filePath: '@solar-icons/vue/lib',
    })

    addImports({
      name: 'useSolar',
      from: '@solar-icons/vue/lib',
    })
  },
})
