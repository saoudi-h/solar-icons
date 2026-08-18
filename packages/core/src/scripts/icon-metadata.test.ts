import { describe, expect, it } from 'vitest'
import type { IconDescription } from '../types'
import {
    buildSkeletonEntry,
    extractIconNameFromSvgPath,
    extractIconNamesFromGitPaths,
    findMissingDescriptions,
    findNewIconsWithoutOrigin,
    findOrphanEntries,
} from './icon-metadata'

const entries: IconDescription[] = [
    { name: 'plus', category: 'call', categoryTags: ['add'], tags: ['plus'] },
    { name: 'minus', category: 'call', categoryTags: ['add'], tags: ['minus'] },
    {
        name: 'close',
        category: 'call',
        categoryTags: ['close'],
        tags: ['x'],
        origin: 'extended',
        addedAt: '2026-08-14',
        author: 'saoudi-h',
    },
]

describe('findMissingDescriptions', () => {
    it('returns icons without an entry', () => {
        const result = findMissingDescriptions(new Set(['plus', 'minus', 'question']), entries)
        expect(result).toEqual(['question'])
    })

    it('returns an empty list when fully covered', () => {
        expect(findMissingDescriptions(new Set(['plus', 'minus']), entries)).toEqual([])
    })

    it('sorts results', () => {
        expect(findMissingDescriptions(new Set(['b', 'a', 'c']), entries)).toEqual(['a', 'b', 'c'])
    })
})

describe('findOrphanEntries', () => {
    it('returns entries whose icon no longer exists', () => {
        const result = findOrphanEntries(new Set(['plus', 'minus']), entries)
        expect(result).toEqual(['close'])
    })

    it('returns an empty list when fully consistent', () => {
        expect(findOrphanEntries(new Set(['plus', 'minus', 'close']), entries)).toEqual([])
    })
})

describe('findNewIconsWithoutOrigin', () => {
    it('flags new icons without an explicit origin', () => {
        const result = findNewIconsWithoutOrigin(entries, new Set(['plus', 'close']))
        expect(result).toEqual(['plus'])
    })

    it('ignores existing icons without origin', () => {
        const result = findNewIconsWithoutOrigin(entries, new Set([]))
        expect(result).toEqual([])
    })

    it('accepts new icons with an explicit origin', () => {
        const result = findNewIconsWithoutOrigin(entries, new Set(['close']))
        expect(result).toEqual([])
    })
})

describe('extractIconNameFromSvgPath', () => {
    it('extracts the name from a repo-relative SVG path', () => {
        expect(extractIconNameFromSvgPath('svgs/files/Linear/file-smile.svg')).toBe('file-smile')
    })

    it('rejects paths outside svgs/', () => {
        expect(extractIconNameFromSvgPath('src/foo.svg')).toBeNull()
    })

    it('rejects paths with the wrong shape', () => {
        expect(extractIconNameFromSvgPath('svgs/files/foo.svg')).toBeNull()
        expect(extractIconNameFromSvgPath('svgs/.svg')).toBeNull()
    })
})

describe('extractIconNamesFromGitPaths', () => {
    it('deduplicates names across styles', () => {
        const result = extractIconNamesFromGitPaths([
            'svgs/call/bold/plus.svg',
            'svgs/call/linear/plus.svg',
            'svgs/call/linear/close.svg',
        ])
        expect(result).toEqual(new Set(['plus', 'close']))
    })

    it('ignores non-svg paths', () => {
        expect(extractIconNamesFromGitPaths(['svgs/call/bold/plus.png'])).toEqual(new Set())
    })
})

describe('buildSkeletonEntry', () => {
    it('builds a draft entry with extended defaults', () => {
        expect(buildSkeletonEntry('plus', 'call', 'saoudi-h', '2026-08-14')).toEqual({
            name: 'plus',
            category: 'call',
            categoryTags: ['call'],
            tags: ['call'],
            origin: 'extended',
            addedAt: '2026-08-14',
            author: 'saoudi-h',
            state: 'beta',
        })
    })
})
