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
}

export async function getMainBarrelIconNames(): Promise<string[]> {
  try {
    const solarIcons = await import('@solar-icons/vue')
    return Object.keys(solarIcons).filter(
      name =>
        name !== 'default'
        && name !== 'IconBase'
        && name !== 'SolarProvider'
        && name !== 'useSolar'
        && name !== 'IconStyle',
    )
  }
  catch (error) {
    console.error('Solar Icons: Error loading main barrel:', error)
    return []
  }
}

export async function getDynamicBarrelIconNames(): Promise<string[]> {
  try {
    const dynamicIcons = await import('@solar-icons/vue/dynamic')
    return Object.keys(dynamicIcons).filter(name => name !== 'default')
  }
  catch (error) {
    console.error('Solar Icons: Error loading dynamic barrel:', error)
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
  },
  async setup(options, nuxt) {
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
      const mainIcons = await getMainBarrelIconNames()
      mainIcons.forEach((iconName) => {
        addComponent({
          name: `${options.namePrefix}${iconName}`,
          export: iconName,
          filePath: '@solar-icons/vue',
        })
      })

      const dynamicIcons = await getDynamicBarrelIconNames()
      dynamicIcons.forEach((iconName) => {
        addComponent({
          name: `${options.namePrefix}${iconName}`,
          export: iconName,
          filePath: '@solar-icons/vue/dynamic',
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
