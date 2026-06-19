import { describe, it, expect, beforeEach } from 'vitest'
import {
    parseSvgs,
    forEachIcon,
    forEachIconGroupedBy,
    loadIcon,
    clearCache,
} from './parser'

describe('parseSvgs', () => {
    beforeEach(() => {
        clearCache()
    })

    it('reads svgs/ and returns icons + groups', async () => {
        const result = await parseSvgs()
        expect(result.icons.length).toBeGreaterThan(7000)
        expect(result.groups.length).toBeGreaterThan(1000)
        expect(result.groups.length).toBe(result.icons.length / 6)
    })

    it('throws when svgsDir does not exist', async () => {
        await expect(parseSvgs({ svgsDir: '/nonexistent' })).rejects.toThrow(
            'svgs directory not found'
        )
    })
})

describe('ParsedIcon normalization', () => {
    let result: Awaited<ReturnType<typeof parseSvgs>>

    beforeAll(async () => {
        result = await parseSvgs()
    })

    it('sets kebabName and pascalName', () => {
        const icon = result.icons.find(i => i.name === 'arrow-down')!
        expect(icon.kebabName).toBe('arrow-down')
        expect(icon.pascalName).toBe('ArrowDown')
    })

    it('maps all styles to valid kebab-case styleKebab', () => {
        const expected: Record<string, string> = {
            Bold: 'bold',
            BoldDuotone: 'bold-duotone',
            Broken: 'broken',
            Linear: 'linear',
            LineDuotone: 'line-duotone',
            Outline: 'outline',
        }
        const styles = new Set(result.icons.map(i => i.style))
        for (const style of styles) {
            const icons = result.icons.filter(i => i.style === style)
            for (const icon of icons) {
                expect(icon.styleKebab).toBe(expected[style])
            }
        }
    })

    it('strips XML declaration, SVG wrapper, empty rect, title, default stroke-width', () => {
        for (const icon of result.icons.slice(0, 100)) {
            expect(icon.inner).not.toContain('<?xml')
            expect(icon.inner).not.toContain('<svg')
            expect(icon.inner).not.toContain('</svg>')
            expect(icon.inner).not.toContain('<title>')
            expect(icon.inner).not.toContain('stroke-width="1.5"')
            expect(icon.inner).not.toContain("stroke-width='1.5'")
        }
    })

    it('replaces hex colors with currentColor', () => {
        for (const icon of result.icons.slice(0, 100)) {
            expect(icon.inner).not.toMatch(/"#[0-9a-f]{6}"/i)
        }
    })

    it('generates base64 preview', () => {
        for (const icon of result.icons.slice(0, 10)) {
            expect(icon.preview).toBeTruthy()
            expect(() => Buffer.from(icon.preview, 'base64').toString()).not.toThrow()
        }
    })

    it('does not generate preview when preview: false', async () => {
        clearCache()
        const r = await parseSvgs({ preview: false })
        const first = r.icons[0]!
        expect(first.preview).toBe('')
    })
})

describe('Duotone extraction', () => {
    let result: Awaited<ReturnType<typeof parseSvgs>>

    beforeAll(async () => {
        result = await parseSvgs()
    })

    it('extracts duotone accent path from BoldDuotone icons', () => {
        const duotone = result.icons.filter(i => i.style === 'BoldDuotone')
        const withAccent = duotone.filter(i => i.duotoneAccentInner !== null)
        expect(withAccent.length).toBeGreaterThan(0)
        for (const icon of withAccent) {
            expect(icon.duotoneAccentInner).toContain('opacity="0.5"')
        }
        // Note: icons with <g opacity="0.5"> wrappers may still have
        // opacity in inner — the DUOTONE_ACCENT_REGEX only matches
        // standalone <path opacity="0.5" /> patterns.
    })

    it('extracts duotone accent path from LineDuotone icons', () => {
        const duotone = result.icons.filter(i => i.style === 'LineDuotone')
        const withAccent = duotone.filter(i => i.duotoneAccentInner !== null)
        expect(withAccent.length).toBeGreaterThan(0)
    })

    it('does not have duotone accent for non-duotone styles', () => {
        const nonDuotone = result.icons.filter(
            i => i.style !== 'BoldDuotone' && i.style !== 'LineDuotone'
        )
        for (const icon of nonDuotone.slice(0, 100)) {
            expect(icon.duotoneAccentInner).toBeNull()
        }
    })

    it('replaces hex colors in duotone accent', () => {
        const duotone = result.icons.filter(
            i => i.style === 'BoldDuotone' && i.duotoneAccentInner !== null
        )
        for (const icon of duotone.slice(0, 50)) {
            expect(icon.duotoneAccentInner!).not.toMatch(/"#[0-9a-f]{6}"/i)
        }
    })
})

describe('Integrity check', () => {
    beforeEach(() => {
        clearCache()
    })

    it('all logical icons have 6 styles', async () => {
        const result = await parseSvgs()
        expect(result.icons.length % 6).toBe(0)
        expect(result.icons.length / 6).toBe(result.groups.length)
    })

    it('guards against parseSvgs not called before iteration', async () => {
        clearCache()
        await expect(forEachIcon(async () => {})).rejects.toThrow('cache is empty')
        await expect(forEachIconGroupedBy(async () => {})).rejects.toThrow(
            'cache is empty'
        )
    })
})

describe('Cache lifecycle', () => {
    beforeEach(() => {
        clearCache()
    })

    it('loadIcon returns cached icon after parseSvgs', async () => {
        await parseSvgs()
        const icon = loadIcon('arrows', 'Bold', 'arrow-down')
        expect(icon.name).toBe('arrow-down')
        expect(icon.category).toBe('arrows')
        expect(icon.style).toBe('Bold')
    })

    it('loadIcon throws when icon not cached', () => {
        expect(() => loadIcon('arrows', 'Bold', 'nonexistent')).toThrow(
            'icon not found in cache'
        )
    })

    it('clearCache invalidates the cache', async () => {
        await parseSvgs()
        expect(() => loadIcon('arrows', 'Bold', 'arrow-down')).not.toThrow()
        clearCache()
        expect(() => loadIcon('arrows', 'Bold', 'arrow-down')).toThrow(
            'icon not found in cache'
        )
    })
})

describe('Iteration modes', () => {
    let result: Awaited<ReturnType<typeof parseSvgs>>

    beforeAll(async () => {
        result = await parseSvgs()
    })

    it('forEachIcon iterates all icons', async () => {
        const collected: string[] = []
        await forEachIcon(ctx => {
            collected.push(`${ctx.icon.category}/${ctx.icon.style}/${ctx.icon.name}`)
        })
        expect(collected.length).toBe(result.icons.length)
        expect(collected).toContain('arrows/Bold/arrow-down')
    })

    it('forEachIcon has correct index/total context', async () => {
        const indices: number[] = []
        const totals: number[] = []
        await forEachIcon(ctx => {
            indices.push(ctx.index)
            totals.push(ctx.total)
        })
        expect(indices[0]).toBe(0)
        expect(indices[indices.length - 1]).toBe(result.icons.length - 1)
        totals.forEach(t => expect(t).toBe(result.icons.length))
    })

    it('forEachIconGroupedBy iterates all groups', async () => {
        const collected: string[] = []
        await forEachIconGroupedBy(ctx => {
            collected.push(`${ctx.icon.category}/${ctx.icon.name}`)
        })
        expect(collected.length).toBe(result.groups.length)
    })

    it('each group has all 6 styles', async () => {
        await forEachIconGroupedBy(ctx => {
            const styles = Object.keys(ctx.icon.styles)
            expect(styles.length).toBe(6)
            for (const s of ['Bold', 'BoldDuotone', 'Broken', 'Linear', 'LineDuotone', 'Outline']) {
                expect(ctx.icon.styles[s as keyof typeof ctx.icon.styles]).toBeDefined()
            }
        })
    })
})
