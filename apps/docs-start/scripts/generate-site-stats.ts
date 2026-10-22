/**
 * Fetches the statistics of the home page at build time.
 *
 * The current app requests them from the browser, which costs one GitHub
 * API call and one npm API call per visitor. Here they are fetched once
 * per build and written to static JSON the home page imports, so the values
 * are baked into the HTML and the browser never asks for them.
 *
 * The script never fails the build: when an API is unreachable, the
 * fallback values are written instead.
 */
import { mkdir, writeFile } from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const appRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const outputDir = path.join(appRoot, 'src', 'generated')
const outputFile = path.join(outputDir, 'site-stats.json')

const REPO = 'saoudi-h/solar-icons'

const NPM_PACKAGES = [
    '@solar-icons/react',
    '@solar-icons/react-perf',
    '@solar-icons/react-native',
    '@solar-icons/vue',
    '@solar-icons/nuxt',
    '@solar-icons/svelte',
    '@solar-icons/solid',
    '@solar-icons/angular',
    '@solar-icons/static',
    '@solar-icons/js',
    '@solar-icons/codemod',
    '@solar-icons/cli',
    '@solar-icons/mcp',
]

/** Values of the current app when the APIs cannot be reached. */
const FALLBACK_STARS = 220
const FALLBACK_DOWNLOADS = 15200

async function fetchStars() {
    const response = await fetch(`https://api.github.com/repos/${REPO}`, {
        headers: { Accept: 'application/vnd.github+json' },
    })
    if (!response.ok) throw new Error(`GitHub API answered ${response.status}`)

    const payload = (await response.json()) as { stargazers_count?: number }
    if (typeof payload.stargazers_count !== 'number') {
        throw new Error('GitHub API did not return a star count')
    }

    return payload.stargazers_count
}

async function fetchWeeklyDownloads() {
    const counts = await Promise.all(
        NPM_PACKAGES.map(async pkg => {
            const response = await fetch(
                `https://api.npmjs.org/downloads/point/last-week/${pkg}`
            )
            if (!response.ok) throw new Error(`npm API answered ${response.status} for ${pkg}`)

            const payload = (await response.json()) as { downloads?: unknown }
            if (typeof payload.downloads !== 'number' || !Number.isFinite(payload.downloads)) {
                throw new Error(`npm API did not return a download count for ${pkg}`)
            }

            return payload.downloads
        })
    )

    return counts.reduce((total, count) => total + count, 0)
}

let stars = FALLBACK_STARS
let downloads = FALLBACK_DOWNLOADS
let starsSource: 'github' | 'fallback' = 'fallback'
let downloadsSource: 'npm' | 'fallback' = 'fallback'

try {
    stars = await fetchStars()
    starsSource = 'github'
} catch (error) {
    console.warn(
        `Could not read the GitHub star count (${error instanceof Error ? error.message : 'unknown error'}). Using the fallback value.`
    )
}

try {
    const total = await fetchWeeklyDownloads()
    if (total > 0) {
        downloads = total
        downloadsSource = 'npm'
    } else {
        console.warn('The npm API returned no download count. Using the fallback value.')
    }
} catch (error) {
    console.warn(
        `Could not read the npm download count (${error instanceof Error ? error.message : 'unknown error'}). Using the fallback value.`
    )
}

const fetchedAt = new Date().toISOString()

await mkdir(outputDir, { recursive: true })
await writeFile(
    outputFile,
    `${JSON.stringify(
        {
            stars,
            weeklyDownloads: downloads,
            fetchedAt,
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
    `Site stats written: ${stars} stars (${starsSource}), ${downloads} weekly downloads (${downloadsSource}).`
)
