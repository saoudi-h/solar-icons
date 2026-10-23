'use client'

import { createContext } from 'react'

export interface SiteStats {
    stars: number
    weeklyDownloads: number
}

export const SiteStatsContext = createContext<SiteStats | null>(null)
