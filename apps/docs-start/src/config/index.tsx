import { ArrowLeftIcon } from '@solar-icons/react/linear/arrow-left'
import { BugMinimalisticIcon } from '@solar-icons/react/linear/bug-minimalistic'
import { DiplomaIcon } from '@solar-icons/react/linear/diploma'
import { HelpIcon } from '@solar-icons/react/linear/help'
import { HouseIcon } from '@solar-icons/react/linear/house'
import { RocketIcon } from '@solar-icons/react/linear/rocket'
import { RoundedMagnifierIcon } from '@solar-icons/react/linear/rounded-magnifier'
import { SmartphoneUpdateIcon } from '@solar-icons/react/linear/smartphone-update'
import { catalogStats } from '~generated/utils'

import type { HeroSectionProps } from '~/components/home-page/sections/hero'
import type { PackageSectionProps } from '~/components/home-page/sections/packages'
import type { FooterProps } from '~/components/ui-blocks/footer/types'
import type { SuperButtonProps } from '~/components/ui/SuperButton'
import { Icon } from '~/lib/icons'
import { packages } from '~/lib/packages'
import { projectLinks } from '~/lib/project-links'

export interface NotFoundProps {
    title: {
        part1: string
        part2: string
    }
    description: string
    primaryAction: SuperButtonProps
    secondaryAction: SuperButtonProps
}

export interface Config {
    footer: FooterProps
    heroSection: HeroSectionProps
    packageSection: PackageSectionProps
    notFound: NotFoundProps
}

export const config: Config = {
    footer: {
        showSurface: false,
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
                        label: 'Solid (1 & 2)',
                        url: '/docs/v2/packages/solid',
                        icon: <Icon icon="devicon:solidjs" />,
                    },
                    {
                        label: 'Angular',
                        url: '/docs/v2/packages/angular',
                        icon: <Icon icon="devicon:angular" />,
                    },
                    {
                        label: 'Laravel Blade',
                        url: '/docs/v2/packages/blade',
                        icon: <Icon icon="devicon:laravel" />,
                    },
                    {
                        label: 'Rails',
                        url: '/docs/v2/packages/rails',
                        icon: <Icon icon="thesvg-color:ruby-on-rails" />,
                    },
                    {
                        label: 'Blazor',
                        url: '/docs/v2/packages/blazor',
                        icon: <Icon icon="devicon:blazor" />,
                    },
                    {
                        label: 'Flutter',
                        url: '/docs/v2/packages/flutter',
                        icon: <Icon icon="devicon:flutter" />,
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
                        label: 'Request an icon',
                        url: projectLinks.requestIcon,
                        icon: <HelpIcon size={20} />,
                        external: true,
                    },
                    {
                        label: 'Contribute',
                        url: '/docs/v2/community/contributing',
                        icon: <HelpIcon size={20} />,
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
                        label: 'Figma library',
                        url: projectLinks.figmaLibrary,
                        icon: <Icon icon="solar:figma-bold-duotone" />,
                        external: true,
                    },
                    {
                        label: 'Figma plugin',
                        url: projectLinks.figmaPlugin,
                        icon: <Icon icon="solar:figma-bold-duotone" />,
                        external: true,
                    },
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
            {
                title: 'Other projects',
                links: [
                    {
                        label: 'Postdot',
                        url: 'https://postdot.app/?utm_source=solar-icons.dev&utm_medium=footer',
                        external: true,
                    },
                    {
                        label: 'RateLock',
                        url: 'https://ratelock-docs.vercel.app/?utm_source=solar-icons.dev&utm_medium=footer',
                        external: true,
                    },
                ],
            },
        ],
    },
    heroSection: {
        title: {
            part1: 'Solar Icons for',
            part2: 'Modern Frameworks',
        },
        content: `${catalogStats.formattedIconCount} unique icons in six styles, packaged for modern web and mobile frameworks.`,
        exploreIcons: {
            label: 'Explore Icons',
            href: '/icons',
            Icon: <RoundedMagnifierIcon size={20} />,
        },
        getStarted: {
            label: 'Get Started',
            href: '/docs/v2',
            Icon: <RocketIcon size={20} />,
            variant: 'outline',
            colors: 'secondary',
        },
    },
    packageSection: {
        packages,
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
