import type { NotFoundProps } from '@/app/not-found'
import type { HeroSectionProps } from '@/components/home-page/sections/hero'
import type { PackageSectionProps } from '@/components/home-page/sections/packages'
import type { FooterProps } from '@/components/ui-blocks/footer/types'
import { Icon } from '@iconify/react'
import {
    ArrowLeft,
    BugMinimalistic,
    Diploma,
    Help,
    House,
    SmartphoneUpdate,
} from '@solar-icons/react/ssr'
import * as solar from '@solar-icons/react/ssr/category'

export interface Config {
    footer: FooterProps
    heroSection: HeroSectionProps
    packageSection: PackageSectionProps
    notFound: NotFoundProps
}

export const config: Config = {
    footer: {
        bottomText: `© ${new Date().getFullYear()} Solar Icons — Code licensed MIT. Icons by 480 Design (CC BY 4.0).`,
        sections: [
            {
                title: 'Documentation',
                links: [
                    { label: 'React', url: '/docs/packages/react', icon: <Icon icon="devicon:react" /> },
                    { label: 'React Perf', url: '/docs/packages/react-perf', icon: <Icon icon="devicon:react" /> },
                    { label: 'Vue', url: '/docs/packages/vue', icon: <Icon icon="devicon:vuejs" /> },
                    { label: 'Nuxt', url: '/docs/packages/nuxt', icon: <Icon icon="devicon:nuxtjs" /> },
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
    heroSection: {
        title: {
            part1: 'Solar Icons',
            part2: 'Empower Your Projects',
        },
        content:
            'A comprehensive icon library tailored for modern web and mobile applications, with multi-style support and cross-framework compatibility.',
        exploreIcons: {
            label: 'Explore Icons',
            href: '/icons',
            Icon: <solar.Search.RoundedMagnifer size={20} />,
            variant: 'outline',
        },
        getStarted: {
            label: 'Get Started',
            href: '/docs',
            Icon: <solar.Astronomy.Rocket size={20} />,
        },
    },
    packageSection: {
        packages: [
            {
                title: 'React',
                link: '/docs/packages/react',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/react',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/react',
                content: 'React client library with provider and SSR support',
                iconify: 'devicon:react',
                status: 'released',
            },
            {
                title: 'React Perf',
                link: '/docs/packages/react-perf',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/react-perf',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/react-perf',
                content: 'React client and SSR library with size performance in mind',
                iconify: 'devicon:react',
                status: 'released',
            },
            {
                title: 'Vue',
                link: '/docs/packages/vue',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/vue',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/vue',
                content: 'A flexible and intuitive Vue component library for the Solar icon set, with global configuration and multi-style support',
                status: 'released',
                iconify: 'devicon:vuejs',
            },
            {
                title: 'Nuxt',
                link: '/docs/packages/nuxt',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/nuxt',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/nuxt',
                content: 'Seamlessly integrate Solar Icons into your Nuxt projects with auto-import and global configuration',
                status: 'released',
                iconify: 'devicon:nuxtjs',
            },
            {
                title: 'Angular',
                status: 'not-started',
                iconify: 'devicon:angular',
            },
            {
                title: 'Svelte',
                status: 'not-started',
                iconify: 'devicon:svelte',
            },
            {
                title: 'Qwik',
                status: 'not-started',
                iconify: 'devicon:qwik',
            },
        ],
    },
    notFound: {
        title: {
            part1: '404',
            part2: 'Page Not Found',
        },
        description: 'The page you are looking for does not exist.',
        primaryAction: {
            label: 'Go Home',
            href: '/',
            Icon: <House size={20} />,
        },
        secondaryAction: {
            onClick: () => history.back(),
            label: 'Go Back',
            Icon: <ArrowLeft size={20} />,
            variant: 'outline',
        },
    },
}
