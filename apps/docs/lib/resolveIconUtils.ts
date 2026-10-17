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
): React.ComponentType<{ weight?: Weight } & IconProps> | undefined {
    const Component = (
        dynamicIcons as Record<string, React.ComponentType<{ weight?: Weight } & IconProps>>
    )[name]
    return Component
}

export const renderSolarIcon = (
    icon: string,
    solarIconParams?: IconProps & { weight?: Weight }
): ReactElement | undefined => {
    const Component = resolveDynamicIcon(icon) ?? resolveDynamicIcon('File')
    if (Component) {
        return createElement(Component, solarIconParams as { weight?: Weight } & IconProps)
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
    | 'react'
    | 'vue'
    | 'nuxt'
    | 'svelte'
    | 'solid'
    | 'angular'
    | 'static'
    | 'js'
    | 'laravel'
    | 'rails'
    | 'flutter'
export const iconifyIcons = [
    'react',
    'vue',
    'nuxt',
    'svelte',
    'solid',
    'angular',
    'static',
    'js',
    'laravel',
    'rails',
    'flutter',
]

export const renderIconify = (icon: IconifyFrameworkIcon): ReactElement => {
    const iconifyMap = {
        react: 'devicon:react',
        vue: 'devicon:vuejs',
        nuxt: 'devicon:nuxtjs',
        svelte: 'devicon:svelte',
        solid: 'devicon:solidjs',
        angular: 'devicon:angular',
        static: 'vscode-icons:file-type-svg',
        js: 'devicon:javascript',
        laravel: 'devicon:laravel',
        rails: 'thesvg-color:ruby-on-rails',
        flutter: 'devicon:flutter',
    }
    const iconName = iconifyMap[icon as keyof typeof iconifyMap]
    return createElement(Icon, { icon: iconName })
}

/**
 * Renders a raw `collection:name` Iconify string, for page frontmatter
 * icons that are not part of the framework map (for example
 * `vscode-icons:file-type-mcp`).
 */
export const renderRawIconify = (icon: string): ReactElement => createElement(Icon, { icon })
