import type { IconProps, IconWeight } from '@solar-icons/react'
import { SSR as icons } from '@solar-icons/react'
import type { ReactElement } from 'react';
import { createElement } from 'react'
import { Icon } from '@iconify/react'

export const renderSolarIcon = (icon: string, solarIconParams?: IconProps): ReactElement | undefined => {
    if (icon in icons)
        // @ts-expect-error No overload matches this call.
        return createElement(icons[icon as keyof typeof icons] || icons.File, solarIconParams)
    return undefined
}

export const iconWeights: IconWeight[] = [
    'Bold',
    'BoldDuotone',
    'Linear',
    'Outline',
    'LineDuotone',
    'Broken',
]

export type IconifyFrameworkIcon = 'react' | 'vue' | 'nuxt' | 'svelte' | 'solid'
export const iconifyIcons = ['react', 'vue', 'nuxt', 'svelte', 'solid']


export const renderIconify = (icon: IconifyFrameworkIcon): ReactElement => {
    const iconifyMap = {
        'react': 'devicon:react',
        'vue': 'devicon:vuejs',
        'nuxt': 'devicon:nuxtjs',
        'svelte': 'devicon:svelte',
        'solid': 'devicon:solidjs',
    }
    const iconName = iconifyMap[icon as keyof typeof iconifyMap]
    return createElement(Icon, {icon:iconName})
    
}
