import { Link } from '@tanstack/react-router'
import type { ComponentProps, ReactNode } from 'react'

import { toTanStackLocation } from './routes'

type NextLinkProps = Omit<ComponentProps<'a'>, 'href'> & {
    href: string
    prefetch?: boolean | null
    replace?: boolean
    scroll?: boolean
    children?: ReactNode
}

export default function NextLink({
    href,
    prefetch,
    replace,
    scroll: _scroll,
    ...props
}: NextLinkProps) {
    const location = toTanStackLocation(href)
    if (!location) return <a href={href} {...props} />

    return (
        <Link
            to={location.to as never}
            params={location.params as never}
            search={location.search as never}
            hash={location.hash}
            preload={prefetch === false ? false : 'intent'}
            replace={replace}
            {...props}
        />
    )
}
