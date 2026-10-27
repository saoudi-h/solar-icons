'use client'

import { createContext, useContext, useEffect, useState, type ReactNode } from 'react'

import siteStats from '~/generated/site-stats.json'

export interface SiteStats {
    stars: number
    weeklyDownloads: number
}

const CACHE_KEY = 'solar-icons-site-stats-v1'
/**
 * The server keeps its answer for an hour. The browser only has to avoid
 * asking on every page, so it keeps one for as long as the HTTP cache does:
 * a longer time would stack on top of the server delay.
 */
const CACHE_TTL = 5 * 60 * 1000
const ENDPOINT = '/api/site-stats'

/** What the endpoint answered: a counter can be missing, the time never is. */
type FetchedStats = Partial<SiteStats> & { fetchedAt: string }

interface CachedSiteStats extends SiteStats {
    timestamp: number
    /** When the server read the values, to compare them with the build ones. */
    fetchedAt: string
}

/** The build value is the first paint and the fallback when the API is down. */
const FALLBACK_STATS: SiteStats = {
    stars: siteStats.stars,
    weeklyDownloads: siteStats.weeklyDownloads,
}

const SEED_FETCHED_AT = siteStats.fetchedAt

const SiteStatsContext = createContext<SiteStats>(FALLBACK_STATS)

/** One request at a time, shared by every component and by React Strict Mode. */
let pending: Promise<FetchedStats | null> | null = null

function readCache(): CachedSiteStats | null {
    try {
        const raw = localStorage.getItem(CACHE_KEY)
        if (!raw) return null

        const value = JSON.parse(raw) as Partial<CachedSiteStats>
        if (
            typeof value.timestamp !== 'number' ||
            typeof value.stars !== 'number' ||
            typeof value.weeklyDownloads !== 'number' ||
            typeof value.fetchedAt !== 'string'
        ) {
            return null
        }

        return {
            stars: value.stars,
            weeklyDownloads: value.weeklyDownloads,
            timestamp: value.timestamp,
            fetchedAt: value.fetchedAt,
        }
    } catch {
        return null
    }
}

function writeCache(stats: SiteStats, fetchedAt: string) {
    try {
        const value: CachedSiteStats = { ...stats, timestamp: Date.now(), fetchedAt }
        localStorage.setItem(CACHE_KEY, JSON.stringify(value))
    } catch {
        // Private mode or a full quota: the live value is still displayed.
    }
}

async function requestStats(): Promise<FetchedStats | null> {
    try {
        const response = await fetch(ENDPOINT, { headers: { accept: 'application/json' } })
        if (!response.ok) return null

        const payload = (await response.json()) as {
            stars?: unknown
            weeklyDownloads?: unknown
            fetchedAt?: unknown
        }
        const next: Partial<SiteStats> = {}

        if (typeof payload.stars === 'number' && Number.isFinite(payload.stars)) {
            next.stars = payload.stars
        }
        if (
            typeof payload.weeklyDownloads === 'number' &&
            Number.isFinite(payload.weeklyDownloads)
        ) {
            next.weeklyDownloads = payload.weeklyDownloads
        }

        if (Object.keys(next).length === 0) return null

        const fetchedAt =
            typeof payload.fetchedAt === 'string' ? payload.fetchedAt : new Date().toISOString()
        return { ...next, fetchedAt }
    } catch {
        return null
    }
}

function loadStats() {
    pending ??= requestStats().finally(() => {
        pending = null
    })

    return pending
}

export function SiteStatsProvider({ children }: { children: ReactNode }) {
    const [stats, setStats] = useState<SiteStats>(FALLBACK_STATS)

    useEffect(() => {
        const cached = readCache()
        if (cached) {
            // The build values are newer after a deployment: an old browser
            // copy must not replace them, or the counter would go backwards.
            if (Date.parse(cached.fetchedAt) > Date.parse(SEED_FETCHED_AT)) {
                setStats({ stars: cached.stars, weeklyDownloads: cached.weeklyDownloads })
            }
            if (Date.now() - cached.timestamp < CACHE_TTL) return
        }

        let active = true
        loadStats().then(next => {
            if (!active || !next) return

            const { fetchedAt, ...counters } = next
            setStats(current => ({ ...current, ...counters }))
            if (counters.stars !== undefined && counters.weeklyDownloads !== undefined) {
                writeCache(
                    { stars: counters.stars, weeklyDownloads: counters.weeklyDownloads },
                    fetchedAt
                )
            }
        })

        return () => {
            active = false
        }
    }, [])

    return <SiteStatsContext.Provider value={stats}>{children}</SiteStatsContext.Provider>
}

export function useSiteStats(): SiteStats {
    return useContext(SiteStatsContext)
}
