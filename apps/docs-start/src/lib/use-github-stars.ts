'use client'
import { useContext, useEffect, useState } from 'react'

import { SiteStatsContext } from '~/lib/site-stats-context'

const REPO = 'saoudi-h/solar-icons'
const CACHE_KEY = 'solar-icons-github-stars-v1'
const CACHE_TTL = 60 * 60 * 1000 // 1 hour cache TTL

/**
 * Shown before the API answers, and when it cannot be reached. It is
 * only a placeholder: the real value replaces it as soon as the
 * request resolves.
 */
export const FALLBACK_STARS = 220

interface StarsCache {
    stars: number
    timestamp: number
}

/**
 * Shared by every component of the page: one request, one value. The
 * components mounted at the same time (the header and the community
 * section) reuse the same pending request.
 */
let pending: Promise<number> | null = null

function readCache(): number | null {
    try {
        const cached = localStorage.getItem(CACHE_KEY)
        if (!cached) return null
        const parsed = JSON.parse(cached) as StarsCache
        if (Date.now() - parsed.timestamp >= CACHE_TTL) return null
        return parsed.stars
    } catch {
        return null
    }
}

function writeCache(stars: number) {
    try {
        const payload: StarsCache = { stars, timestamp: Date.now() }
        localStorage.setItem(CACHE_KEY, JSON.stringify(payload))
    } catch {
        // Private mode or a full quota: the count is still shown.
    }
}

function fetchStars(): Promise<number> {
    pending ??= fetch(`https://api.github.com/repos/${REPO}`)
        .then(res => {
            if (!res.ok) throw new Error('GitHub API error')
            return res.json()
        })
        .then(data => data.stargazers_count as number)
        .then(stars => {
            writeCache(stars)
            return stars
        })
        .catch(() => FALLBACK_STARS)
        .finally(() => {
            pending = null
        })

    return pending
}

/**
 * Number of stars of the repository, from the GitHub API. The value is
 * cached in `localStorage` for an hour, so a visitor does not hit the
 * API rate limit on every page.
 */
export function useGitHubStars(): number {
    const siteStats = useContext(SiteStatsContext)
    const [stars, setStars] = useState<number | null>(null)

    useEffect(() => {
        if (siteStats) return

        const cached = readCache()
        if (cached !== null) {
            setStars(cached)
            return
        }

        let active = true
        fetchStars().then(value => {
            if (active) setStars(value)
        })

        return () => {
            active = false
        }
    }, [siteStats])

    return siteStats?.stars ?? stars ?? FALLBACK_STARS
}
