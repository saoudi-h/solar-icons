'use client'

import githubIcon from '@iconify-icons/mdi/github'
import { Icon } from '@iconify/react'
import { HamburgerMenuIcon } from '@solar-icons/react/dynamic/hamburger-menu'
import { MoonIcon } from '@solar-icons/react/dynamic/moon'
import { SunIcon } from '@solar-icons/react/dynamic/sun'
import { SearchTrigger } from 'fumadocs-ui/layouts/shared/slots/search-trigger'
import { motion } from 'motion/react'
import { useTheme } from 'next-themes'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import React, { useEffect, useState } from 'react'

import { Logo } from '@/components/ui-blocks/logo'
import { Button } from '@/components/ui/button'
import {
    Drawer,
    DrawerClose,
    DrawerContent,
    DrawerHeader,
    DrawerTitle,
    DrawerTrigger,
} from '@/components/ui/drawer'
import { cn } from '@/lib/utils'

import { SITE_HEADER_HEIGHT, SITE_HEADER_RESERVED_HEIGHT } from './constants'

const NAV_LINKS = [
    { href: '/docs/v2', label: 'Documentation' },
    { href: '/icons', label: 'Explore Icons' },
    { href: '/blog', label: 'Blog' },
] as const

function isNavLinkActive(pathname: string, href: string): boolean {
    return pathname === href || pathname.startsWith(href + '/')
}

function SiteNavLink({
    href,
    label,
    mobile = false,
    pathname,
}: {
    href: string
    label: string
    mobile?: boolean
    pathname: string
}) {
    const active = isNavLinkActive(pathname, href)

    return (
        <Link
            href={href}
            aria-current={active ? 'page' : undefined}
            className={cn(
                mobile
                    ? `
                      flex h-11 w-full items-center rounded-xl px-4 text-base text-muted-foreground
                      transition-colors
                      hover:bg-accent/70 hover:text-foreground
                    `
                    : `
                      relative inline-flex h-11 items-center rounded-full px-4 text-sm
                      text-muted-foreground transition-colors duration-150 ease-out
                      hover:text-foreground
                    `,
                'focus-visible:ring-2 focus-visible:ring-ring focus-visible:outline-none',
                active && (mobile ? 'bg-accent/70 text-foreground' : 'text-foreground')
            )}>
            {label}
            {active && !mobile ? (
                <motion.span
                    layoutId="site-header-active-link"
                    className="absolute inset-x-4 bottom-1 h-px rounded-full bg-primary"
                    transition={{ type: 'spring', stiffness: 420, damping: 32 }}
                />
            ) : null}
        </Link>
    )
}

function SiteThemeToggle() {
    const { resolvedTheme, setTheme } = useTheme()
    const [mounted, setMounted] = useState(false)

    useEffect(() => {
        setMounted(true)
    }, [])

    const isDark = mounted && resolvedTheme === 'dark'

    return (
        <button
            type="button"
            data-theme-toggle
            aria-label={isDark ? 'Switch to light theme' : 'Switch to dark theme'}
            title={isDark ? 'Switch to light theme' : 'Switch to dark theme'}
            onClick={() => setTheme(isDark ? 'light' : 'dark')}
            className="
              inline-flex size-11 shrink-0 items-center justify-center rounded-full
              text-muted-foreground transition-colors
              hover:bg-accent hover:text-foreground
              focus-visible:ring-2 focus-visible:ring-ring focus-visible:outline-none
            ">
            {isDark ? (
                <SunIcon aria-hidden weight="Linear" className="size-5" />
            ) : (
                <MoonIcon aria-hidden weight="Linear" className="size-5" />
            )}
        </button>
    )
}

function GitHubLink({ mobile = false }: { mobile?: boolean }) {
    return (
        <Link
            href="https://github.com/saoudi-h/solar-icons"
            target="_blank"
            rel="noreferrer"
            aria-label="Solar Icons on GitHub"
            title="GitHub"
            className={cn(
                `
                  inline-flex size-11 shrink-0 items-center justify-center rounded-full
                  text-muted-foreground transition-colors
                  hover:bg-accent hover:text-foreground
                  focus-visible:ring-2 focus-visible:ring-ring focus-visible:outline-none
                `,
                mobile && 'w-full justify-start gap-3 rounded-xl px-4'
            )}>
            <Icon icon={githubIcon} aria-hidden className="size-5" ssr />
            {mobile ? <span>GitHub</span> : null}
        </Link>
    )
}

function MobileNavigation({ pathname }: { pathname: string }) {
    return (
        <Drawer direction="right">
            <DrawerTrigger asChild>
                <Button
                    variant="ghost"
                    size="icon"
                    aria-label="Open navigation"
                    className="
                      rounded-full border-transparent! text-muted-foreground
                      hover:bg-accent hover:text-foreground
                    ">
                    <HamburgerMenuIcon aria-hidden weight="Linear" />
                </Button>
            </DrawerTrigger>
            <DrawerContent
                hideHandler
                className="
                  w-[min(22rem,calc(100vw-1rem))] rounded-l-3xl border-border/70 bg-background/95
                  p-2 backdrop-blur-xl
                ">
                <DrawerHeader className="border-b border-border/60 px-4 pt-3 pb-5">
                    <DrawerTitle className="font-heading text-xl">Solar Icons</DrawerTitle>
                </DrawerHeader>
                <div className="flex min-h-0 flex-1 flex-col gap-8 overflow-y-auto px-2 py-5">
                    <nav aria-label="Primary navigation" className="flex flex-col gap-1">
                        {NAV_LINKS.map(link => (
                            <DrawerClose key={link.href} asChild>
                                <SiteNavLink {...link} mobile pathname={pathname} />
                            </DrawerClose>
                        ))}
                    </nav>
                    <div className="mt-auto flex flex-col gap-1 border-t border-border/60 pt-4">
                        <GitHubLink mobile />
                        <div className="flex items-center justify-between rounded-xl px-4 py-1">
                            <span className="text-sm text-muted-foreground">Theme</span>
                            <SiteThemeToggle />
                        </div>
                    </div>
                </div>
            </DrawerContent>
        </Drawer>
    )
}

export function SiteHeader({ className, ...props }: React.ComponentProps<'header'>) {
    const pathname = usePathname()
    const [isScrolled, setIsScrolled] = useState(false)

    useEffect(() => {
        const updateScrollState = () => setIsScrolled(window.scrollY > 0)

        updateScrollState()
        window.addEventListener('scroll', updateScrollState, { passive: true })
        return () => window.removeEventListener('scroll', updateScrollState)
    }, [])

    return (
        <header
            {...props}
            data-site-header
            className={cn('sticky top-0 z-40 w-full shrink-0', className)}
            style={{ height: SITE_HEADER_RESERVED_HEIGHT }}>
            <div className="absolute inset-x-0 top-4 px-0 md:px-10">
                <div className="mx-auto w-full max-w-384">
                    <div
                        data-site-header-shell
                        className="relative mx-4 flex items-center rounded-full"
                        style={{ height: SITE_HEADER_HEIGHT }}>
                        <div
                            data-site-header-backdrop
                            aria-hidden
                            className="
                              pointer-events-none absolute inset-0 rounded-full bg-background
                            "
                        />
                        <motion.div
                            data-site-header-surface
                            aria-hidden
                            className="
                              pointer-events-none absolute inset-0 overflow-hidden rounded-full
                              bg-neutral-100 shadow-xs transition-opacity duration-200 ease-out
                              motion-reduce:transition-none
                              dark:bg-neutral-950
                            "
                            style={{ opacity: isScrolled ? 1 : 0 }}></motion.div>
                        <div className="relative flex size-full items-center px-3 md:px-5">
                            <Link
                                href="/"
                                aria-label="Solar Icons home"
                                className="
                                  shrink-0 rounded-xl
                                  focus-visible:ring-2 focus-visible:ring-ring
                                  focus-visible:outline-none
                                ">
                                <Logo />
                            </Link>
                            <nav
                                aria-label="Primary navigation"
                                className="ml-2 hidden items-center gap-1 lg:flex">
                                {NAV_LINKS.map(link => (
                                    <SiteNavLink key={link.href} {...link} pathname={pathname} />
                                ))}
                            </nav>
                            <div className="ml-auto hidden items-center gap-0.5 lg:flex">
                                <SearchTrigger
                                    size="icon"
                                    color="ghost"
                                    title="Search"
                                    className="
                                      size-11! rounded-full border-transparent!
                                      text-muted-foreground
                                      hover:bg-accent hover:text-foreground
                                    "
                                />
                                <SiteThemeToggle />
                                <GitHubLink />
                            </div>
                            <div className="ml-auto flex items-center gap-0.5 lg:hidden">
                                <SearchTrigger
                                    size="icon"
                                    color="ghost"
                                    title="Search"
                                    className="
                                      size-11! rounded-full border-transparent!
                                      text-muted-foreground
                                      hover:bg-accent hover:text-foreground
                                    "
                                />
                                <MobileNavigation pathname={pathname} />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    )
}
