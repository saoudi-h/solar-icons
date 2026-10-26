import { describe, expect, it, vi } from 'vitest'

import type { FetchedSiteStats } from './site-stats'
import { createSiteStatsCache } from './site-stats-cache'

const stats: FetchedSiteStats = {
    stars: 321,
    weeklyDownloads: 54_321,
    fetchedAt: '2026-10-26T10:00:00.000Z',
}

function createMemoryCache(): Cache {
    const entries = new Map<string, Response>()
    const cacheKey = (key: RequestInfo | URL) =>
        typeof key === 'string' ? key : key instanceof URL ? key.href : key.url

    return {
        match: async key => entries.get(cacheKey(key))?.clone(),
        put: async (key, response) => {
            entries.set(cacheKey(key), response.clone())
        },
    } as Cache
}

describe('the site statistics cache', () => {
    it('shares a result across cache instances and flags it stale after one hour', async () => {
        vi.useFakeTimers()
        try {
            const cache = createMemoryCache()
            const first = createSiteStatsCache(60 * 60 * 1000, cache)
            await first.set(stats)

            const nextIsolate = createSiteStatsCache(60 * 60 * 1000, cache)
            expect(await nextIsolate.get()).toEqual({ stats, fresh: true })

            vi.advanceTimersByTime(60 * 60 * 1000)
            // The value stays available, flagged stale, to answer while it refreshes.
            expect(await createSiteStatsCache(60 * 60 * 1000, cache).get()).toEqual({
                stats,
                fresh: false,
            })
        } finally {
            vi.useRealTimers()
        }
    })

    it('uses isolate memory when the Cache API is unavailable', async () => {
        const cache = createSiteStatsCache(60 * 60 * 1000, null)
        await cache.set(stats)

        expect(await cache.get()).toEqual({ stats, fresh: true })
    })
})
