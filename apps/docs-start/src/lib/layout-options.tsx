import { Widget3Icon } from '@solar-icons/react/dynamic/widget-3'
import type { DocsLayoutProps } from 'fumadocs-ui/layouts/docs'
import type { HomeLayoutProps } from 'fumadocs-ui/layouts/home'
import type { BaseLayoutProps } from 'fumadocs-ui/layouts/shared'

import { Logo } from '~/components/logo'

export function baseOptions(): BaseLayoutProps {
    return {
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
}

export const docsOptions: Omit<DocsLayoutProps, 'tree'> = {
    ...baseOptions(),
    sidebar: {
        prefetch: false,
    },
    links: [
        {
            text: 'Explore Icons',
            url: '/icons',
            active: 'url',
            icon: <Widget3Icon weight="BoldDuotone" />,
        },
    ],
}

export const homeOptions: HomeLayoutProps = {
    ...baseOptions(),
}
