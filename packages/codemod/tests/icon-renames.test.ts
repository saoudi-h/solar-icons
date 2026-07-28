import { describe, expect, it } from 'vitest'

import { renameIcon } from '../src/icon-renames.js'

describe('renameIcon', () => {
    it('renames an exact v1 icon name', () => {
        expect(renameIcon('Weigher')).toBe('Scale')
    })

    it('renames a typo embedded in a compound icon name', () => {
        expect(renameIcon('MinimalisticMagnifer')).toBe('MinimalisticMagnifier')
    })

    it('does not rewrite an unrelated icon containing a generic word', () => {
        expect(renameIcon('TextSquare')).toBe('TextSquare')
    })
})
