import { Link as FumadocsLink } from 'fumadocs-core/link'
import type { LinkProps } from 'fumadocs-core/link'
import NextLink from 'next/link'
import type { ComponentProps } from 'react'

export function Link({ prefetch = false, ...props }: LinkProps) {
    return <FumadocsLink prefetch={prefetch} {...props} />
}

export function FrameworkLink({
    prefetch = false,
    href = '#',
    ...props
}: ComponentProps<'a'> & { prefetch?: boolean }) {
    return <NextLink href={href} prefetch={prefetch} {...props} />
}
