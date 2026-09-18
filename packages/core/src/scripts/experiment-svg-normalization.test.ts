import { describe, expect, it } from 'vitest'

import {
    convertPrimitivesToPaths,
    extractPathRecords,
    layerMarkup,
    parseSource,
    splitTones,
} from './experiment-svg-normalization'

describe('local SVG normalization', () => {
    it('converts supported primitives without changing their paint attributes', () => {
        const converted = convertPrimitivesToPaths(`
            <svg viewBox="0 0 24 24">
                <circle cx="12" cy="12" r="5" stroke="#1C274C" stroke-width="1.5" />
                <rect x="2" y="3" width="8" height="6" fill="none" stroke="#1C274C" />
            </svg>
        `)

        expect(converted).not.toContain('<circle')
        expect(converted).not.toContain('<rect')
        expect(converted).toContain('<path')
        expect(converted).toContain('stroke="#1C274C"')
        expect(converted).toContain('stroke-width="1.5"')
        expect(extractPathRecords(converted)).toHaveLength(2)
    })

    it('drops only a rotation around a circle centre', () => {
        const converted = convertPrimitivesToPaths(`
            <svg viewBox="0 0 24 24">
                <circle cx="12" cy="5" r="1" transform="rotate(90 12 5)" />
                <circle cx="12" cy="12" r="1" transform="rotate(90 0 0)" />
            </svg>
        `)

        const records = extractPathRecords(converted)
        expect(records[0]?.transform).toBe('none')
        expect(records[1]?.transform).toBe('rotate(90 0 0)')
    })

    it('merges only adjacent strokes with an identical style signature', () => {
        const records = extractPathRecords(`
            <svg viewBox="0 0 24 24">
                <path d="M 1 1 L 2 2" stroke="#1C274C" stroke-width="1.5" />
                <path d="m 4 4 l 1 1" stroke="#1C274C" stroke-width="1.5" />
                <path d="M 8 8 L 9 9" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round" />
            </svg>
        `)

        const result = layerMarkup(records, 'stroke-merged')

        expect(result.mergedStrokeGroupCount).toBe(1)
        expect(result.unmergedStrokeCount).toBe(1)
        expect(result.styleConflictCount).toBe(1)
        expect(result.strokePathCount).toBe(2)
        expect(result.markup).toContain('M 1 1 L 2 2 M 4 4 l 1 1')
        expect(result.markup).toContain('stroke-linecap="round"')
        expect(result.markup).toContain('stroke-width="1.5"')
    })

    it('ignores linecap differences when the affected subpaths are closed', () => {
        const records = extractPathRecords(`
            <svg viewBox="0 0 24 24">
                <path d="M 2 2 H 6 V 6 H 2 Z" stroke="#1C274C" stroke-linecap="butt" />
                <path d="M 8 8 H 12 V 12 H 8 Z" stroke="#1C274C" stroke-linecap="round" />
                <path d="M 14 14 H 18" stroke="#1C274C" stroke-linecap="round" />
            </svg>
        `)

        const result = layerMarkup(records, 'stroke-merged')

        expect(records[0]?.closed).toBe(true)
        expect(records[1]?.closed).toBe(true)
        expect(result.mergedStrokeGroupCount).toBe(1)
        expect(result.styleConflictCount).toBe(0)
        expect(result.strokePathCount).toBe(1)
        expect(result.markup).toContain('stroke-linecap="round"')
    })

    it('keeps duotone layers separate', () => {
        const root = parseSource(`
            <svg viewBox="0 0 24 24">
                <path d="M 2 2 L 4 4" stroke="#1C274C" />
                <g opacity="0.5">
                    <circle cx="12" cy="12" r="2" stroke="#1C274C" />
                </g>
            </svg>
        `)

        const split = splitTones(root)

        expect(split.unsupported).toEqual([])
        expect(split.primary).toHaveLength(1)
        expect(split.accent).toHaveLength(1)
    })

    it('reports opacity values that cannot be represented by the two-tone model', () => {
        const split = splitTones(
            parseSource(`
                <svg viewBox="0 0 24 24">
                    <path d="M 2 2 L 4 4" stroke="#1C274C" opacity="0.25" />
                </svg>
            `)
        )

        expect(split.unsupported).toContain('non-standard opacity')
    })
})
