/* Packages listed on the home page. Same list as the current app. */

export interface PackageCard {
    title: string
    link: string
    npmLink?: string
    githubLink?: string
    registryLink?: string
    content?: string
    iconify: string
    status: string
}

export const packages: PackageCard[] = [
    {
        title: 'React',
        link: '/docs/v2/packages/react',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/react',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/react',
        registryLink: undefined,
        content: 'Recommended React package. CSS custom properties, SolarProvider, unit-per-style.',
        iconify: 'devicon:react',
        status: 'released',
    },
    {
        title: 'React Native',
        link: '/docs/v2/packages/react-native',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/react-native',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/react-native',
        registryLink: undefined,
        content: 'React Native and Expo SVG components.',
        iconify: 'devicon:react',
        status: 'released',
    },
    {
        title: 'Vue',
        link: '/docs/v2/packages/vue',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/vue',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/vue',
        registryLink: undefined,
        content: 'Vue 3 package. Supports global configuration and dynamic weights.',
        iconify: 'devicon:vuejs',
        status: 'released',
    },
    {
        title: 'Nuxt',
        link: '/docs/v2/packages/nuxt',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/nuxt',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/nuxt',
        registryLink: undefined,
        content: 'Nuxt 3 module with auto-import and configuration support.',
        iconify: 'devicon:nuxtjs',
        status: 'released',
    },
    {
        title: 'Svelte',
        link: '/docs/v2/packages/svelte',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/svelte',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/svelte',
        registryLink: undefined,
        content: 'Svelte 5 components using runes.',
        iconify: 'devicon:svelte',
        status: 'released',
    },
    {
        title: 'Solid',
        link: '/docs/v2/packages/solid',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/solid',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/solid',
        registryLink: undefined,
        content: 'Lightweight SolidJS components.',
        iconify: 'devicon:solidjs',
        status: 'released',
    },
    {
        title: 'Angular',
        link: '/docs/v2/packages/angular',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/angular',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/angular',
        registryLink: undefined,
        content: 'Angular 17+ standalone components using Signals.',
        iconify: 'devicon:angular',
        status: 'released',
    },
    {
        title: 'Laravel Blade',
        link: '/docs/v2/packages/blade',
        npmLink: undefined,
        githubLink: 'https://github.com/solar-icons/blade',
        registryLink: 'https://packagist.org/packages/solar-icons/blade',
        content: 'Blade components for all six styles, plus a dynamic component and a PHP enum.',
        iconify: 'devicon:laravel',
        status: 'released',
    },
    {
        title: 'Rails',
        link: '/docs/v2/packages/rails',
        npmLink: undefined,
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/rails',
        registryLink: 'https://rubygems.org/gems/solar_icons',
        content:
            'View helper for all six styles, with duotone controls and configuration defaults.',
        iconify: 'thesvg-color:ruby-on-rails',
        status: 'released',
    },
    {
        title: 'Flutter',
        link: '/docs/v2/packages/flutter',
        npmLink: undefined,
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/flutter',
        registryLink: 'https://pub.dev/packages/flutter_solar_icons',
        content: 'Widgets for all six styles, plus theming and duotone controls.',
        iconify: 'devicon:flutter',
        status: 'released',
    },
    {
        title: 'Static',
        link: '/docs/v2/packages/static',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/static',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/static',
        registryLink: undefined,
        content:
            'Framework-agnostic SVGs, sprites, and string templates. Drop icons anywhere, zero JS required.',
        iconify: 'vscode-icons:file-type-svg',
        status: 'new',
    },
    {
        title: 'JS',
        link: '/docs/v2/packages/js',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/js',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/js',
        registryLink: undefined,
        content: 'Native DOM injection with zero VDOM overhead. Just SVG, no framework required.',
        iconify: 'devicon:javascript',
        status: 'new',
    },
    {
        title: 'Codemod',
        link: '/docs/v2/migration-to-v2/codemod',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/codemod',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/codemod',
        registryLink: undefined,
        content: 'Move a Solar Icons v1 project to v2 with a preview before any files change.',
        iconify: 'glyphs-poly:code',
        status: 'new',
    },
    {
        title: 'CLI',
        link: '/docs/v2/ai-tools',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/cli',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/cli',
        registryLink: undefined,
        content: 'Find icons and get ready-to-use code from the terminal.',
        iconify: 'grommet-icons:cli',
        status: 'new',
    },
    {
        title: 'MCP',
        link: '/docs/v2/ai-tools',
        npmLink: 'https://www.npmjs.com/package/@solar-icons/mcp',
        githubLink: 'https://github.com/saoudi-h/solar-icons/tree/main/packages/mcp',
        registryLink: undefined,
        content:
            'Let your AI assistant search the icon catalog and find the right code for your project.',
        iconify: 'bxl:mcp',
        status: 'new',
    },
]
