import { describe, expect, it } from 'vitest'
import type { IconMetadata } from './data'
import { createIconSearch, searchIcons } from './search'

const fixtures: IconMetadata[] = [
    {
        name: 'headphones-square',
        category: 'video-audio-sound',
        categoryTags: ['audio', 'sound', 'music'],
        tags: ['headphones', 'listening', 'earphones'],
    },
    {
        name: 'chat-round-money',
        category: 'messages-conversation',
        categoryTags: ['chat', 'communication'],
        tags: ['money', 'payment', 'conversation'],
    },
    {
        name: 'wallet-money',
        category: 'business-statistic',
        categoryTags: ['finance', 'money'],
        tags: ['wallet', 'payment'],
    },
]

const fuse = createIconSearch(fixtures)

describe('Solar icon search', () => {
    it('tolerates small spelling errors', () => {
        expect(searchIcons(fuse, fixtures, 'hedphones', '')[0]?.name).toBe('headphones-square')
    })

    it('requires every term while allowing any order', () => {
        expect(searchIcons(fuse, fixtures, 'money chat', '').map(icon => icon.name)).toEqual([
            'chat-round-money',
        ])
    })

    it('combines fuzzy search with the category filter', () => {
        expect(searchIcons(fuse, fixtures, 'money', 'business-statistic').map(icon => icon.name)).toEqual([
            'wallet-money',
        ])
    })
})
