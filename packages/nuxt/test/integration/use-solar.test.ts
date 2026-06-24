import { $fetch, setup } from '@nuxt/test-utils/e2e'
import { fileURLToPath } from 'node:url'
import { describe, expect, it } from 'vitest'

describe('useSolar reactivity', async () => {
  await setup({
    rootDir: fileURLToPath(new URL('../fixtures/basic', import.meta.url)),
    server: true,
    browser: false,
  })

  it('plugin provides default config via useSolar', async () => {
    const html = await $fetch('/')
    expect(html).toContain('basic')
  })
})
