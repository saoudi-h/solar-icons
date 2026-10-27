/**
 * The live statistics of the home page.
 *
 * The Worker endpoint and the build script share this module, so the list of
 * packages and the rules that build the counters live in one place. It only
 * uses standard APIs, which means it runs both in the Workers runtime and in
 * Node during a build.
 */

export interface FetchedSiteStats {
    /** `null` when GitHub could not be reached or answered an invalid value. */
    stars: number | null
    /** `null` when any package could not be read, so the sum is never partial. */
    weeklyDownloads: number | null
    fetchedAt: string
}

export const NPM_PACKAGES = [
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
] as const

const REPO = 'saoudi-h/solar-icons'
const GITHUB_API = `https://api.github.com/repos/${REPO}`
const NPM_API = 'https://api.npmjs.org/downloads/point/'
const DAY_MS = 24 * 60 * 60 * 1000

/**
 * The seven days that npm has fully counted. The `last-week` shortcut of the
 * npm API can answer a window that is months old, so the window is explicit.
 * npm publishes a day late, hence the two days of margin.
 */
export function npmDownloadsWindow(now = new Date()): string {
    const day = (offset: number) =>
        new Date(now.getTime() - offset * DAY_MS).toISOString().slice(0, 10)
    return `${day(8)}:${day(2)}`
}
const REQUEST_TIMEOUT_MS = 8_000

export interface FetchSiteStatsOptions {
    /** Raises the GitHub rate limit and is read from a Worker secret when set. */
    githubToken?: string
    /** The tests and the build script replace the global fetch. */
    fetchImpl?: typeof fetch
}

type JsonObject = Record<string, unknown>

async function getJson(
    url: string,
    init: RequestInit,
    fetchImpl: typeof fetch
): Promise<JsonObject> {
    const response = await fetchImpl(url, {
        ...init,
        signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
    })

    if (!response.ok) {
        await response.body?.cancel()
        throw new Error(`${url} answered ${response.status}`)
    }

    return (await response.json()) as JsonObject
}

async function fetchStars(
    fetchImpl: typeof fetch,
    githubToken: string | undefined
): Promise<number> {
    const headers: Record<string, string> = {
        accept: 'application/vnd.github+json',
        // GitHub refuses requests without a User-Agent, and the Workers
        // runtime does not add one.
        'user-agent': 'solar-icons-docs',
    }
    if (githubToken) headers.authorization = `Bearer ${githubToken}`

    const payload = await getJson(GITHUB_API, { headers }, fetchImpl)
    const stars = payload.stargazers_count
    if (typeof stars !== 'number' || !Number.isFinite(stars)) {
        throw new Error('GitHub did not return a star count')
    }

    return stars
}

async function fetchWeeklyDownloads(fetchImpl: typeof fetch): Promise<number> {
    const results = await Promise.allSettled(
        NPM_PACKAGES.map(async pkg => {
            const payload = await getJson(
                `${NPM_API}${npmDownloadsWindow()}/${pkg}`,
                { headers: { accept: 'application/json' } },
                fetchImpl
            )
            const downloads = payload.downloads
            if (typeof downloads !== 'number' || !Number.isFinite(downloads)) {
                throw new Error(`npm did not return a download count for ${pkg}`)
            }

            return downloads
        })
    )

    const failure = results.find(result => result.status === 'rejected')
    if (failure?.status === 'rejected') throw failure.reason

    return results.reduce(
        (total, result) => total + (result.status === 'fulfilled' ? result.value : 0),
        0
    )
}

/**
 * Reads both counters independently. A failure leaves that counter `null`
 * instead of failing the whole request or writing a partial npm sum.
 */
export async function fetchSiteStats(
    options: FetchSiteStatsOptions = {}
): Promise<FetchedSiteStats> {
    const fetchImpl = options.fetchImpl ?? fetch

    const [stars, weeklyDownloads] = await Promise.all([
        fetchStars(fetchImpl, options.githubToken).catch(() => null),
        fetchWeeklyDownloads(fetchImpl).catch(() => null),
    ])

    return {
        stars,
        weeklyDownloads,
        fetchedAt: new Date().toISOString(),
    }
}
