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

    it('preserves a v2 compatibility alias that remains exported', () => {
        expect(renameIcon('TickerStar')).toBe('TickerStar')
    })

    it('normalizes current deprecated file and chat names', () => {
        expect(renameIcon('CodeFile')).toBe('FileCode')
        expect(renameIcon('CloudFile')).toBe('FileCloud')
        expect(renameIcon('FigmaFile')).toBe('FileFigma')
        expect(renameIcon('ChatDots')).toBe('ChatSquareDots')
        expect(renameIcon('ChatLine')).toBe('ChatSquareLine')
        expect(renameIcon('ChatUnread')).toBe('ChatSquareUnread')
    })

    it('normalizes a deprecated name embedded in a compound icon name', () => {
        expect(renameIcon('MinimalisticCodeFile')).toBe('MinimalisticFileCode')
    })
})
