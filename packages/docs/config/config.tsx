import { FooterProps } from '@/components/ui-blocks/footer/types'
import { BugMinimalistic, Help } from '@solar-icons/react/ssr'
import { Icon } from '@iconify/react'

export interface Config {
    footer: FooterProps
}

export const config: Config = {
    footer: {
        bottomText: '© 2024 Solar Icons. All rights reserved. Released under the MIT License.',
        sections: [
            {
                title: 'Documentation',
                links: [
                    { label: 'React', url: '/docs/react', icon: <Icon icon="devicon:react" /> },
                    { label: 'Vue', url: '/docs/vue', icon: <Icon icon="devicon:vuejs" /> },
                    {
                        label: 'Angular',
                        url: '/docs/angular',
                        icon: <Icon icon="devicon:angular" />,
                    },
                ],
            },
            {
                title: 'Community',
                links: [
                    {
                        label: 'Contribute',
                        url: 'https://github.com/saoudi-h/solar-icons/blob/main/CONTRIBUTING.md',
                        icon: <Help size={20} />,
                        external: true,
                    },
                    {
                        label: 'Issues',
                        url: 'https://github.com/saoudi-h/solar-icons/issues',
                        icon: <BugMinimalistic size={20} />,
                        external: true,
                    },
                    {
                        label: 'GitHub',
                        url: 'https://github.com/saoudi-h/solar-icons',
                        icon: <Icon icon="akar-icons:github-fill" />,
                        external: true,
                    },
                ],
            },
            {
                title: 'Resources',
                links: [
                    {
                        label: 'License',
                        url: '/license',
                        icon: <Icon icon="hugeicons:license-draft" />,
                    },
                    {
                        label: 'Changelog',
                        url: '/changelog',
                        icon: <Icon icon="catppuccin:changelog" />,
                    },
                ],
            },
        ],
    },
}
