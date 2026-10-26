/**
 * A small server-side cache for the home page statistics.
 *
 * The first layer lives in the isolate memory, so a warm Worker answers
 * without touching the Cache API. The second layer uses the Cloudflare cache,
 * which survives an isolate restart and is shared by the requests of a data
 * center. It is deliberately not Workers Cache: enabling that feature bills
 * the static asset requests too, while the pages of this site are free.
 */

import type { FetchedSiteStats } from './site-stats'

const CACHE_TTL_MS = 60 * 60 * 1000
const CACHE_KEY = 'https://solar-icons.dev/__site-stats'
/**
 * The entry outlives its one-hour freshness on purpose: a stale value is
 * still served while a refresh runs, and it stays the fallback when the
 * refresh fails.
 */
const RETENTION_SECONDS = 7 * 24 * 60 * 60
const CACHE_CONTROL = `public, max-age=${RETENTION_SECONDS}`

interface CacheEntry {
    stats: FetchedSiteStats
    storedAt: number
}

export interface CachedSiteStats {
    stats: FetchedSiteStats
    /** `false` once the freshness period is over: serve it, then refresh. */
    fresh: boolean
}

export interface SiteStatsCache {
    get(): Promise<CachedSiteStats | null>
    set(stats: FetchedSiteStats): Promise<void>
}

/**
 * `caches.default` is a Workers extension, not part of the DOM CacheStorage
 * interface. The Node tests have no global cache, so the access is guarded.
 */
function workerCache(): Cache | null {
    if (typeof caches === 'undefined') return null
    return (caches as unknown as { default?: Cache }).default ?? null
}

export function createSiteStatsCache(
    ttlMs = CACHE_TTL_MS,
    cache: Cache | null = workerCache()
): SiteStatsCache {
    let memory: CacheEntry | null = null

    return {
        async get() {
            const describe = (entry: CacheEntry): CachedSiteStats => ({
                stats: entry.stats,
                fresh: Date.now() - entry.storedAt < ttlMs,
            })

            if (memory && describe(memory).fresh) return describe(memory)
            if (!cache) return memory && describe(memory)

            try {
                const response = await cache.match(CACHE_KEY)
                if (!response) return memory && describe(memory)

                const entry = (await response.json()) as CacheEntry
                if (typeof entry.storedAt !== 'number' || !entry.stats) {
                    return memory && describe(memory)
                }

                if (!memory || entry.storedAt > memory.storedAt) memory = entry
                return describe(memory)
            } catch {
                // A cache failure must never break the endpoint.
                return memory && describe(memory)
            }
        },

        async set(stats) {
            const entry: CacheEntry = { stats, storedAt: Date.now() }
            memory = entry
            if (!cache) return

            try {
                await cache.put(
                    CACHE_KEY,
                    new Response(JSON.stringify(entry), {
                        headers: {
                            'content-type': 'application/json; charset=utf-8',
                            'cache-control': CACHE_CONTROL,
                        },
                    })
                )
            } catch {
                // The in-memory value is still available to this isolate.
            }
        },
    }
}
