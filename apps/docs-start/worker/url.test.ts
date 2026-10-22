import { describe, expect, it } from 'vitest'

import { discussionTitle, feedbackBody, normalizePagePath, pathFromTitle } from './url'

describe('normalizePagePath', () => {
    it('keeps the path of a path', () => {
        expect(normalizePagePath('/docs/v2/advanced/global-styling')).toBe(
            '/docs/v2/advanced/global-styling'
        )
    })

    it('drops the host of an absolute url', () => {
        expect(normalizePagePath('https://solar-icons.dev/docs/v2/packages/react')).toBe(
            '/docs/v2/packages/react'
        )
        expect(normalizePagePath('https://solar-icons.vercel.app/docs/v2/packages/react')).toBe(
            '/docs/v2/packages/react'
        )
        expect(normalizePagePath('http://localhost:3211/docs/v2/packages/react')).toBe(
            '/docs/v2/packages/react'
        )
    })

    it('drops the query and the hash of a url', () => {
        expect(normalizePagePath('/icons?category=ui&style=bold-duotone')).toBe('/icons')
        expect(normalizePagePath('/docs/v2#global-styling')).toBe('/docs/v2')
    })

    it('drops the trailing slash', () => {
        expect(normalizePagePath('/docs/v2/')).toBe('/docs/v2')
        expect(normalizePagePath('/')).toBe('/')
    })

    it('refuses an empty value', () => {
        expect(normalizePagePath('')).toBeNull()
        expect(normalizePagePath('   ')).toBeNull()
    })
})

describe('discussionTitle', () => {
    it('follows the convention of the existing discussions', () => {
        expect(discussionTitle('/docs/v2/figma-plugin')).toBe('Feedback for /docs/v2/figma-plugin')
    })
})

describe('pathFromTitle', () => {
    it('reads the path of the existing discussions', () => {
        const titles = [
            'Feedback for /docs/v1/icon-reference/categories',
            'Feedback for /docs/v2/icon-reference/categories',
            'Feedback for /docs/v2/figma-plugin',
            'Feedback for /docs/icon-reference/categories',
            'Feedback for /docs/community/contributing',
            'Feedback for /docs/packages/react-native',
            'Feedback for /docs/getting-started/installation',
        ]

        expect(titles.map(pathFromTitle)).toEqual([
            '/docs/v1/icon-reference/categories',
            '/docs/v2/icon-reference/categories',
            '/docs/v2/figma-plugin',
            '/docs/icon-reference/categories',
            '/docs/community/contributing',
            '/docs/packages/react-native',
            '/docs/getting-started/installation',
        ])
    })

    it('refuses a title that does not follow the convention', () => {
        expect(pathFromTitle('Something else')).toBeNull()
        expect(pathFromTitle('Feedback for ')).toBeNull()
    })
})

describe('feedbackBody', () => {
    it('follows the format of the existing discussions', () => {
        expect(feedbackBody('good', 'thanks!')).toBe(
            '[good] thanks!\n\n> Forwarded from user feedback.'
        )
    })
})
