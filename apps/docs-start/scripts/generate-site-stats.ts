/**
 * Fetches the statistics of the home page at build time.
 *
 * The values are baked into the initial HTML, so the first paint never waits
 * for GitHub or npm. The Worker keeps them up to date at runtime through
 * `/api/site-stats`; this file is only the seed and the fallback.
 *
 * The script never fails the build: when an API is unreachable, the fallback
 * values are written instead.
 */
import { mkdir, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

import { fetchSiteStats } from '../worker/site-stats'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const outputDir = path.join(appRoot, 'src', 'generated')
const outputFile = path.join(outputDir, 'site-stats.json')

/** Used only when the APIs cannot be reached during a build. */
const FALLBACK_STARS = 237
const FALLBACK_WEEKLY_DOWNLOADS = 48_558

const stats = await fetchSiteStats({ githubToken: process.env.GITHUB_TOKEN })

const stars = stats.stars ?? FALLBACK_STARS
const weeklyDownloads =
    stats.weeklyDownloads !== null && stats.weeklyDownloads > 0
        ? stats.weeklyDownloads
        : FALLBACK_WEEKLY_DOWNLOADS

const starsSource = stats.stars === null ? 'fallback' : 'github'
const downloadsSource =
    stats.weeklyDownloads !== null && stats.weeklyDownloads > 0 ? 'npm' : 'fallback'

if (starsSource === 'fallback') {
    console.warn('Could not read the GitHub star count. Using the fallback value.')
}
if (downloadsSource === 'fallback') {
    console.warn('Could not read the npm download count. Using the fallback value.')
}

await mkdir(outputDir, { recursive: true })
await writeFile(
    outputFile,
    `${JSON.stringify(
        {
            stars,
            weeklyDownloads,
            fetchedAt: stats.fetchedAt,
            source: {
                stars: starsSource,
                downloads: downloadsSource,
            },
        },
        null,
        2
    )}\n`
)

console.log(
    `Site stats written: ${stars} stars (${starsSource}), ${weeklyDownloads} weekly downloads (${downloadsSource}).`
)
