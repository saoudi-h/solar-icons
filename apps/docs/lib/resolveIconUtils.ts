import { Icon } from '@iconify/react'
import type { IconProps as IconifyIconProps } from '@iconify/react'
import type { Weight } from '@solar-icons/core/runtime'
import type { ReactElement } from 'react'
import { createElement } from 'react'

const solarWeightSuffix: Record<Weight, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Linear: 'linear',
    Outline: 'outline',
    LineDuotone: 'line-duotone',
    Broken: 'broken',
}

const solarIconAliases: Record<string, string> = {
    CodeFileIcon: 'file-code',
}

export const getSolarIconBaseName = (icon: string): string => {
    if (icon.includes(':')) {
        return icon
            .slice(icon.indexOf(':') + 1)
            .replace(/-(bold-duotone|line-duotone|linear|outline|broken|bold)$/, '')
    }

    const alias = solarIconAliases[icon]
    if (alias) return alias

    return icon
        .replace(/Icon$/, '')
        .replace(/([a-z0-9])([A-Z])/g, '$1-$2')
        .replace(/([A-Za-z])(\d)/g, '$1-$2')
        .toLowerCase()
}

export const renderSolarIcon = (
    icon: string,
    { weight = 'Linear', ...props }: Omit<IconifyIconProps, 'icon'> & { weight?: Weight } = {}
): ReactElement => {
    const iconName = icon.startsWith('solar:')
        ? icon
        : `solar:${getSolarIconBaseName(icon)}-${solarWeightSuffix[weight]}`

    return createElement(Icon, { icon: iconName, ...props })
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
