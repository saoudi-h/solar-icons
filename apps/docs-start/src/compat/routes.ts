export type TanStackLocation = {
    to: string
    params?: Record<string, string>
    search?: Record<string, string>
    hash?: string
}

export function toTanStackLocation(href: string): TanStackLocation | null {
    const url = new URL(href, 'https://solar-icons.invalid')
    if (url.origin !== 'https://solar-icons.invalid') return null

    const search = Object.fromEntries(url.searchParams.entries())
    const hash = url.hash ? url.hash.slice(1) : undefined
    const path = url.pathname
    const extras = {
        ...(Object.keys(search).length > 0 ? { search } : {}),
        ...(hash ? { hash } : {}),
    }

    if (path === '/docs' || path.startsWith('/docs/')) {
        const splat = path.slice('/docs/'.length) || 'v2'
        return {
            to: '/docs/$',
            params: { _splat: decodeURIComponent(splat) },
            ...extras,
        }
    }

    if (path === '/blog' || path === '/blog/') {
        return { to: '/blog/', ...extras }
    }

    if (path.startsWith('/blog/')) {
        return {
            to: '/blog/$',
            params: { _splat: decodeURIComponent(path.slice('/blog/'.length)) },
            ...extras,
        }
    }

    return { to: path, ...extras }
}
