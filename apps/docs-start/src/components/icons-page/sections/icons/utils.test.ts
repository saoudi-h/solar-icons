import Fuse from 'fuse.js'
import { describe, expect, it } from 'vitest'

import original from '../../../../../generated/descriptions'
import { getAllIcons, searchIcons } from './utils'

describe('compact explorer catalogue', () => {
    it('preserves every name, tag and extension field used by the explorer', () => {
        expect(getAllIcons()).toEqual(
            original.map(({ name, category, categoryTags, tags, origin, addedAt }) => ({
                name,
                category,
                categoryTags,
                tags,
                ...(origin === 'extended' ? { origin } : {}),
                ...(addedAt ? { addedAt } : {}),
            }))
        )
    })

    it('preserves search results and ranking, including exceptional category tags', () => {
        for (const origin of ['all', 'extended'] as const) {
            const source =
                origin === 'all' ? original : original.filter(icon => icon.origin === 'extended')
            const reference = new Fuse(source, {
                keys: ['name', 'tags', 'category', 'categoryTags'],
                threshold: 0.2,
                ignoreLocation: true,
            })
            for (const keyword of [
                'home',
                'arrow right',
                'fashion',
                'fitness',
                'text-bold',
                'security',
                'zzzzzzzz',
            ]) {
                const terms = keyword.split(' ')
                const query = terms.length > 1 ? { $and: terms } : terms[0]!
                expect(searchIcons({ keyword, origin }).map(icon => icon.name)).toEqual(
                    reference.search(query).map(result => result.item.name)
                )
            }
        }
        expect(searchIcons({ keyword: '   ' })).toEqual(getAllIcons())
    })
})
