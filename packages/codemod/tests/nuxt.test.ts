import { describe, expect, it } from 'vitest'

import { transformNuxt } from '../src/transforms/nuxt.js'

describe('transformNuxt', () => {
    it('renames the Nuxt module prefix option', () => {
        const result = transformNuxt(`
export default defineNuxtConfig({
    modules: ['@solar-icons/nuxt'],
    solarIcons: {
        prefix: 'Solar',
        color: '#3b82f6',
    },
})
`)

        expect(result.code).toContain("namePrefix: 'Solar'")
        expect(result.code).not.toContain('prefix:')
    })

    it('reports the removed category alias without modifying the import', () => {
        const source = "import * as solar from '#solar-icons/category'"
        const result = transformNuxt(source, 'pages/index.vue')

        expect(result.code).toBe(source)
        expect(result.diagnostics).toMatchObject([
            {
                code: 'NUXT_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
                line: 1,
                column: 24,
            },
        ])
    })

    it('does not rename unrelated prefix options', () => {
        const source = 'export default defineNuxtConfig({ runtimeConfig: { prefix: "api" } })'

        expect(transformNuxt(source).code).toBe(source)
    })
})
