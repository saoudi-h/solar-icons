import type { HTMLAttributes } from 'react'

type SolarSvgProps = HTMLAttributes<HTMLSpanElement> & {
    svg?: string | null
}

export function SolarSvg({ svg, ...props }: SolarSvgProps) {
    if (!svg) return <span {...props} data-loading="true" />
    return <span {...props} dangerouslySetInnerHTML={{ __html: svg }} />
}
