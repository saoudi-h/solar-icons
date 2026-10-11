import { describe, expect, it } from 'vitest'

import {
    categoriesFor,
    chunkKey,
    EMBEDDED_STYLE,
    expandBody,
    isStaleChunkKey,
    packUrl,
    SVG_CLOSE,
    SVG_OPEN,
} from './packs'

describe('figma icon packs', () => {
    it('expands a stored body back into a complete SVG document', () => {
        const body = '<path d="M4 12H20" stroke="currentColor"/>'
        expect(expandBody(body)).toBe(`${SVG_OPEN}${body}${SVG_CLOSE}`)
    })

    it('addresses immutable versioned pack URLs on the CDN', () => {
        expect(
            packUrl(
                'https://cdn.jsdelivr.net/npm/@solar-icons/static@2.3.2',
                'bold-duotone',
                'arrows'
            )
        ).toBe(
            'https://cdn.jsdelivr.net/npm/@solar-icons/static@2.3.2/dist/figma/bold-duotone-arrows.json'
        )
    })

    it('uses a dev server root verbatim', () => {
        expect(packUrl('http://localhost:8080', 'bold', 'arrows')).toBe(
            'http://localhost:8080/dist/figma/bold-arrows.json'
        )
    })

    it('namespaces cache keys by catalog version', () => {
        expect(chunkKey('2.3.2', 'linear', 'arrows')).toBe('solar:pack:2.3.2:linear:arrows')
        expect(isStaleChunkKey('solar:pack:2.3.1:linear:arrows', '2.3.2')).toBe(true)
        expect(isStaleChunkKey('solar:pack:2.3.2:linear:arrows', '2.3.2')).toBe(false)
        expect(isStaleChunkKey('settings', '2.3.2')).toBe(false)
    })

    it('bundles linear and fetches the rest', () => {
        expect(EMBEDDED_STYLE).toBe('linear')
    })

    it('collects viewed categories for targeted fetching', () => {
        const categoryOf = (name: string) =>
            ({ home: 'home', heart: 'like', 'arrow-up': 'arrows' })[name]
        expect(categoriesFor(['heart', 'home', 'heart', 'unknown'], categoryOf)).toEqual([
            'home',
            'like',
        ])
    })
})
