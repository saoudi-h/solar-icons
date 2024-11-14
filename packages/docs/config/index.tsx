import { FooterProps } from '@/components/ui-blocks/footer/types'
import { BugMinimalistic, Help, SmartphoneUpdate, Diploma } from '@solar-icons/react/ssr'
import { Icon } from '@iconify/react'
import { PackageSectionProps } from '@/components/home-page/sections/package'

export interface Config {
    footer: FooterProps
    packageSection: PackageSectionProps
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
                        icon: <Diploma size={20} />,
                    },
                    {
                        label: 'Changelog',
                        url: '/changelog',
                        icon: <SmartphoneUpdate size={20} />,
                    },
                ],
            },
        ],
    },
    packageSection: {
        packages: [
            {
                title: 'React',
                link: '/packages/react',
                githubLink: 'https://github.com/saoudi-h/solar-icons/packages/react',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/react',
                content: 'React client library with provider and SSR support',
                iconify: 'devicon:react',
                status: 'released',
            },
            {
                title: 'React Perf',
                link: '/packages/react-perf',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/react-perf',
                githubLink: 'https://github.com/saoudi-h/solar-icons/packages/react-perf',
                content: 'React client and SSR library with size performance in mind',
                iconify: 'devicon:react',
                status: 'in-progress',
            },
            {
                title: 'Angular',
                status: 'coming-soon',
                iconify: 'devicon:angular',
            },
            {
                title: 'Vue',
                status: 'coming-soon',
                iconify: 'devicon:vuejs',
            },
            {
                title: 'Svelte',
                status: 'coming-soon',
                iconify: 'devicon:svelte',
            },
            {
                title: 'Qwik',
                status: 'coming-soon',
                iconify: 'devicon:qwik',
            },
        ],
    },
}
