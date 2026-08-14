import { describe, expect, it } from 'vitest'
import { buildAliasMap } from './codegen'
import type { IconDescription } from './types'

const descriptions: IconDescription[] = [
    { name: 'plus', category: 'call', categoryTags: ['add'], tags: ['plus'] },
    { name: 'close', category: 'call', categoryTags: ['close'], tags: ['x'] },
    {
        name: 'circle',
        category: 'call',
        categoryTags: ['circle'],
        tags: ['round'],
        aliases: ['dot'],
    },
]

describe('buildAliasMap', () => {
    it('returns an empty map when no icon has aliases', () => {
        expect(buildAliasMap([descriptions[0], descriptions[1]])).toEqual(new Map())
    })

    it('maps an icon name to its PascalCase aliases', () => {
        expect(buildAliasMap(descriptions).get('circle')).toEqual(['Dot'])
    })

    it('ignores entries without aliases', () => {
        const map = buildAliasMap(descriptions)
        expect(map.has('plus')).toBe(false)
        expect(map.has('close')).toBe(false)
    })

    it('preserves multiple aliases in order', () => {
        const withTwo: IconDescription = {
            ...descriptions[2],
            aliases: ['dot', 'round-dot'],
        }
        expect(buildAliasMap([withTwo]).get('circle')).toEqual(['Dot', 'RoundDot'])
    })
})
