import { describe, expect, it } from 'vitest'

import { findDiscussion, listDiscussions, storeFeedback } from './feedback'
import type { GraphqlClient } from './github'

const EXISTING = [
    {
        id: 'D_1',
        number: 526,
        title: 'Feedback for /docs/v1/icon-reference/categories',
        url: 'https://github.com/1',
    },
    {
        id: 'D_2',
        number: 606,
        title: 'Feedback for /docs/v2/icon-reference/categories',
        url: 'https://github.com/2',
    },
    {
        id: 'D_3',
        number: 564,
        title: 'Feedback for /docs/v2/figma-plugin',
        url: 'https://github.com/3',
    },
]

type Recorded = { query: string; variables: Record<string, unknown> }

function createClient(discussions = EXISTING) {
    const calls: Recorded[] = []

    const client: GraphqlClient = {
        async graphql<T>(query: string, variables: Record<string, unknown> = {}): Promise<T> {
            calls.push({ query, variables })

            if (query.includes('discussionCategories')) {
                return {
                    repository: {
                        id: 'R_1',
                        discussionCategories: { nodes: [{ id: 'C_1', name: 'Docs Feedback' }] },
                    },
                } as T
            }

            if (query.includes('discussions(')) {
                return {
                    repository: {
                        discussions: {
                            pageInfo: { hasNextPage: false, endCursor: null },
                            nodes: discussions,
                        },
                    },
                } as T
            }

            if (query.includes('createDiscussion')) {
                return {
                    createDiscussion: {
                        discussion: {
                            id: 'D_new',
                            number: 999,
                            title: String(variables.title),
                            url: 'https://github.com/new',
                        },
                    },
                } as T
            }

            return { addDiscussionComment: { comment: { id: 'C_new' } } } as T
        },
    }

    return { client, calls }
}

describe('findDiscussion', () => {
    it('finds the discussion of a page', () => {
        expect(findDiscussion(EXISTING, '/docs/v2/figma-plugin')?.id).toBe('D_3')
    })

    it('does not confuse the pages of the two versions', () => {
        expect(findDiscussion(EXISTING, '/docs/v1/icon-reference/categories')?.id).toBe('D_1')
        expect(findDiscussion(EXISTING, '/docs/v2/icon-reference/categories')?.id).toBe('D_2')
    })

    it('returns nothing for a page without discussion', () => {
        expect(findDiscussion(EXISTING, '/docs/v2/ai-tools')).toBeUndefined()
    })
})

describe('listDiscussions', () => {
    it('reads every page of the category', async () => {
        const { client, calls } = createClient()
        const discussions = await listDiscussions(client, 'saoudi-h', 'solar-icons', 'C_1')

        expect(discussions).toHaveLength(3)
        expect(calls).toHaveLength(1)
    })
})

describe('storeFeedback', () => {
    it('adds a comment to the discussion of the page', async () => {
        const { client, calls } = createClient()
        const result = await storeFeedback(client, {
            owner: 'saoudi-h',
            repo: 'solar-icons',
            category: 'Docs Feedback',
            input: { path: '/docs/v2/figma-plugin', opinion: 'good', message: 'thanks!' },
        })

        expect(result).toEqual({ githubUrl: 'https://github.com/3', reused: true })
        expect(calls.some(call => call.query.includes('addDiscussionComment'))).toBe(true)
        expect(calls.some(call => call.query.includes('createDiscussion'))).toBe(false)
    })

    it('creates a discussion for a page without one', async () => {
        const { client, calls } = createClient()
        const result = await storeFeedback(client, {
            owner: 'saoudi-h',
            repo: 'solar-icons',
            category: 'Docs Feedback',
            input: { path: '/docs/v2/ai-tools', opinion: 'bad', message: 'unclear' },
        })

        expect(result).toEqual({ githubUrl: 'https://github.com/new', reused: false })
        const creation = calls.find(call => call.query.includes('createDiscussion'))
        expect(creation?.variables.title).toBe('Feedback for /docs/v2/ai-tools')
        expect(creation?.variables.body).toBe('[bad] unclear\n\n> Forwarded from user feedback.')
    })

    it('does not write anything in dry run', async () => {
        const { client, calls } = createClient()
        const result = await storeFeedback(client, {
            owner: 'saoudi-h',
            repo: 'solar-icons',
            category: 'Docs Feedback',
            input: { path: '/docs/v2/ai-tools', opinion: 'bad', message: 'unclear' },
            dryRun: true,
        })

        expect(result.reused).toBe(false)
        expect(calls.some(call => call.query.includes('createDiscussion'))).toBe(false)
        expect(calls.some(call => call.query.includes('addDiscussionComment'))).toBe(false)
    })
})
