import { afterEach, describe, expect, it, vi } from 'vitest'
import { getAllIconNames } from '../src/module'

describe('getAllIconNames', () => {
  afterEach(() => {
    vi.resetModules()
    vi.clearAllMocks()
  })

  it('returns only icon names, excluding utilities and helpers', async () => {
    vi.mock('@solar-icons/vue', () => ({
      default: {},
      ArrowUp: {},
      Home: {},
      SolarProvider: {},
      useSolar: () => ({}),
      createSolarIcons: () => ({}),
      SolarIconsPlugin: {},
      SomeProvider: {},
      useSomething: () => ({}),
      createSomething: () => ({}),
    }))

    const names = await getAllIconNames()
    expect(names.sort()).toEqual(['ArrowUp', 'Home'])
  })

  it('handles import errors gracefully and returns empty array', async () => {
    vi.doMock('@solar-icons/vue', () => {
      throw new Error('import failed')
    })

    const names = await getAllIconNames()
    expect(names).toEqual([])
  })
})
