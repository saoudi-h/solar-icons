import { describe, expect, it } from 'vitest'

import { fetchSiteStats, NPM_PACKAGES, npmDownloadsWindow } from './site-stats'

const downloads = Object.fromEntries(NPM_PACKAGES.map((pkg, index) => [pkg, 10 + index]))
const totalDownloads = NPM_PACKAGES.reduce((total, pkg) => total + downloads[pkg]!, 0)

interface FakeFetchOptions {
    github?: () => Response
    npm?: (pkg: string) => Response
}

function fakeFetch(options: FakeFetchOptions = {}) {
    const calls: string[] = []
    const impl: typeof fetch = async input => {
        const url =
            typeof input === 'string' ? input : input instanceof URL ? input.href : input.url
        calls.push(url)

        if (url.includes('api.github.com')) {
            return options.github?.() ?? Response.json({ stargazers_count: 300 })
        }

        const pkg = url.slice(url.indexOf('/@solar-icons/') + 1)
        return options.npm?.(pkg) ?? Response.json({ downloads: downloads[pkg] ?? 0 })
    }

    return { impl, calls }
}

describe('npmDownloadsWindow', () => {
    it('ends two days ago and covers seven days', () => {
        expect(npmDownloadsWindow(new Date('2026-10-27T14:00:00Z'))).toBe('2026-10-19:2026-10-25')
    })

    it('is requested explicitly for every package', async () => {
        const { impl, calls } = fakeFetch()
        await fetchSiteStats({ fetchImpl: impl })

        const npmCalls = calls.filter(url => url.includes('api.npmjs.org'))
        expect(npmCalls.every(url => !url.includes('last-week'))).toBe(true)
        expect(npmCalls.every(url => url.includes(`/point/${npmDownloadsWindow()}/`))).toBe(true)
    })
})

describe('fetchSiteStats', () => {
    it('reads the star count and the sum of every package', async () => {
        const { impl, calls } = fakeFetch()
        const stats = await fetchSiteStats({ fetchImpl: impl })

        expect(stats.stars).toBe(300)
        expect(stats.weeklyDownloads).toBe(totalDownloads)
        expect(calls).toHaveLength(NPM_PACKAGES.length + 1)
        expect(Number.isNaN(Date.parse(stats.fetchedAt))).toBe(false)
    })

    it('leaves the stars empty when GitHub fails', async () => {
        const { impl } = fakeFetch({ github: () => new Response('nope', { status: 500 }) })
        const stats = await fetchSiteStats({ fetchImpl: impl })

        expect(stats.stars).toBeNull()
        expect(stats.weeklyDownloads).toBe(totalDownloads)
    })

    it('leaves the downloads empty when one package fails', async () => {
        const failing = NPM_PACKAGES[3]
        const { impl, calls } = fakeFetch({
            npm: pkg =>
                pkg === failing
                    ? new Response('nope', { status: 500 })
                    : Response.json({ downloads: 1 }),
        })
        const stats = await fetchSiteStats({ fetchImpl: impl })

        expect(stats.stars).toBe(300)
        expect(stats.weeklyDownloads).toBeNull()
        expect(calls).toHaveLength(NPM_PACKAGES.length + 1)
    })

    it('sends the GitHub token when one is configured', async () => {
        let authorization: string | null = null
        const impl: typeof fetch = async (input, init) => {
            const url =
                typeof input === 'string' ? input : input instanceof URL ? input.href : input.url
            if (url.includes('api.github.com')) {
                authorization = new Headers(init?.headers).get('authorization')
                return Response.json({ stargazers_count: 1 })
            }

            return Response.json({ downloads: 1 })
        }

        await fetchSiteStats({ fetchImpl: impl, githubToken: 'secret' })

        expect(authorization).toBe('Bearer secret')
    })
})
