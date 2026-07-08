import { afterEach, describe, expect, it, vi } from 'vitest'
import { getMainBarrelIconNames, getDynamicBarrelIconNames } from '../src/module'

describe('getMainBarrelIconNames', () => {
  afterEach(() => {
    vi.resetModules()
    vi.clearAllMocks()
  })

  it('returns only icon names, excluding utilities and helpers', async () => {
    vi.mock('@solar-icons/vue', () => ({
      default: {},
      ArrowUpBoldIcon: {},
      HomeLinearIcon: {},
      SolarProvider: {},
      useSolar: () => ({}),
      IconBase: {},
      IconStyle: {},
    }))

    const names = await getMainBarrelIconNames()
    expect(names.sort()).toEqual(['ArrowUpBoldIcon', 'HomeLinearIcon'])
  })

  it('handles import errors gracefully and returns empty array', async () => {
    vi.doMock('@solar-icons/vue', () => {
      throw new Error('import failed')
    })

    const names = await getMainBarrelIconNames()
    expect(names).toEqual([])
  })
})

describe('getDynamicBarrelIconNames', () => {
  afterEach(() => {
    vi.resetModules()
    vi.clearAllMocks()
  })

  it('returns dynamic icon names', async () => {
    vi.mock('@solar-icons/vue/dynamic', () => ({
      default: {},
      ArrowUpIcon: {},
      HomeIcon: {},
    }))

    const names = await getDynamicBarrelIconNames()
    expect(names.sort()).toEqual(['ArrowUpIcon', 'HomeIcon'])
  })

  it('handles import errors gracefully and returns empty array', async () => {
    vi.doMock('@solar-icons/vue/dynamic', () => {
      throw new Error('import failed')
    })

    const names = await getDynamicBarrelIconNames()
    expect(names).toEqual([])
  })
})
