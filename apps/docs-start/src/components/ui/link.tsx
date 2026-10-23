import { Link as FumadocsLink } from 'fumadocs-core/link'
import type { LinkProps } from 'fumadocs-core/link'

export function Link({ prefetch = false, ...props }: LinkProps) {
    return <FumadocsLink prefetch={prefetch} {...props} />
}
