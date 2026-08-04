import type { HTMLAttributes } from 'react'
import { iconData } from '../data'

type SolarSvgProps = HTMLAttributes<HTMLSpanElement> & {
    name: string
    styleName?: string
}

export function SolarSvg({ name, styleName = 'linear', ...props }: SolarSvgProps) {
    const svg = iconData[`${name}-${styleName}`]
    if (!svg) return null

    return <span {...props} dangerouslySetInnerHTML={{ __html: svg }} />
}
