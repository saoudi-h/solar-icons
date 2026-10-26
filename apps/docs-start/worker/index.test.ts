import { describe, expect, it, vi } from 'vitest'

import { createWorker, type Env, type FeedbackPayload, type SiteStatsFetcher } from './index'
import type { FetchedSiteStats } from './site-stats'

const env: Env = {
    GITHUB_APP_ID: '1',
    GITHUB_APP_PRIVATE_KEY: 'key',
    ALLOWED_ORIGINS: '',
}

const siteStats: FetchedSiteStats = {
    stars: 321,
    weeklyDownloads: 54_321,
    fetchedAt: '2026-10-26T10:00:00.000Z',
}

function post(body: unknown, origin = 'https://solar-icons.dev'): Request {
    return new Request('https://solar-icons.dev/api/feedback', {
        method: 'POST',
        headers: { 'content-type': 'application/json', origin },
        body: JSON.stringify(body),
    })
}

function createWorkerWith(
    stored: FeedbackPayload[],
    statsFetcher: SiteStatsFetcher = async () => siteStats
) {
    return createWorker(
        async (_env, input) => {
            stored.push(input)
            return { githubUrl: 'https://github.com/1', reused: false }
        },
        { statsFetcher }
    )
}

describe('the docs worker', () => {
    it('answers the site statistics with a browser cache', async () => {
        const worker = createWorkerWith([])
        const response = await worker.fetch(
            new Request('https://solar-icons.dev/api/site-stats'),
            env
        )

        expect(response.status).toBe(200)
        expect(response.headers.get('cache-control')).toBe('public, max-age=300')
        expect(await response.json()).toEqual(siteStats)
    })

    it('coalesces concurrent site statistics requests', async () => {
        let calls = 0
        const worker = createWorkerWith([], async () => {
            calls += 1
            await Promise.resolve()
            return siteStats
        })

        await Promise.all([
            worker.fetch(new Request('https://solar-icons.dev/api/site-stats'), env),
            worker.fetch(new Request('https://solar-icons.dev/api/site-stats'), env),
        ])

        expect(calls).toBe(1)
    })

    it('keeps the previous values for another hour when a refresh fails', async () => {
        vi.useFakeTimers()
        try {
            const results: FetchedSiteStats[] = [
                siteStats,
                { stars: null, weeklyDownloads: null, fetchedAt: '2026-10-26T12:00:00.000Z' },
                { stars: 323, weeklyDownloads: 54_999, fetchedAt: '2026-10-26T13:00:00.000Z' },
            ]
            let calls = 0
            const pending: Promise<unknown>[] = []
            const ctx = { waitUntil: (promise: Promise<unknown>) => void pending.push(promise) }
            const worker = createWorkerWith([], async () => results[calls++]!)
            const read = async () =>
                (
                    await worker.fetch(
                        new Request('https://solar-icons.dev/api/site-stats'),
                        env,
                        ctx
                    )
                ).json()
            const settle = async () => void (await Promise.all(pending.splice(0)))

            expect(await read()).toEqual(siteStats)
            expect(await read()).toEqual(siteStats)
            expect(calls).toBe(1)

            // The hour is over: the stale value answers, the refresh fails.
            vi.advanceTimersByTime(60 * 60 * 1000)
            expect(await read()).toEqual(siteStats)
            await settle()
            expect(calls).toBe(2)

            // The failure is cached like a success: no retry within the hour.
            expect(await read()).toEqual(siteStats)
            await settle()
            expect(calls).toBe(2)

            // The next hour, the upstream answers and replaces the value.
            vi.advanceTimersByTime(60 * 60 * 1000)
            expect(await read()).toEqual(siteStats)
            await settle()
            expect(calls).toBe(3)
            expect(await read()).toEqual(results[2])
        } finally {
            vi.useRealTimers()
        }
    })

    it('keeps one counter when only the other one fails', async () => {
        vi.useFakeTimers()
        try {
            let calls = 0
            const pending: Promise<unknown>[] = []
            const ctx = { waitUntil: (promise: Promise<unknown>) => void pending.push(promise) }
            const worker = createWorkerWith([], async () =>
                calls++ === 0 ? siteStats : { ...siteStats, stars: null, weeklyDownloads: 60_000 }
            )
            const read = async () =>
                (
                    await worker.fetch(
                        new Request('https://solar-icons.dev/api/site-stats'),
                        env,
                        ctx
                    )
                ).json() as Promise<FetchedSiteStats>

            await read()
            vi.advanceTimersByTime(60 * 60 * 1000)
            await read()
            await Promise.all(pending.splice(0))

            expect(await read()).toMatchObject({ stars: 321, weeklyDownloads: 60_000 })
        } finally {
            vi.useRealTimers()
        }
    })

    it('serves the build seed and caches it when the very first read fails', async () => {
        let calls = 0
        const worker = createWorker(async () => ({ githubUrl: '', reused: false }), {
            statsSeed: siteStats,
            statsFetcher: async () => {
                calls += 1
                return { stars: null, weeklyDownloads: null, fetchedAt: 'later' }
            },
        })
        const request = () => new Request('https://solar-icons.dev/api/site-stats')

        expect(await (await worker.fetch(request(), env)).json()).toEqual(siteStats)
        await worker.fetch(request(), env)
        expect(calls).toBe(1)
    })

    it('refuses a stats method that is not a get', async () => {
        const worker = createWorkerWith([])
        const response = await worker.fetch(
            new Request('https://solar-icons.dev/api/site-stats', { method: 'POST' }),
            env
        )

        expect(response.status).toBe(405)
    })

    it('answers only the known paths', async () => {
        const worker = createWorkerWith([])
        const response = await worker.fetch(
            new Request('https://solar-icons.dev/api/other', { method: 'POST' }),
            env
        )

        expect(response.status).toBe(404)
    })

    it('answers the preflight of the browser', async () => {
        const worker = createWorkerWith([])
        const response = await worker.fetch(
            new Request('https://solar-icons.dev/api/feedback', {
                method: 'OPTIONS',
                headers: { origin: 'https://solar-icons.dev' },
            }),
            env
        )

        expect(response.status).toBe(204)
    })

    it('answers the preflight of another allowed origin', async () => {
        const worker = createWorkerWith([])
        const response = await worker.fetch(
            new Request('https://solar-icons.dev/api/feedback', {
                method: 'OPTIONS',
                headers: { origin: 'https://solar-icons.vercel.app' },
            }),
            { ...env, ALLOWED_ORIGINS: 'https://solar-icons.vercel.app' }
        )

        expect(response.status).toBe(204)
        expect(response.headers.get('access-control-allow-origin')).toBe(
            'https://solar-icons.vercel.app'
        )
    })

    it('refuses an origin that is not allowed', async () => {
        const stored: FeedbackPayload[] = []
        const worker = createWorkerWith(stored)
        const response = await worker.fetch(
            post({ url: '/docs/v2', opinion: 'good', message: 'hello' }, 'https://evil.test'),
            { ...env, ALLOWED_ORIGINS: 'https://solar-icons.vercel.app' }
        )

        expect(response.status).toBe(403)
        expect(response.headers.get('access-control-allow-origin')).toBeNull()
        expect(stored).toHaveLength(0)
    })

    it('refuses a method that is not a post', async () => {
        const worker = createWorkerWith([])
        const response = await worker.fetch(
            new Request('https://solar-icons.dev/api/feedback', { method: 'GET' }),
            env
        )

        expect(response.status).toBe(405)
    })

    it('refuses a body that is not json', async () => {
        const worker = createWorkerWith([])
        const response = await worker.fetch(
            new Request('https://solar-icons.dev/api/feedback', {
                method: 'POST',
                body: 'not json',
            }),
            env
        )

        expect(response.status).toBe(400)
    })

    it('refuses an invalid payload', async () => {
        const worker = createWorkerWith([])
        const cases = [
            { url: '', opinion: 'good', message: 'hello' },
            { url: '/docs/v2', opinion: 'maybe', message: 'hello' },
            { url: '/docs/v2', opinion: 'good', message: '   ' },
        ]

        for (const body of cases) {
            const response = await worker.fetch(post(body), env)
            expect(response.status).toBe(400)
        }
    })

    it('stores a valid feedback and answers with the discussion', async () => {
        const stored: FeedbackPayload[] = []
        const worker = createWorkerWith(stored)
        const response = await worker.fetch(
            post({ url: '/docs/v2/packages/react', opinion: 'good', message: 'thanks!' }),
            env
        )

        expect(response.status).toBe(200)
        expect(await response.json()).toEqual({
            githubUrl: 'https://github.com/1',
            reused: false,
        })
        expect(stored).toEqual([
            { path: '/docs/v2/packages/react', opinion: 'good', message: 'thanks!' },
        ])
    })

    it('normalizes the url before storing it', async () => {
        const stored: FeedbackPayload[] = []
        const worker = createWorkerWith(stored)
        await worker.fetch(
            post({
                url: 'https://solar-icons.vercel.app/docs/v2/packages/react?foo=bar',
                opinion: 'bad',
                message: 'unclear',
            }),
            env
        )

        expect(stored[0]?.path).toBe('/docs/v2/packages/react')
    })

    it('answers with a gateway error when the discussion cannot be written', async () => {
        const worker = createWorker(async () => {
            throw new Error('GitHub is down')
        })
        const response = await worker.fetch(
            post({ url: '/docs/v2', opinion: 'good', message: 'hello' }),
            env
        )

        expect(response.status).toBe(502)
    })
})
