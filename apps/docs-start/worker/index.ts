import siteStatsSeed from '../src/generated/site-stats.json'
import { storeFeedback, type StoreResult } from './feedback'
/**
 * The server endpoints of the documentation.
 *
 * The site is served from the asset storage, and this Worker only runs for
 * `/api/feedback` and `/api/site-stats`. It stores the feedback as a GitHub
 * discussion and answers the live statistics of the home page.
 */
import { createAppJwt, createGraphqlClient, getInstallationToken } from './github'
import { fetchSiteStats, type FetchedSiteStats } from './site-stats'
import { createSiteStatsCache, type SiteStatsCache } from './site-stats-cache'
import { normalizePagePath, type Opinion } from './url'

export interface Env {
    GITHUB_APP_ID: string
    GITHUB_APP_PRIVATE_KEY: string
    /** Optional token that raises the GitHub rate limit of the stats endpoint. */
    GITHUB_TOKEN?: string
    REPO_OWNER?: string
    REPO_NAME?: string
    DISCUSSION_CATEGORY?: string
    ALLOWED_ORIGINS?: string
}

export type SiteStatsFetcher = (env: Env) => Promise<FetchedSiteStats>

/** The part of the Workers execution context that the endpoint needs. */
export interface StatsContext {
    waitUntil(promise: Promise<unknown>): void
}

export interface WorkerOptions {
    /** The value served on the very first call, before anything is cached. */
    statsSeed?: FetchedSiteStats
    statsFetcher?: SiteStatsFetcher
    statsCache?: SiteStatsCache
}

export type FeedbackPayload = {
    path: string
    opinion: Opinion
    message: string
}

export type FeedbackStore = (env: Env, input: FeedbackPayload) => Promise<StoreResult>

const FEEDBACK_PATH = '/api/feedback'
const STATS_PATH = '/api/site-stats'
const STATS_BROWSER_CACHE = 'public, max-age=300'
const MAX_MESSAGE_LENGTH = 2000

const CORS_HEADERS = {
    'access-control-allow-methods': 'POST, OPTIONS',
    'access-control-allow-headers': 'content-type',
    'access-control-max-age': '86400',
}

let cachedToken: { value: string; expiresAt: number } | undefined

function allowedOrigins(env: Env): string[] {
    return (env.ALLOWED_ORIGINS ?? '')
        .split(',')
        .map(origin => origin.trim())
        .filter(Boolean)
}

/**
 * The endpoint is served by the same address as the site, so a request from
 * another site is refused. The extra origins are the ones of a test setup
 * where the site and the Worker answer from two different addresses.
 */
function isAllowedOrigin(request: Request, env: Env): boolean {
    const origin = request.headers.get('origin')
    if (!origin) return true

    return origin === new URL(request.url).origin || allowedOrigins(env).includes(origin)
}

function corsHeaders(request: Request): Record<string, string> {
    const origin = request.headers.get('origin')
    if (!origin || origin === new URL(request.url).origin) return {}

    return {
        ...CORS_HEADERS,
        'access-control-allow-origin': origin,
        'access-control-vary': 'origin',
    }
}

function json(body: unknown, status: number, headers: Record<string, string>): Response {
    return new Response(JSON.stringify(body), {
        status,
        headers: { 'content-type': 'application/json; charset=utf-8', ...headers },
    })
}

async function getToken(env: Env): Promise<string> {
    if (cachedToken && cachedToken.expiresAt > Date.now()) return cachedToken.value

    const jwt = await createAppJwt(env.GITHUB_APP_ID, env.GITHUB_APP_PRIVATE_KEY)
    const token = await getInstallationToken(jwt, env.REPO_OWNER ?? 'saoudi-h')
    cachedToken = { value: token, expiresAt: Date.now() + 50 * 60 * 1000 }

    return token
}

function isOpinion(value: unknown): value is Opinion {
    return value === 'good' || value === 'bad'
}

/** The store that writes the feedback in the discussions of the repository. */
export const storeWithGitHub: FeedbackStore = async (env, input) => {
    const client = createGraphqlClient(await getToken(env))
    return storeFeedback(client, {
        owner: env.REPO_OWNER ?? 'saoudi-h',
        repo: env.REPO_NAME ?? 'solar-icons',
        category: env.DISCUSSION_CATEGORY ?? 'Docs Feedback',
        input,
    })
}

/** The browser may keep the answer for five minutes. */
function siteStatsResponse(stats: FetchedSiteStats): Response {
    return json(stats, 200, { 'cache-control': STATS_BROWSER_CACHE })
}

/** Builds the worker with the given store, so the handler can be tested. */
export function createWorker(store: FeedbackStore, options: WorkerOptions = {}) {
    const statsFetcher =
        options.statsFetcher ?? ((env: Env) => fetchSiteStats({ githubToken: env.GITHUB_TOKEN }))
    const statsCache = options.statsCache ?? createSiteStatsCache()
    const seed: FetchedSiteStats = options.statsSeed ?? {
        stars: siteStatsSeed.stars,
        weeklyDownloads: siteStatsSeed.weeklyDownloads,
        fetchedAt: siteStatsSeed.fetchedAt,
    }
    let pendingRefresh: Promise<FetchedSiteStats> | null = null

    /**
     * Reads the upstream counters once and stores the result for another
     * hour. A counter that cannot be read keeps its previous value, so a
     * failure is cached like a success and the upstream APIs are not asked
     * again before the hour is over.
     */
    function refreshSiteStats(env: Env, previous: FetchedSiteStats): Promise<FetchedSiteStats> {
        pendingRefresh ??= statsFetcher(env)
            .then(async fetched => {
                if (fetched.stars === null || fetched.weeklyDownloads === null) {
                    console.warn('The site statistics refresh failed, the previous values stay.')
                }

                const merged: FetchedSiteStats = {
                    stars: fetched.stars ?? previous.stars,
                    weeklyDownloads: fetched.weeklyDownloads ?? previous.weeklyDownloads,
                    fetchedAt:
                        fetched.stars !== null || fetched.weeklyDownloads !== null
                            ? fetched.fetchedAt
                            : previous.fetchedAt,
                }
                await statsCache.set(merged)
                return merged
            })
            .finally(() => {
                pendingRefresh = null
            })

        return pendingRefresh
    }

    async function getSiteStats(env: Env, ctx?: StatsContext): Promise<FetchedSiteStats> {
        const cached = await statsCache.get()
        if (cached?.fresh) return cached.stats

        if (cached) {
            // A visitor never waits for the refresh: the stale value answers
            // now, and the next visitor gets the new one.
            const refresh = refreshSiteStats(env, cached.stats).catch(error => {
                console.error('The site statistics could not be refreshed.', error)
            })
            ctx?.waitUntil(refresh)
            return cached.stats
        }

        return refreshSiteStats(env, seed)
    }

    async function handleSiteStats(
        request: Request,
        env: Env,
        ctx?: StatsContext
    ): Promise<Response> {
        if (request.method === 'OPTIONS') {
            return new Response(null, { status: 204, headers: { allow: 'GET, HEAD, OPTIONS' } })
        }
        if (request.method !== 'GET' && request.method !== 'HEAD') {
            return json({ error: 'Only GET is allowed.' }, 405, { allow: 'GET, HEAD' })
        }

        let stats: FetchedSiteStats
        try {
            stats = await getSiteStats(env, ctx)
        } catch (error) {
            console.error('The site statistics could not be read.', error)
            return json({ error: 'The site statistics could not be read.' }, 503, {
                'cache-control': 'no-store',
            })
        }

        const response = siteStatsResponse(stats)
        if (request.method === 'HEAD') {
            return new Response(null, { status: response.status, headers: response.headers })
        }

        return response
    }

    return {
        async fetch(request: Request, env: Env, ctx?: StatsContext): Promise<Response> {
            const pathname = new URL(request.url).pathname

            if (pathname === STATS_PATH) return handleSiteStats(request, env, ctx)

            if (pathname !== FEEDBACK_PATH) {
                return json({ error: 'Not found.' }, 404, {})
            }

            const headers = corsHeaders(request)

            if (!isAllowedOrigin(request, env)) {
                return json({ error: 'This origin cannot send a feedback.' }, 403, {})
            }

            if (request.method === 'OPTIONS') return new Response(null, { status: 204, headers })

            if (request.method !== 'POST') {
                return json({ error: 'Only POST is allowed.' }, 405, headers)
            }

            let payload: { url?: unknown; opinion?: unknown; message?: unknown }
            try {
                payload = await request.json()
            } catch {
                return json({ error: 'The body must be JSON.' }, 400, headers)
            }

            const path = typeof payload.url === 'string' ? normalizePagePath(payload.url) : null
            if (!path) {
                return json({ error: 'The url must be the path of a page.' }, 400, headers)
            }

            if (!isOpinion(payload.opinion)) {
                return json({ error: 'The opinion must be "good" or "bad".' }, 400, headers)
            }

            const message = typeof payload.message === 'string' ? payload.message.trim() : ''
            if (message.length === 0) {
                return json({ error: 'The message cannot be empty.' }, 400, headers)
            }
            if (message.length > MAX_MESSAGE_LENGTH) {
                return json({ error: 'The message is too long.' }, 400, headers)
            }

            try {
                const result = await store(env, { path, opinion: payload.opinion, message })
                return json(result, 200, headers)
            } catch (error) {
                console.error('The feedback could not be stored.', error)
                return json({ error: 'The feedback could not be stored.' }, 502, headers)
            }
        },
    }
}

export default createWorker(storeWithGitHub)
