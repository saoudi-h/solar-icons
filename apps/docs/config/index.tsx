import type { NotFoundProps } from "@/app/not-found";
import type { HeroSectionProps } from "@/components/home-page/sections/hero";
import type { PackageSectionProps } from "@/components/home-page/sections/packages";
import type { FooterProps } from "@/components/ui-blocks/footer/types";
import { Icon } from "@iconify/react";
import {
  ArrowLeft,
  BugMinimalistic,
  Diploma,
  Help,
  House,
  Rocket,
  RoundedMagnifier,
  SmartphoneUpdate,
} from "@solar-icons/react/ssr";

export interface Config {
  footer: FooterProps;
  heroSection: HeroSectionProps;
  packageSection: PackageSectionProps;
  notFound: NotFoundProps;
}

export const config: Config = {
  footer: {
    bottomText: `© ${new Date().getFullYear()} Solar Icons, Code licensed MIT. Icons by 480 Design (CC BY 4.0).`,
    sections: [
      {
        title: "Documentation",
        links: [
          {
            label: "React",
            url: "/docs/packages/react",
            icon: <Icon icon="devicon:react" />,
          },
          {
            label: "React Perf",
            url: "/docs/packages/react-perf",
            icon: <Icon icon="devicon:react" />,
          },
          {
            label: "React Native",
            url: "/docs/packages/react-native",
            icon: <Icon icon="devicon:react" />,
          },
          {
            label: "Vue",
            url: "/docs/packages/vue",
            icon: <Icon icon="devicon:vuejs" />,
          },
          {
            label: "Nuxt",
            url: "/docs/packages/nuxt",
            icon: <Icon icon="devicon:nuxtjs" />,
          },
          {
            label: "Svelte",
            url: "/docs/packages/svelte",
            icon: <Icon icon="devicon:svelte" />,
          },
          {
            label: "Solid",
            url: "/docs/packages/solid",
            icon: <Icon icon="devicon:solidjs" />,
          },
          {
            label: "Angular",
            url: "/docs/packages/angular",
            icon: <Icon icon="devicon:angular" />,
          },
        ],
      },
      {
        title: "Community",
        links: [
          {
            label: "Contribute",
            url: "https://github.com/saoudi-h/solar-icons/blob/main/CONTRIBUTING.md",
            icon: <Help size={20} />,
            external: true,
          },
          {
            label: "Issues",
            url: "https://github.com/saoudi-h/solar-icons/issues",
            icon: <BugMinimalistic size={20} />,
            external: true,
          },
          {
            label: "GitHub",
            url: "https://github.com/saoudi-h/solar-icons",
            icon: <Icon icon="akar-icons:github-fill" />,
            external: true,
          },
        ],
      },
      {
        title: "Resources",
        links: [
          {
            label: "License",
            url: "/docs/community/license",
            icon: <Diploma size={20} />,
          },
          {
            label: "Changelog",
            url: "/docs/community/changelog",
            icon: <SmartphoneUpdate size={20} />,
          },
        ],
      },
    ],
  },
  heroSection: {
    title: {
      part1: "Solar Icons",
      part2: "for Modern Frameworks",
    },
    content:
      "1,246 unique icons in six styles, packaged for modern web and mobile frameworks.",
    exploreIcons: {
      label: "Explore Icons",
      href: "/icons",
      Icon: <RoundedMagnifier size={20} />,
      variant: "outline",
    },
    getStarted: {
      label: "Get Started",
      href: "/docs",
      Icon: <Rocket size={20} />,
    },
  },
  packageSection: {
    packages: [
      {
        title: "React",
        link: "/docs/packages/react",
        githubLink: "https://github.com/saoudi-h/solar-icons/tree/main/packages/react",
        npmLink: "https://www.npmjs.com/package/@solar-icons/react",
        content: "Standard React package. Supports global provider context and Server Components.",
        iconify: "devicon:react",
        status: "released",
      },
      {
        title: "React Perf",
        link: "/docs/packages/react-perf",
        npmLink: "https://www.npmjs.com/package/@solar-icons/react-perf",
        githubLink: "https://github.com/saoudi-h/solar-icons/tree/main/packages/react-perf",
        content: "React performance package. Optimized for minimal bundle size.",
        iconify: "devicon:react",
        status: "released",
      },
      {
        title: "React Native",
        link: "/docs/packages/react-native",
        npmLink: "https://www.npmjs.com/package/@solar-icons/react-native",
        githubLink: "https://github.com/saoudi-h/solar-icons/tree/main/packages/react-native",
        content: "React Native and Expo SVG components.",
        iconify: "devicon:react",
        status: "released",
      },
      {
        title: "Vue",
        link: "/docs/packages/vue",
        npmLink: "https://www.npmjs.com/package/@solar-icons/vue",
        githubLink: "https://github.com/saoudi-h/solar-icons/tree/main/packages/vue",
        content: "Vue 3 package. Supports global configuration and dynamic weights.",
        status: "released",
        iconify: "devicon:vuejs",
      },
      {
        title: "Nuxt",
        link: "/docs/packages/nuxt",
        npmLink: "https://www.npmjs.com/package/@solar-icons/nuxt",
        githubLink: "https://github.com/saoudi-h/solar-icons/tree/main/packages/nuxt",
        content: "Nuxt 3 module with auto-import and configuration support.",
        status: "released",
        iconify: "devicon:nuxtjs",
      },
      {
        title: "Svelte",
        link: "/docs/packages/svelte",
        npmLink: "https://www.npmjs.com/package/@solar-icons/svelte",
        githubLink: "https://github.com/saoudi-h/solar-icons/tree/main/packages/svelte",
        content: "Svelte 5 components using runes.",
        status: "released",
        iconify: "devicon:svelte",
      },
      {
        title: "Solid",
        link: "/docs/packages/solid",
        npmLink: "https://www.npmjs.com/package/@solar-icons/solid",
        githubLink: "https://github.com/saoudi-h/solar-icons/tree/main/packages/solid",
        content: "Lightweight SolidJS components.",
        status: "released",
        iconify: "devicon:solidjs",
      },
      {
        title: "Angular",
        link: "/docs/packages/angular",
        npmLink: "https://www.npmjs.com/package/@solar-icons/angular",
        githubLink: "https://github.com/saoudi-h/solar-icons/tree/main/packages/angular",
        content: "Angular 17+ standalone components using Signals.",
        status: "released",
        iconify: "devicon:angular",
      },
      {
        title: "Qwik",
        status: "not-started",
        iconify: "devicon:qwik",
      },
    ],
  },
  notFound: {
    title: {
      part1: "404",
      part2: "Page Not Found",
    },
    description: "The page you are looking for does not exist.",
    primaryAction: {
      label: "Go Home",
      href: "/",
      Icon: <House size={20} />,
    },
    secondaryAction: {
      onClick: () => history.back(),
      label: "Go Back",
      Icon: <ArrowLeft size={20} />,
      variant: "outline",
    },
  },
};
