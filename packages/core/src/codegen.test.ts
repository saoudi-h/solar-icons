import { describe, expect, it } from 'vitest'

import { buildAliasMap, buildDeprecatedAliasMap } from './codegen'

describe('buildDeprecatedAliasMap', () => {
    it('keeps deprecation metadata attached to the canonical icon', () => {
        const aliases = buildDeprecatedAliasMap([
            {
                name: 'ticket-star',
                category: 'money',
                categoryTags: ['money'],
                tags: ['ticket'],
                deprecatedAliases: [
                    {
                        name: 'ticker-star',
                        replacement: 'ticket-star',
                        reason: 'Typo in the icon name',
                    },
                ],
            },
        ])

        expect(aliases.get('ticket-star')).toEqual([
            {
                name: 'ticker-star',
                replacement: 'ticket-star',
                reason: 'Typo in the icon name',
            },
        ])
    })

    it('does not create entries for icons without deprecated aliases', () => {
        expect(
            buildDeprecatedAliasMap([
                {
                    name: 'ticket',
                    category: 'money',
                    categoryTags: ['money'],
                    tags: ['ticket'],
                },
            ])
        ).toEqual(new Map())
    })
})

describe('buildAliasMap', () => {
    it('normalizes non-deprecated aliases to PascalCase export names', () => {
        expect(
            buildAliasMap([
                {
                    name: 'add',
                    category: 'ui',
                    categoryTags: ['ui'],
                    tags: ['plus'],
                    aliases: ['plus', 'create-new'],
                },
            ])
        ).toEqual(new Map([['add', ['Plus', 'CreateNew']]]))
    })
})
