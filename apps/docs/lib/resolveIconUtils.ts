import { Icon } from '@iconify/react'
import type { Weight } from '@solar-icons/core/runtime'
import { AccessibilityIcon } from '@solar-icons/react/dynamic/accessibility'
import { AltArrowRightIcon } from '@solar-icons/react/dynamic/alt-arrow-right'
import { ArrowRightUpIcon } from '@solar-icons/react/dynamic/arrow-right-up'
import { Book2Icon } from '@solar-icons/react/dynamic/book-2'
import { ClipboardListIcon } from '@solar-icons/react/dynamic/clipboard-list'
import { CodeIcon } from '@solar-icons/react/dynamic/code'
import { CodeFileIcon } from '@solar-icons/react/dynamic/code-file'
import { CodeScanIcon } from '@solar-icons/react/dynamic/code-scan'
import { CopyrightIcon } from '@solar-icons/react/dynamic/copyright'
import { DisketteIcon } from '@solar-icons/react/dynamic/diskette'
import { FigmaIcon } from '@solar-icons/react/dynamic/figma'
import { FileIcon } from '@solar-icons/react/dynamic/file'
import { GlobalIcon } from '@solar-icons/react/dynamic/global'
import { HandPillsIcon } from '@solar-icons/react/dynamic/hand-pills'
import { HandShakeIcon } from '@solar-icons/react/dynamic/hand-shake'
import { HistoryIcon } from '@solar-icons/react/dynamic/history'
import { InfoSquareIcon } from '@solar-icons/react/dynamic/info-square'
import { ListIcon } from '@solar-icons/react/dynamic/list'
import { MouseCircleIcon } from '@solar-icons/react/dynamic/mouse-circle'
import { NotesIcon } from '@solar-icons/react/dynamic/notes'
import { PaletteIcon } from '@solar-icons/react/dynamic/palette'
import { RoundTransferHorizontalIcon } from '@solar-icons/react/dynamic/round-transfer-horizontal'
import { ServerIcon } from '@solar-icons/react/dynamic/server'
import { SettingsMinimalisticIcon } from '@solar-icons/react/dynamic/settings-minimalistic'
import { SmartphoneUpdateIcon } from '@solar-icons/react/dynamic/smartphone-update'
import { Star2Icon } from '@solar-icons/react/dynamic/star-2'
import { UsersGroupTwoRoundedIcon } from '@solar-icons/react/dynamic/users-group-two-rounded'
import { Widget2Icon } from '@solar-icons/react/dynamic/widget-2'
import { Widget3Icon } from '@solar-icons/react/dynamic/widget-3'
import type { IconProps } from '@solar-icons/react/lib/types'
import type { ReactElement } from 'react'
import { createElement } from 'react'

const dynamicIcons: Record<string, React.ComponentType<{ weight?: Weight } & IconProps>> = {
    AccessibilityIcon,
    AltArrowRight: AltArrowRightIcon,
    ArrowRightUpIcon,
    Book2Icon,
    ClipboardList: ClipboardListIcon,
    ClipboardListIcon,
    CodeFileIcon,
    CodeIcon,
    CodeScanIcon,
    CopyrightIcon,
    DisketteIcon,
    FigmaIcon,
    File: FileIcon,
    GlobalIcon,
    HandPillsIcon,
    HandShakeIcon,
    HistoryIcon,
    InfoSquareIcon,
    ListIcon,
    MouseCircleIcon,
    NotesIcon,
    PaletteIcon,
    RoundTransferHorizontalIcon,
    ServerIcon,
    SettingsMinimalisticIcon,
    SmartphoneUpdateIcon,
    Star2Icon,
    UsersGroupTwoRoundedIcon,
    Widget2Icon,
    Widget3Icon,
}

function resolveDynamicIcon(
    name: string
): React.ComponentType<{ weight?: Weight } & IconProps> | undefined {
    return dynamicIcons[name]
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
