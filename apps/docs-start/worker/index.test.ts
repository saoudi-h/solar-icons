import { describe, expect, it } from 'vitest'

import { createWorker, type Env, type FeedbackPayload } from './index'

const env: Env = {
    GITHUB_APP_ID: '1',
    GITHUB_APP_PRIVATE_KEY: 'key',
    ALLOWED_ORIGINS: 'https://solar-icons.dev',
}

function post(body: unknown, origin = 'https://solar-icons.dev'): Request {
    return new Request('https://feedback.workers.dev/', {
        method: 'POST',
        headers: { 'content-type': 'application/json', origin },
        body: JSON.stringify(body),
    })
}

function createWorkerWith(stored: FeedbackPayload[]) {
    return createWorker(async (_env, input) => {
        stored.push(input)
        return { githubUrl: 'https://github.com/1', reused: false }
    })
}

describe('the feedback worker', () => {
    it('answers the preflight of the browser', async () => {
        const worker = createWorkerWith([])
        const response = await worker.fetch(
            new Request('https://feedback.workers.dev/', {
                method: 'OPTIONS',
                headers: { origin: 'https://solar-icons.dev' },
            }),
            env
        )

        expect(response.status).toBe(204)
        expect(response.headers.get('access-control-allow-origin')).toBe('https://solar-icons.dev')
    })

    it('refuses an origin that is not allowed', async () => {
        const stored: FeedbackPayload[] = []
        const worker = createWorkerWith(stored)
        const response = await worker.fetch(
            post({ url: '/docs/v2', opinion: 'good', message: 'hello' }, 'https://evil.test'),
            env
        )

        expect(response.status).toBe(403)
        expect(response.headers.get('access-control-allow-origin')).toBeNull()
        expect(stored).toHaveLength(0)
    })

    it('refuses a method that is not a post', async () => {
        const worker = createWorkerWith([])
        const response = await worker.fetch(
            new Request('https://feedback.workers.dev/', { method: 'GET' }),
            env
        )

        expect(response.status).toBe(405)
    })

    it('refuses a body that is not json', async () => {
        const worker = createWorkerWith([])
        const response = await worker.fetch(
            new Request('https://feedback.workers.dev/', {
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
