import { Link } from '@tanstack/react-router'
import type { ComponentProps } from 'react'

import { toTanStackLocation } from '~/compat/routes'

/**
 * Link of the Fumadocs layouts. It receives an `href` and maps it to the
 * matching route of the app: the docs and the blog are splat routes, so the
 * path after the prefix becomes the splat parameter.
 */
export function FrameworkLink({
    href,
    prefetch,
    ...props
}: { href?: string; prefetch?: boolean } & Omit<ComponentProps<'a'>, 'href'>) {
    if (href?.startsWith('#')) return <a href={href} {...props} />

    const preload = prefetch === false ? false : 'intent'
    const location = toTanStackLocation(href ?? '/')
    if (!location) return <a href={href} {...props} />

    return (
        <Link
            to={location.to as never}
            params={location.params as never}
            search={location.search as never}
            hash={location.hash}
            preload={preload}
            {...props}
        />
    )
}
