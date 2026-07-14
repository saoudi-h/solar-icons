import type { NotFoundProps } from '@/app/not-found'
import type { HeroSectionProps } from '@/components/home-page/sections/hero'
import type { PackageSectionProps } from '@/components/home-page/sections/packages'
import type { FooterProps } from '@/components/ui-blocks/footer/types'
import { Icon } from '@iconify/react'
import { ArrowLeftIcon } from '@solar-icons/react/linear/arrow-left'
import { BugMinimalisticIcon } from '@solar-icons/react/linear/bug-minimalistic'
import { DiplomaIcon } from '@solar-icons/react/linear/diploma'
import { HelpIcon } from '@solar-icons/react/linear/help'
import { HouseIcon } from '@solar-icons/react/linear/house'
import { RocketIcon } from '@solar-icons/react/linear/rocket'
import { RoundedMagnifierIcon } from '@solar-icons/react/linear/rounded-magnifier'
import { SmartphoneUpdateIcon } from '@solar-icons/react/linear/smartphone-update'

export interface Config {
    footer: FooterProps
    heroSection: HeroSectionProps
    packageSection: PackageSectionProps
    notFound: NotFoundProps
}

export const config: Config = {
    footer: {
        bottomText: `© ${new Date().getFullYear()} Solar Icons, Code licensed MIT. Icons by 480 Design (CC BY 4.0).`,
        sections: [
            {
                title: 'Documentation',
                links: [
                    {
                        label: 'React',
                        url: '/docs/v2/packages/react',
                        icon: <Icon icon="devicon:react" />,
                    },
                    {
                        label: 'React Native',
                        url: '/docs/v2/packages/react-native',
                        icon: <Icon icon="devicon:react" />,
                    },
                    {
                        label: 'Vue',
                        url: '/docs/v2/packages/vue',
                        icon: <Icon icon="devicon:vuejs" />,
                    },
                    {
                        label: 'Nuxt',
                        url: '/docs/v2/packages/nuxt',
                        icon: <Icon icon="devicon:nuxtjs" />,
                    },
                    {
                        label: 'Svelte',
                        url: '/docs/v2/packages/svelte',
                        icon: <Icon icon="devicon:svelte" />,
                    },
                    {
                        label: 'Solid',
                        url: '/docs/v2/packages/solid',
                        icon: <Icon icon="devicon:solidjs" />,
                    },
                    {
                        label: 'Angular',
                        url: '/docs/v2/packages/angular',
                        icon: <Icon icon="devicon:angular" />,
                    },
                    {
                        label: 'static',
                        url: '/docs/v2/packages/static',
                        icon: <Icon icon="vscode-icons:file-type-svg" />,
                    },
                    {
                        label: 'JS',
                        url: '/docs/v2/packages/js',
                        icon: <Icon icon="devicon:javascript" />,
                    },
                ],
            },
            {
                title: 'Community',
                links: [
                    {
                        label: 'Contribute',
                        url: 'https://github.com/saoudi-h/solar-icons/blob/main/CONTRIBUTING.md',
                        icon: <HelpIcon size={20} />,
                        external: true,
                    },
                    {
                        label: 'Issues',
                        url: 'https://github.com/saoudi-h/solar-icons/issues',
                        icon: <BugMinimalisticIcon size={20} />,
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
                        url: '/docs/v2/community/license',
                        icon: <DiplomaIcon size={20} />,
                    },
                    {
                        label: 'Changelog',
                        url: '/docs/v2/community/changelog',
                        icon: <SmartphoneUpdateIcon size={20} />,
                    },
                ],
            },
        ],
    },
    heroSection: {
        title: {
            part1: 'Solar Icons',
            part2: 'for Modern Frameworks',
        },
        content: '1,246 unique icons in six styles, packaged for modern web and mobile frameworks.',
        exploreIcons: {
            label: 'Explore Icons',
            href: '/icons',
            Icon: <RoundedMagnifierIcon size={20} />,
            variant: 'outline',
        },
        getStarted: {
            label: 'Get Started',
            href: '/docs/v2',
            Icon: <RocketIcon size={20} />,
        },
    },
    packageSection: {
        packages: [
            {
                title: 'React',
                link: '/docs/v2/packages/react',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/react',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/react',
                content:
                    'Recommended React package. CSS custom properties, SolarProvider, unit-per-style.',
                iconify: 'devicon:react',
                status: 'released',
            },
            {
                title: 'React Native',
                link: '/docs/v2/packages/react-native',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/react-native',
                githubLink:
                    'https://github.com/saoudi-h/solar-icons/tree/main/packages/react-native',
                content: 'React Native and Expo SVG components.',
                iconify: 'devicon:react',
                status: 'released',
            },
            {
                title: 'Vue',
                link: '/docs/v2/packages/vue',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/vue',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/vue',
                content: 'Vue 3 package. Supports global configuration and dynamic weights.',
                status: 'released',
                iconify: 'devicon:vuejs',
            },
            {
                title: 'Nuxt',
                link: '/docs/v2/packages/nuxt',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/nuxt',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/nuxt',
                content: 'Nuxt 3 module with auto-import and configuration support.',
                status: 'released',
                iconify: 'devicon:nuxtjs',
            },
            {
                title: 'Svelte',
                link: '/docs/v2/packages/svelte',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/svelte',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/svelte',
                content: 'Svelte 5 components using runes.',
                status: 'released',
                iconify: 'devicon:svelte',
            },
            {
                title: 'Solid',
                link: '/docs/v2/packages/solid',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/solid',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/solid',
                content: 'Lightweight SolidJS components.',
                status: 'released',
                iconify: 'devicon:solidjs',
            },
            {
                title: 'Angular',
                link: '/docs/v2/packages/angular',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/angular',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/angular',
                content: 'Angular 17+ standalone components using Signals.',
                status: 'released',
                iconify: 'devicon:angular',
            },
            {
                title: 'Static',
                link: '/docs/v2/packages/static',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/static',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/static',
                content:
                    'Framework-agnostic SVGs, sprites, and string templates. Drop icons anywhere, zero JS required.',
                status: 'new',
                iconify: 'vscode-icons:file-type-svg',
            },
            {
                title: 'JS',
                link: '/docs/v2/packages/js',
                npmLink: 'https://www.npmjs.com/package/@solar-icons/js',
                githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/js',
                content:
                    'Native DOM injection with zero VDOM overhead. Just SVG, no framework required.',
                status: 'new',
                iconify: 'devicon:javascript',
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
            Icon: <HouseIcon size={20} />,
        },
        secondaryAction: {
            onClick: () => history.back(),
            label: 'Go Back',
            Icon: <ArrowLeftIcon size={20} />,
            variant: 'outline',
        },
    },
}
