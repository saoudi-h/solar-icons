import { createFileRoute, Link } from '@tanstack/react-router'

import { ThemeToggle } from '~/components/theme-toggle'
import { seo } from '~/utils/seo'

export const Route = createFileRoute('/')({
    head: () =>
        seo({
            title: 'Solar Icons',
            description: 'The icon library for React applications and more',
        }),
    component: Home,
})

const milestones = [
    {
        id: 'M0',
        title: 'Foundations',
        state: 'complete',
        detail: 'TanStack Start + static prerender, Tailwind 4, theme, SEO, Umami, Cloudflare static assets.',
    },
    {
        id: 'M1',
        title: '/icons',
        state: 'in progress',
        detail: 'Explorer page, URL filters, lazy icon data, virtualised grid.',
    },
    {
        id: 'M2',
        title: 'Home',
        state: 'planned',
        detail: 'Marketing sections, hero, stats.',
    },
    {
        id: 'M3',
        title: '/docs, blog, special pages',
        state: 'planned',
        detail: 'Fumadocs integration, static search, llms.txt, sitemap, RSS, OG images.',
    },
    {
        id: 'M4',
        title: 'Feedback',
        state: 'planned',
        detail: 'Standalone Worker for the GitHub App discussion feedback.',
    },
    {
        id: 'M5',
        title: 'Parity and cutover',
        state: 'planned',
        detail: 'URL parity script, performance budgets, runbook.',
    },
] as const

function Home() {
    return (
        <main className="mx-auto flex min-h-screen max-w-3xl flex-col gap-10 px-6 py-16">
            <header className="flex items-start justify-between gap-4">
                <div className="flex flex-col gap-2">
                    <p className="text-sm font-medium text-muted-foreground">Migration M0</p>
                    <h1 className="text-3xl font-semibold tracking-tight">
                        Solar Icons on TanStack Start
                    </h1>
                    <p className="text-muted-foreground">
                        Static site target: every page is prerendered at build time and served from
                        Cloudflare static assets, with no Worker invocation.
                    </p>
                </div>
                <ThemeToggle />
            </header>

            <section className="grid gap-3">
                {milestones.map(milestone => (
                    <article
                        key={milestone.id}
                        className="flex flex-col gap-1 rounded-lg border border-border p-4">
                        <div className="flex items-center gap-2">
                            <span className="font-mono text-sm text-muted-foreground">
                                {milestone.id}
                            </span>
                            <h2 className="font-medium">{milestone.title}</h2>
                            <span className="ml-auto text-xs text-muted-foreground">
                                {milestone.state}
                            </span>
                        </div>
                        <p className="text-sm text-muted-foreground">{milestone.detail}</p>
                    </article>
                ))}
            </section>

            <Link
                to="/icons"
                search={{}}
                className="w-fit rounded-md border border-border px-4 py-2 text-sm font-medium hover:bg-accent">
                Open the icon explorer
            </Link>
        </main>
    )
}
