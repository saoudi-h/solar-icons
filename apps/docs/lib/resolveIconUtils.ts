import type { Weight } from '@solar-icons/core/runtime'
import type { ComponentProps, ReactElement } from 'react'
import { createElement } from 'react'

import { Icon } from './icons'

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
 * Renders a raw `collection:name` Iconify string, used by every content
 * icon that is not part of the framework map (for example
 * `solar:book-2-bold-duotone` or `vscode-icons:file-type-mcp`).
 */
export const renderRawIconify = (
    icon: string,
    props?: Omit<ComponentProps<typeof Icon>, 'icon'>
): ReactElement => createElement(Icon, { icon, ...props })
