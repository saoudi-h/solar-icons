import { $fetch, setup } from '@nuxt/test-utils/e2e'
import { fileURLToPath } from 'node:url'
import { describe, expect, it } from 'vitest'

describe('Auto-import integration', async () => {
  await setup({
    rootDir: fileURLToPath(new URL('../fixtures/basic', import.meta.url)),
    server: true,
    browser: false,
  })

  it('renders page with fixture and server is healthy', async () => {
    const html = await $fetch('/')
    expect(html).toContain('basic')
  })
})
