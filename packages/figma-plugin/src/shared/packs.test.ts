import { describe, expect, it } from 'vitest'

import {
    canonicalName,
    categoriesFor,
    chunkKey,
    combineUrls,
    COMBINE_BATCH_SIZE,
    EMBEDDED_STYLE,
    expandBody,
    isStaleChunkKey,
    normalizeBody,
    splitCombined,
    SVG_CLOSE,
    SVG_OPEN,
} from './packs'

const SAMPLE_SVG =
    '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke-width="1.5" class="solar solar-heart-linear"><path d="M2 9" stroke="currentColor"/></svg>'

describe('figma icon packs', () => {
    it('normalizes a published SVG into a storable body', () => {
        expect(normalizeBody(SAMPLE_SVG)).toBe(
            '<path d="M2 9" stroke="currentColor"/>'
        )
    })

    it('expands a stored body back into a complete SVG document', () => {
        const body = '<path d="M4 12H20" stroke="currentColor"/>'
        expect(expandBody(body)).toBe(`${SVG_OPEN}${body}${SVG_CLOSE}`)
    })

    it('reads the canonical name back from the embedded class', () => {
        expect(canonicalName(SAMPLE_SVG)).toBe('heart')
        expect(
            canonicalName(
                '<svg class="solar solar-chat-square-unread-bold-duotone"><path d="M0 0"/></svg>'
            )
        ).toBe('chat-square-unread')
        expect(canonicalName('<svg><path d="M0 0"/></svg>')).toBeNull()
    })

    it('batches combine URLs under length limits, preserving order', () => {
        const names = Array.from({ length: COMBINE_BATCH_SIZE + 5 }, (_, index) => `icon-${index}`)
        const urls = combineUrls('https://cdn.jsdelivr.net', '2.3.2', 'bold', names)
        expect(urls).toHaveLength(2)
        expect(urls[0]).toContain('npm/@solar-icons/static@2.3.2/dist/icons/bold/icon-0.svg')
        expect(urls[0]).not.toContain('icon-40.svg')
        expect(urls[1]).toContain('icon-44.svg')
        for (const url of urls) expect(url.length).toBeLessThan(4000)
    })

    it('splits a combine response back into documents', () => {
        const combined = `${SAMPLE_SVG}\n${SAMPLE_SVG}`
        expect(splitCombined(combined)).toHaveLength(2)
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
