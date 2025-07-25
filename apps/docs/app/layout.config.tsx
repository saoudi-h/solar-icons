import { Logo } from '@/components/ui-blocks/logo'
import { Widget3 } from '@solar-icons/react/ssr'
import type { BaseLayoutProps } from 'fumadocs-ui/layouts/shared'

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
            url: '/docs',
            active: 'nested-url',
        },
        {
            text: 'Explore Icons',
            url: '/icons',
            active: 'nested-url',
        },
    ],
    githubUrl: 'https://github.com/saoudi-h/solar-icons',
}

export const docsOptions: BaseLayoutProps = {
    ...baseOptions,
    links: [
        {
            text: 'Explore Icons',
            url: '/icons',
            active: 'url',
            icon: <Widget3 weight="BoldDuotone" />,
        },
    ],
}
