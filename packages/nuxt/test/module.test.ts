/* eslint-disable @typescript-eslint/no-explicit-any */
import { afterEach, describe, expect, it, vi } from 'vitest'
import Module from '../src/module'

// Mock @nuxt/kit APIs used by the module
vi.mock('@nuxt/kit', () => ({
  addComponent: vi.fn(),
  addImports: vi.fn(),
  addPlugin: vi.fn(),
  addTypeTemplate: vi.fn(),
  createResolver: () => ({ resolve: async (p: string) => p }),
  defineNuxtModule: (def: any) => def,
}))

const kit = await import('@nuxt/kit')

describe('Nuxt module defaults and setup', () => {
  afterEach(() => {
    vi.clearAllMocks()
  })

  it('exposes expected defaults', () => {
    // @ts-expect-error defaults does not exist on type 'typeof Module'
    expect(Module.defaults).toMatchObject({
      namePrefix: 'Solar',
      autoImport: true,
      provider: true,
      color: 'currentColor',
      size: 24,
      weight: 'Linear',
      mirrored: false,
    })
  })

  it('registers aliases, type templates, provider and composables', async () => {
    const nuxt: any = { options: { alias: {}, runtimeConfig: { public: {} } } }

    // Avoid dynamic imports of the full icon set by mocking getAllIconNames to a tiny list
    vi.doMock('../src/module', async (orig) => {
      const original: any = await orig()
      return { ...original, getAllIconNames: async () => ['ArrowUp'] }
    })

    // Re-import module to pick up the mock above
    const ReModule = (await import('../src/module')).default as any

    await ReModule.setup(
      {
        namePrefix: 'Solar',
        autoImport: true,
        provider: true,
        color: 'red',
        size: 16,
        weight: 'Bold',
        mirrored: true,
      },
      nuxt,
    )

    expect(nuxt.options.alias['#solar-icons']).toBe('@solar-icons/vue')
    expect(nuxt.options.alias['#solar-icons/lib']).toBe('@solar-icons/vue/lib')
    expect(nuxt.options.alias['#solar-icons/category']).toBe('@solar-icons/vue/category')

    expect(kit.addTypeTemplate).toHaveBeenCalled()
    expect(kit.addComponent).toHaveBeenCalledWith(
      expect.objectContaining({
        name: 'SolarArrowUp',
        export: 'ArrowUp',
        filePath: '@solar-icons/vue',
      }),
    )
    expect(kit.addComponent).toHaveBeenCalledWith(
      expect.objectContaining({
        name: 'SolarProvider',
        export: 'SolarProvider',
        filePath: '@solar-icons/vue/lib',
      }),
    )
    expect(kit.addImports).toHaveBeenCalledWith(
      expect.objectContaining({ name: 'useSolar', from: '@solar-icons/vue/lib' }),
    )
    expect(kit.addPlugin).toHaveBeenCalled()

    expect(nuxt.options.runtimeConfig.public.solarIcons.config).toEqual({
      color: 'red',
      size: 16,
      weight: 'Bold',
      mirrored: true,
    })
  })

  it('skips auto-import when disabled and does not inject provider when disabled', async () => {
    const nuxt: any = { options: { alias: {}, runtimeConfig: { public: {} } } }
    const ReModule = (await import('../src/module')).default as any

    await ReModule.setup({ autoImport: false, provider: false }, nuxt)

    expect(kit.addComponent).not.toHaveBeenCalledWith(
      expect.objectContaining({ filePath: '@solar-icons/vue' }),
    )
    expect(kit.addPlugin).not.toHaveBeenCalled()
    expect(nuxt.options.runtimeConfig.public.solarIcons).toBeUndefined()
  })
})
