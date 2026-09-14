import { describe, expect, it } from 'vitest'

import { catalogStats, loadDescriptions, STYLES } from '../src/catalog.js'
import { searchCatalog } from '../src/search.js'

describe('cli catalog', () => {
    it('loads 1379 icons', () => {
        const descs = loadDescriptions()
        expect(descs.length).toBe(1379)
    })
    it('stats', () => {
        const s = catalogStats()
        expect(s.icons).toBe(1379)
        expect(s.styles).toBe(6)
        expect(s.variations).toBe(8274)
        expect(s.categories).toBeGreaterThan(30)
    })
    it('search home', () => {
        const descs = loadDescriptions()
        const res = searchCatalog(descs, { query: 'home', limit: 5 })
        expect(res[0].name).toBe('home')
        expect(res.length).toBeLessThanOrEqual(5)
    })
    it('styles list', () => {
        expect(STYLES).toContain('linear')
        expect(STYLES).toHaveLength(6)
    })
})
