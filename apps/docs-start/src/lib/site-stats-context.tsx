'use client'

import { createContext, useContext, useEffect, useState, type ReactNode } from 'react'

import siteStats from '~/generated/site-stats.json'

export interface SiteStats {
    stars: number
    weeklyDownloads: number
}

const CACHE_KEY = 'solar-icons-site-stats-v1'
const CACHE_TTL = 60 * 60 * 1000
const ENDPOINT = '/api/site-stats'

interface CachedSiteStats extends SiteStats {
    timestamp: number
}

/** The build value is the first paint and the fallback when the API is down. */
const FALLBACK_STATS: SiteStats = {
    stars: siteStats.stars,
    weeklyDownloads: siteStats.weeklyDownloads,
}

const SiteStatsContext = createContext<SiteStats>(FALLBACK_STATS)

/** One request at a time, shared by every component and by React Strict Mode. */
let pending: Promise<Partial<SiteStats> | null> | null = null

function readCache(): CachedSiteStats | null {
    try {
        const raw = localStorage.getItem(CACHE_KEY)
        if (!raw) return null

        const value = JSON.parse(raw) as Partial<CachedSiteStats>
        if (
            typeof value.timestamp !== 'number' ||
            typeof value.stars !== 'number' ||
            typeof value.weeklyDownloads !== 'number'
        ) {
            return null
        }

        return {
            stars: value.stars,
            weeklyDownloads: value.weeklyDownloads,
            timestamp: value.timestamp,
        }
    } catch {
        return null
    }
}

function writeCache(stats: SiteStats) {
    try {
        const value: CachedSiteStats = { ...stats, timestamp: Date.now() }
        localStorage.setItem(CACHE_KEY, JSON.stringify(value))
    } catch {
        // Private mode or a full quota: the live value is still displayed.
    }
}

async function requestStats(): Promise<Partial<SiteStats> | null> {
    try {
        const response = await fetch(ENDPOINT, { headers: { accept: 'application/json' } })
        if (!response.ok) return null

        const payload = (await response.json()) as {
            stars?: unknown
            weeklyDownloads?: unknown
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

        return Object.keys(next).length > 0 ? next : null
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
            setStats({ stars: cached.stars, weeklyDownloads: cached.weeklyDownloads })
            if (Date.now() - cached.timestamp < CACHE_TTL) return
        }

        let active = true
        loadStats().then(next => {
            if (!active || !next) return

            setStats(current => ({ ...current, ...next }))
            if (next.stars !== undefined && next.weeklyDownloads !== undefined) {
                writeCache({ stars: next.stars, weeklyDownloads: next.weeklyDownloads })
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
