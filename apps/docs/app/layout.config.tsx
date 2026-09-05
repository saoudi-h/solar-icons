import { Widget3Icon } from '@solar-icons/react/dynamic/widget-3'
import type { HomeLayoutProps } from 'fumadocs-ui/layouts/home'
import type { BaseLayoutProps } from 'fumadocs-ui/layouts/shared'

import { Logo } from '@/components/ui-blocks/logo'
import { SiteHeader } from '@/components/ui-blocks/site-header'

/**
 * Shared layout configurations
 *
 * you can configure layouts individually from:
 * Home Layout: app/(home)/layout.tsx
 * Docs Layout: app/docs/layout.tsx
 */
export const baseOptions: BaseLayoutProps = {
    nav: {
        title: <Logo />,
    },
    links: [
        {
            text: 'Documentation',
            url: '/docs/v2',
            active: 'nested-url',
        },
        {
            text: 'Explore Icons',
            url: '/icons',
            active: 'nested-url',
        },
        {
            text: 'Blog',
            url: '/blog',
            active: 'nested-url',
        },
    ],
    githubUrl: 'https://github.com/saoudi-h/solar-icons',
}

export const homeOptions: HomeLayoutProps = {
    ...baseOptions,
    slots: {
        header: SiteHeader,
    },
}

export const docsOptions: BaseLayoutProps = {
    ...baseOptions,
    links: [
        {
            text: 'Explore Icons',
            url: '/icons',
            active: 'url',
            icon: <Widget3Icon weight="BoldDuotone" />,
        },
    ],
}
