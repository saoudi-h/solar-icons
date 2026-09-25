import { afterEach, describe, expect, it, vi } from 'vitest'
import { getMainBarrelIconNames, getDynamicBarrelIconNames } from '../src/module'

// Vitest 5 requires `vi.mock` at the top level (v4 hoisted it silently).
// Hoisting manually preserves the exact v4 semantics; per-test error cases
// keep using `vi.doMock`, which remains allowed inside tests.
vi.mock('@solar-icons/vue', () => ({
  default: {},
  ArrowUpBoldIcon: {},
  HomeLinearIcon: {},
  SolarProvider: {},
  useSolar: () => ({}),
  IconBase: {},
  IconStyle: {},
}))

vi.mock('@solar-icons/vue/dynamic', () => ({
  default: {},
  ArrowUpIcon: {},
  HomeIcon: {},
}))

describe('getMainBarrelIconNames', () => {
  afterEach(() => {
    vi.resetModules()
    vi.clearAllMocks()
  })

  it('returns only icon names, excluding utilities and helpers', async () => {
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
