import { describe, expect, it } from 'vitest'

import { catalogStats, loadDescriptions, resolveIconName, STYLES } from '../src/catalog.js'
import { searchCatalog } from '../src/search.js'

describe('cli catalog', () => {
    it('loads 1451 icons', () => {
        const descs = loadDescriptions()
        expect(descs.length).toBe(1451)
    })
    it('stats', () => {
        const s = catalogStats()
        expect(s.icons).toBe(1451)
        expect(s.styles).toBe(6)
        expect(s.variations).toBe(8706)
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
    it('resolves canonical names directly', () => {
        const descs = loadDescriptions()
        const { entry, alias } = resolveIconName(descs, 'chart-square-2')
        expect(entry.name).toBe('chart-square-2')
        expect(alias).toBeUndefined()
    })
    it('redirects deprecated aliases to canonical entries', () => {
        const descs = loadDescriptions()
        const { entry, alias } = resolveIconName(descs, 'chat-square-2')
        expect(entry.name).toBe('chart-square-2')
        expect(alias?.name).toBe('chat-square-2')
        expect(alias?.reason).toContain('typo')
    })
    it('throws on unknown names', () => {
        const descs = loadDescriptions()
        expect(() => resolveIconName(descs, 'no-such-icon-xyz')).toThrow(
            `icon 'no-such-icon-xyz' not found.`
        )
    })
    it('search surfaces alias matches as canonical entries', () => {
        const descs = loadDescriptions()
        const res = searchCatalog(descs, { query: 'chat-square-2', limit: 5 })
        expect(res[0].name).toBe('chart-square-2')
        expect(res[0].matchedAlias).toBe('chat-square-2')
    })
})
