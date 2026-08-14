import { describe, expect, it } from 'vitest'
import { validateDescriptions } from './validate-descriptions'

const iconNames = new Set(['add-circle', 'add-square', 'plus', 'close-circle'])

const upstreamEntry = {
    name: 'add-circle',
    category: 'call',
    categoryTags: ['add', 'circle'],
    tags: ['plus', 'new'],
}

const extendedEntry = {
    name: 'plus',
    category: 'call',
    categoryTags: ['add', 'math'],
    tags: ['plus', 'addition'],
    origin: 'extended',
    addedAt: '2026-08-14',
    author: 'saoudi-h',
}

describe('validateDescriptions', () => {
    it('accepts a plain upstream entry', () => {
        expect(validateDescriptions([upstreamEntry], iconNames)).toEqual([])
    })

    it('accepts a complete extended entry', () => {
        expect(validateDescriptions([extendedEntry], iconNames)).toEqual([])
    })

    it('accepts an extended entry with state, aliases and useCases', () => {
        const entry = {
            ...extendedEntry,
            state: 'beta',
            aliases: ['add'],
            useCases: ['increase value', 'show addition'],
        }
        expect(validateDescriptions([entry], iconNames)).toEqual([])
    })

    it('rejects an extended entry without addedAt', () => {
        const { addedAt: _addedAt, ...entry } = extendedEntry
        const errors = validateDescriptions([entry], iconNames)
        expect(errors.length).toBeGreaterThan(0)
        expect(errors.some(error => error.includes('addedAt'))).toBe(true)
    })

    it('rejects an extended entry without author', () => {
        const { author: _author, ...entry } = extendedEntry
        const errors = validateDescriptions([entry], iconNames)
        expect(errors[0]).toContain('author')
    })

    it('rejects an invalid origin', () => {
        const entry = { ...upstreamEntry, origin: 'community' }
        const errors = validateDescriptions([entry], iconNames)
        expect(errors[0]).toContain('origin')
    })

    it('rejects an invalid state', () => {
        const entry = { ...upstreamEntry, state: 'alpha' }
        const errors = validateDescriptions([entry], iconNames)
        expect(errors[0]).toContain('state')
    })

    it('rejects a malformed addedAt date', () => {
        const entry = { ...extendedEntry, addedAt: '14/08/2026' }
        const errors = validateDescriptions([entry], iconNames)
        expect(errors[0]).toContain('addedAt')
    })

    it('rejects an unknown extra field', () => {
        const entry = { ...upstreamEntry, surprise: true }
        const errors = validateDescriptions([entry], iconNames)
        expect(errors[0]).toContain('must NOT have additional properties')
    })

    it('rejects a missing required field', () => {
        const { categoryTags: _categoryTags, ...entry } = upstreamEntry
        const errors = validateDescriptions([entry], iconNames)
        expect(errors[0]).toContain('categoryTags')
    })

    it('rejects an alias that collides with an existing icon name', () => {
        const entry = { ...extendedEntry, aliases: ['close-circle'] }
        const errors = validateDescriptions([entry], iconNames)
        expect(errors[0]).toContain('collides with an existing icon name')
    })

    it('rejects an alias equal to the icon name itself', () => {
        const entry = { ...extendedEntry, aliases: ['plus'] }
        const errors = validateDescriptions([entry], iconNames)
        expect(errors[0]).toContain('equals the icon name itself')
    })

    it('rejects aliases shared across entries', () => {
        const first = { ...extendedEntry, aliases: ['add'] }
        const other = {
            name: 'add-circle',
            category: 'call',
            categoryTags: ['add'],
            tags: ['plus'],
            aliases: ['add'],
        }
        const errors = validateDescriptions([first, other], iconNames)
        expect(errors.some(error => error.includes('already used by "plus"'))).toBe(true)
    })

    it('rejects a malformed alias format', () => {
        const entry = { ...extendedEntry, aliases: ['AddIcon'] }
        const errors = validateDescriptions([entry], iconNames)
        expect(errors[0]).toContain('aliases')
    })

    it('rejects an empty alias list with a non-array value', () => {
        const entry = { ...extendedEntry, aliases: 'add' }
        const errors = validateDescriptions([entry], iconNames)
        expect(errors[0]).toContain('aliases')
    })
})
