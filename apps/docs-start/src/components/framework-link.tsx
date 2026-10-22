import { Link } from '@tanstack/react-router'
import type { ComponentProps } from 'react'

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
    const preload = prefetch === false ? false : 'intent'

    if (href?.startsWith('/docs/')) {
        return (
            <Link
                to="/docs/$"
                params={{ _splat: href.slice('/docs/'.length) }}
                preload={preload}
                {...props}
            />
        )
    }

    if (href?.startsWith('/blog/')) {
        return (
            <Link
                to="/blog/$"
                params={{ _splat: href.slice('/blog/'.length) }}
                preload={preload}
                {...props}
            />
        )
    }

    return <Link to={href ?? '/'} preload={preload} {...props} />
}
