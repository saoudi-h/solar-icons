/* eslint-disable @typescript-eslint/no-explicit-any */
import { afterEach, describe, expect, it, vi } from 'vitest'
import Module from '../src/module'

vi.mock('@nuxt/kit', () => ({
  addComponent: vi.fn(),
  addImports: vi.fn(),
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
    })
    // @ts-expect-error defaults does not exist on type 'typeof Module'
    expect(Module.defaults.color).toBeUndefined()
    // @ts-expect-error defaults does not exist on type 'typeof Module'
    expect(Module.defaults.size).toBeUndefined()
    // @ts-expect-error defaults does not exist on type 'typeof Module'
    expect(Module.defaults.strokeWidth).toBeUndefined()
  })

  it('registers aliases, type templates and composables', { timeout: 30000 }, async () => {
    const nuxt: any = { options: { alias: {} } }

    await Module.setup(
      {
        namePrefix: 'Solar',
        autoImport: true,
      },
      nuxt,
    )

    expect(nuxt.options.alias['#solar-icons']).toBe('@solar-icons/vue')
    expect(nuxt.options.alias['#solar-icons/lib']).toBe('@solar-icons/vue/lib')
    expect(kit.addTypeTemplate).toHaveBeenCalled()
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
  })

  it('skips auto-import when disabled', async () => {
    const nuxt: any = { options: { alias: {} } }

    await Module.setup({ autoImport: false }, nuxt)

    expect(kit.addComponent).not.toHaveBeenCalledWith(
      expect.objectContaining({ filePath: '@solar-icons/vue' }),
    )
    expect(kit.addComponent).not.toHaveBeenCalledWith(
      expect.objectContaining({ filePath: '@solar-icons/vue/dynamic' }),
    )
  })
})
