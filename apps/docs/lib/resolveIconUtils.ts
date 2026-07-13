import { Icon } from '@iconify/react'
import type { Weight } from '@solar-icons/core/runtime'
import * as dynamicIcons from '@solar-icons/react/dynamic'
import type { IconProps } from '@solar-icons/react/lib/types'
import type { ReactElement } from 'react'
import { createElement } from 'react'

/**
 * Map of kebab/camel icon names -> dynamic icon component. The V2
 * `SSR` barrel was removed in V3-23; the dynamic subpath is the
 * replacement for runtime name-based rendering. Each dynamic icon
 * embeds all 6 styles and accepts a `weight` prop.
 */
function resolveDynamicIcon(
    name: string
): React.ComponentType<{ weight: Weight } & IconProps> | undefined {
    const Component = (
        dynamicIcons as Record<string, React.ComponentType<{ weight: Weight } & IconProps>>
    )[name]
    return Component
}

export const renderSolarIcon = (
    icon: string,
    solarIconParams?: IconProps & { weight?: Weight }
): ReactElement | undefined => {
    const Component = resolveDynamicIcon(icon) ?? resolveDynamicIcon('File')
    if (Component) {
        return createElement(Component, solarIconParams)
    }
    return undefined
}

export const iconWeights: Weight[] = [
    'Bold',
    'BoldDuotone',
    'Linear',
    'Outline',
    'LineDuotone',
    'Broken',
]

export type IconifyFrameworkIcon =
    'react' | 'vue' | 'nuxt' | 'svelte' | 'solid' | 'angular' | 'static'
export const iconifyIcons = ['react', 'vue', 'nuxt', 'svelte', 'solid', 'angular', 'static']

export const renderIconify = (icon: IconifyFrameworkIcon): ReactElement => {
    const iconifyMap = {
        react: 'devicon:react',
        vue: 'devicon:vuejs',
        nuxt: 'devicon:nuxtjs',
        svelte: 'devicon:svelte',
        solid: 'devicon:solidjs',
        angular: 'devicon:angular',
        static: 'vscode-icons:file-type-svg',
    }
    const iconName = iconifyMap[icon as keyof typeof iconifyMap]
    return createElement(Icon, { icon: iconName })
}
