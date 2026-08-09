import { env } from '@/env'

const SCRIPT_CACHE_SECONDS = 24 * 60 * 60
const STALE_WHILE_REVALIDATE_SECONDS = 7 * 24 * 60 * 60

const SCRIPT_CACHE_CONTROL = [
    'public',
    'max-age=3600',
    `s-maxage=${SCRIPT_CACHE_SECONDS}`,
    `stale-while-revalidate=${STALE_WHILE_REVALIDATE_SECONDS}`,
].join(', ')

const ERROR_CACHE_CONTROL = 'no-store'

export const revalidate = SCRIPT_CACHE_SECONDS

type UmamiScript = 'loader.js' | 'recorder.js'

export async function getUmamiScript(script: UmamiScript) {
    const scriptUrl = new URL(`/${script}`, env.NEXT_PUBLIC_UMAMI_URL)

    try {
        const response = await fetch(scriptUrl, {
            headers: {
                Accept: 'application/javascript, text/javascript;q=0.9, */*;q=0.1',
            },
            next: {
                revalidate: SCRIPT_CACHE_SECONDS,
            },
            redirect: 'error',
        })

        if (!response.ok) {
            return new Response('Unable to load analytics script', {
                status: 502,
                headers: {
                    'Cache-Control': ERROR_CACHE_CONTROL,
                },
            })
        }

        const contentType = response.headers.get('content-type') ?? ''

        if (contentType.includes('text/html')) {
            return new Response('Analytics upstream returned HTML', {
                status: 502,
                headers: {
                    'Cache-Control': ERROR_CACHE_CONTROL,
                },
            })
        }

        return new Response(await response.text(), {
            headers: {
                'Cache-Control': SCRIPT_CACHE_CONTROL,
                'Content-Type': contentType || 'application/javascript; charset=utf-8',
            },
        })
    } catch {
        return new Response('Unable to load analytics script', {
            status: 502,
            headers: {
                'Cache-Control': ERROR_CACHE_CONTROL,
            },
        })
    }
}
