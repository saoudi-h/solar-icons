import { ArrowRightIcon } from '@solar-icons/react/dynamic/arrow-right'
import { RoundedMagnifierIcon } from '@solar-icons/react/dynamic/rounded-magnifier'
import { RocketIcon } from '@solar-icons/react/dynamic/rocket'
import { Link } from '@tanstack/react-router'

import { Icon } from '~/components/icons'
import { HeroRotation } from '~/components/home/hero-rotation'
import { packages } from '~/lib/packages'
import siteStats from '~/generated/site-stats.json'

function SectionShell({
    id,
    title,
    highlight,
    description,
    children,
}: {
    id: string
    title: React.ReactNode
    highlight?: string
    description?: string
    children?: React.ReactNode
}) {
    return (
        <section
            id={id}
            className="relative flex w-full max-w-384 flex-col items-center gap-8 self-center px-3 py-12 md:px-0">
            <div className="relative w-full gap-2 overflow-hidden rounded-2xl bg-accent/30 py-12 md:rounded-3xl">
                <div
                    className="absolute inset-0"
                    style={{
                        background:
                            'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                    }}
                />
                <div className="relative flex flex-col items-center justify-center gap-4">
                    <h2 className="max-w-4xl text-center font-heading text-3xl font-light text-balance md:text-4xl">
                        {title}{' '}
                        {highlight ? (
                            <span className="font-body text-muted-foreground">{highlight}</span>
                        ) : null}
                    </h2>
                    {description ? (
                        <p className="max-w-[620px] text-center text-sm/relaxed text-muted-foreground md:text-base">
                            {description}
                        </p>
                    ) : null}
                    {children}
                </div>
            </div>
        </section>
    )
}

export function HeroSection() {
    return (
        <section className="relative flex w-full max-w-384 flex-col items-center self-center px-3 md:px-0">
            <div className="relative grid w-full gap-6 overflow-hidden rounded-2xl bg-accent/30 py-8 md:rounded-3xl md:py-12">
                <div
                    className="absolute inset-0"
                    style={{
                        background:
                            'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                    }}
                />
                <div className="relative z-10 flex flex-col items-center gap-6 px-3 pt-8 text-center md:pt-16">
                    <h1 className="w-full max-w-200 font-heading text-4xl font-light text-balance md:text-6xl">
                        Solar Icons for
                        <br />
                        <span className="font-body text-muted-foreground">Modern Frameworks</span>
                    </h1>
                    <p className="w-full max-w-[466px] px-3 text-center text-base text-balance text-muted-foreground sm:px-0 md:text-lg/6">
                        1,451 unique icons in six styles, packaged for modern web and mobile
                        frameworks.
                    </p>
                    <div className="flex flex-col items-center gap-3 min-[360px]:flex-row sm:gap-6">
                        <Link
                            to="/icons"
                            className="inline-flex items-center gap-2 rounded-full bg-primary px-5 py-2.5 text-sm font-semibold text-primary-foreground transition-transform hover:scale-[1.02]">
                            <RoundedMagnifierIcon size={20} />
                            Explore Icons
                        </Link>
                        <Link
                            to="/docs/$"
                            params={{ _splat: 'v2' }}
                            className="inline-flex items-center gap-2 rounded-full border border-border bg-background/60 px-5 py-2.5 text-sm font-semibold transition-transform hover:scale-[1.02]">
                            <RocketIcon size={20} />
                            Get Started
                        </Link>
                    </div>
                </div>
                <div className="relative px-6 pb-4">
                    <HeroRotation />
                </div>
            </div>
        </section>
    )
}

export function PackagesSection() {
    return (
        <SectionShell
            id="available-packages"
            title="Integrate"
            highlight="Solar Icons."
            description="Choose a framework package, standalone asset, or workflow tool.">
            <div className="mx-auto mt-10 grid w-full max-w-6xl grid-cols-1 gap-4 px-4 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
                {packages.map(pkg => (
                    <article
                        key={pkg.title}
                        className="flex flex-col gap-3 rounded-2xl border border-border bg-background/70 p-5 transition-colors hover:border-primary/50">
                        <div className="flex items-center gap-3">
                            <Icon icon={pkg.iconify} className="size-7 shrink-0" />
                            <h3 className="font-heading text-lg font-bold">{pkg.title}</h3>
                        </div>
                        {pkg.content ? (
                            <p className="text-sm/relaxed text-muted-foreground">{pkg.content}</p>
                        ) : null}
                        <div className="mt-auto flex flex-wrap items-center gap-3 pt-2 text-sm">
                            <Link
                                to="/docs/$"
                                params={{ _splat: pkg.link.replace('/docs/', '') }}
                                className="inline-flex items-center gap-1 font-medium text-primary hover:underline">
                                Docs
                                <ArrowRightIcon size={14} weight="Linear" />
                            </Link>
                            {pkg.npmLink ? (
                                <a
                                    href={pkg.npmLink}
                                    rel="noreferrer noopener"
                                    target="_blank"
                                    className="text-muted-foreground hover:text-foreground">
                                    npm
                                </a>
                            ) : null}
                            {pkg.githubLink ? (
                                <a
                                    href={pkg.githubLink}
                                    rel="noreferrer noopener"
                                    target="_blank"
                                    className="text-muted-foreground hover:text-foreground">
                                    GitHub
                                </a>
                            ) : null}
                        </div>
                    </article>
                ))}
            </div>
        </SectionShell>
    )
}

export function CommunitySection() {
    return (
        <SectionShell
            id="community"
            title="Built in the"
            highlight="open."
            description="Solar Icons is maintained in the open, with a community of contributors.">
            <div className="mt-10 grid w-full max-w-3xl gap-4 px-4 sm:grid-cols-2">
                <div className="flex flex-col items-center gap-2 rounded-2xl border border-border bg-background/70 p-6">
                    <span className="font-heading text-4xl font-bold tabular-nums">
                        {siteStats.stars.toLocaleString('en-US')}
                    </span>
                    <span className="text-sm text-muted-foreground">GitHub stars</span>
                </div>
                <div className="flex flex-col items-center gap-2 rounded-2xl border border-border bg-background/70 p-6">
                    <span className="font-heading text-4xl font-bold tabular-nums">
                        {siteStats.weeklyDownloads.toLocaleString('en-US')}
                    </span>
                    <span className="text-sm text-muted-foreground">Weekly downloads</span>
                </div>
            </div>
            <div className="mt-8 flex flex-wrap items-center justify-center gap-4 text-sm">
                <a
                    href="https://github.com/saoudi-h/solar-icons"
                    rel="noreferrer noopener"
                    target="_blank"
                    className="inline-flex items-center gap-2 rounded-full border border-border px-4 py-2 font-medium hover:bg-accent">
                    <Icon icon="akar-icons:github-fill" className="size-4" />
                    Star the repository
                </a>
                <a
                    href="https://github.com/saoudi-h/solar-icons/blob/main/CONTRIBUTING.md"
                    rel="noreferrer noopener"
                    target="_blank"
                    className="inline-flex items-center gap-2 rounded-full border border-border px-4 py-2 font-medium hover:bg-accent">
                    Contribute
                </a>
            </div>
        </SectionShell>
    )
}

export function FeaturesSection() {
    const features = [
        {
            title: 'Six styles',
            description:
                'Bold, Linear, Outline, BoldDuotone, LineDuotone and Broken, with CSS variables and duotone colors.',
        },
        {
            title: 'One package per framework',
            description:
                'React, Vue, Nuxt, Svelte, Solid, Angular, React Native, Blade, Rails, Flutter and more.',
        },
        {
            title: 'Tree-shakable',
            description:
                'Import a single icon or a whole category. The bundle only carries what you use.',
        },
        {
            title: 'Searchable explorer',
            description:
                'Browse 1,451 icons by category, style or name, and copy the SVG or the code.',
        },
    ]

    return (
        <SectionShell
            id="features"
            title="Everything you need to"
            highlight="ship icons."
            description="The library covers the details that make an icon set usable in production.">
            <div className="mt-10 grid w-full max-w-5xl gap-4 px-4 sm:grid-cols-2">
                {features.map(feature => (
                    <article
                        key={feature.title}
                        className="flex flex-col gap-2 rounded-2xl border border-border bg-background/70 p-5">
                        <h3 className="font-heading text-lg font-bold">{feature.title}</h3>
                        <p className="text-sm/relaxed text-muted-foreground">
                            {feature.description}
                        </p>
                    </article>
                ))}
            </div>
        </SectionShell>
    )
}

export function AiToolsSection() {
    const tools = [
        {
            title: 'MCP server',
            description: 'Resolve the right icon from a description, with the MCP server.',
        },
        {
            title: 'Agent skill',
            description: 'Give coding agents the catalogue and the conventions of the library.',
        },
        {
            title: 'CLI',
            description: 'Copy icons, convert them and scaffold a project from the terminal.',
        },
    ]

    return (
        <SectionShell
            id="ai-tools"
            title="Ready for"
            highlight="AI tools."
            description="The catalogue is available to the tools you already use.">
            <div className="mt-10 grid w-full max-w-5xl gap-4 px-4 sm:grid-cols-3">
                {tools.map(tool => (
                    <article
                        key={tool.title}
                        className="flex flex-col gap-2 rounded-2xl border border-border bg-background/70 p-5">
                        <h3 className="font-heading text-lg font-bold">{tool.title}</h3>
                        <p className="text-sm/relaxed text-muted-foreground">
                            {tool.description}
                        </p>
                    </article>
                ))}
            </div>
        </SectionShell>
    )
}
