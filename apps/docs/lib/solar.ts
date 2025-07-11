import type { IconProps, IconWeight } from '@solar-icons/react'
import { SSR as icons } from '@solar-icons/react'
import { createElement } from 'react'

export const renderSolarIcon = (icon: string, solarIconParams?: IconProps) => {
    if (icon in icons)
        // @ts-expect-error No overload matches this call.
        return createElement(icons[icon as keyof typeof icons] || icons.File, solarIconParams)
    return null
}

export const iconWeights: IconWeight[] = [
    'Bold',
    'BoldDuotone',
    'Linear',
    'Outline',
    'LineDuotone',
    'Broken',
]
