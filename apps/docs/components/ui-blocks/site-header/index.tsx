'use client'

import githubIcon from '@iconify-icons/mdi/github'
import { Icon } from '@iconify/react'
import { MoonIcon } from '@solar-icons/react/dynamic/moon'
import { SunIcon } from '@solar-icons/react/dynamic/sun'
import { SearchTrigger } from 'fumadocs-ui/layouts/shared/slots/search-trigger'
import { useLenis } from 'lenis/react'
import { motion, useReducedMotion } from 'motion/react'
import { useTheme } from 'next-themes'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import React, { useEffect, useState } from 'react'

import { Logo } from '@/components/ui-blocks/logo'
import { Button } from '@/components/ui/button'
import {
    Dialog,
    DialogClose,
    DialogContent,
    DialogTitle,
    DialogTrigger,
} from '@/components/ui/dialog'
import { cn } from '@/lib/utils'

import { SITE_HEADER_HEIGHT, SITE_HEADER_OFFSET, SITE_HEADER_RESERVED_HEIGHT } from './constants'

const NAV_LINKS = [
    { href: '/docs/v2', label: 'Documentation' },
    { href: '/icons', label: 'Explore Icons' },
    { href: '/blog', label: 'Blog' },
] as const

const MOBILE_MENU_CLOSED_CLIP_PATH = 'inset(0 0 100% 0 round 0 0 24px 24px)'
const MOTION_EASE = [0.23, 1, 0.32, 1] as const
const REVEAL_EASE = [0.77, 0, 0.175, 1] as const

function MenuToggleIcon({ open, reduceMotion }: { open: boolean; reduceMotion: boolean }) {
    const transition = reduceMotion ? { duration: 0 } : { duration: 0.24, ease: MOTION_EASE }

    return (
        <span aria-hidden className="relative block size-5">
            <motion.span
                className="absolute top-1/2 left-0 h-px w-5 origin-center rounded-full bg-current"
                initial={false}
                animate={{ rotate: open ? 45 : 0, y: open ? 0 : -4 }}
                transition={transition}
            />
            <motion.span
                className="absolute top-1/2 left-0 h-px w-5 origin-center rounded-full bg-current"
                initial={false}
                animate={{ opacity: open ? 0 : 1, scaleX: open ? 0.4 : 1 }}
                transition={transition}
            />
            <motion.span
                className="absolute top-1/2 left-0 h-px w-5 origin-center rounded-full bg-current"
                initial={false}
                animate={{ rotate: open ? -45 : 0, y: open ? 0 : 4 }}
                transition={transition}
            />
        </span>
    )
}

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
                      flex min-h-11 w-full items-center px-2 text-base tracking-tight
                      text-muted-foreground transition-colors duration-200
                      hover:text-foreground
                    `
                    : `
                      relative inline-flex h-11 items-center rounded-full px-4 text-sm
                      text-muted-foreground transition-colors duration-150 ease-out
                      hover:text-foreground
                    `,
                'focus-visible:ring-2 focus-visible:ring-ring focus-visible:outline-none',
                active && 'text-foreground'
            )}>
            {mobile ? (
                <span className="relative z-10 font-heading">{label}</span>
            ) : (
                <span className="relative z-10">{label}</span>
            )}
            {active && !mobile ? (
                <motion.span
                    layoutId="site-header-active-link"
                    aria-hidden
                    className="pointer-events-none absolute inset-0 z-0 rounded-full bg-accent/60"
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
                mobile && 'flex-1 justify-start gap-3 rounded-xl px-3'
            )}>
            <Icon icon={githubIcon} aria-hidden className="size-5" ssr />
            {mobile ? <span>GitHub</span> : null}
        </Link>
    )
}

function MobileNavigationTrigger({ open, reduceMotion }: { open: boolean; reduceMotion: boolean }) {
    return (
        <DialogTrigger asChild>
            <Button
                variant="ghost"
                size="icon"
                aria-label={open ? 'Close navigation' : 'Open navigation'}
                aria-expanded={open}
                aria-controls="mobile-navigation-panel"
                className="
                  size-11! rounded-full border-transparent! text-muted-foreground
                  hover:bg-accent hover:text-foreground
                ">
                <MenuToggleIcon open={open} reduceMotion={reduceMotion} />
            </Button>
        </DialogTrigger>
    )
}

function MobileNavigationPanel({
    pathname,
    open,
    onOpenChange,
}: {
    pathname: string
    open: boolean
    onOpenChange: (open: boolean) => void
}) {
    const lenis = useLenis()
    const shouldReduceMotion = useReducedMotion() ?? false

    useEffect(() => {
        onOpenChange(false)
    }, [onOpenChange, pathname])

    useEffect(() => {
        if (!open) return

        const body = document.body
        const previousBodyOverscrollBehavior = body.style.overscrollBehavior

        body.style.overscrollBehavior = 'none'

        const preventScroll = (event: Event) => event.preventDefault()
        const preventKeyboardScroll = (event: KeyboardEvent) => {
            if (
                ['ArrowDown', 'ArrowUp', 'End', 'Home', 'PageDown', 'PageUp', 'Space'].includes(
                    event.code
                )
            ) {
                event.preventDefault()
            }
        }

        window.addEventListener('wheel', preventScroll, { passive: false })
        window.addEventListener('touchmove', preventScroll, { passive: false })
        window.addEventListener('keydown', preventKeyboardScroll)
        lenis?.stop()

        return () => {
            lenis?.start()
            body.style.overscrollBehavior = previousBodyOverscrollBehavior
            window.removeEventListener('wheel', preventScroll)
            window.removeEventListener('touchmove', preventScroll)
            window.removeEventListener('keydown', preventKeyboardScroll)
        }
    }, [lenis, open])

    const panelVariants = {
        closed: {
            clipPath: MOBILE_MENU_CLOSED_CLIP_PATH,
            transition: shouldReduceMotion ? { duration: 0 } : { duration: 0.3, ease: MOTION_EASE },
        },
        open: {
            clipPath: 'inset(0px 0px 0px 0px round 0px)',
            transition: shouldReduceMotion
                ? { duration: 0 }
                : { duration: 0.52, ease: REVEAL_EASE },
        },
    }
    const navigationVariants = {
        closed: {
            opacity: 1,
            transition: shouldReduceMotion
                ? { duration: 0 }
                : { delayChildren: 0.02, staggerChildren: 0.04, staggerDirection: -1 },
        },
        open: {
            opacity: 1,
            transition: shouldReduceMotion
                ? { duration: 0 }
                : { delayChildren: 0.26, staggerChildren: 0.13 },
        },
    }
    const navigationItemVariants = {
        closed: {
            opacity: 0,
            transform: 'translateY(10px)',
            transition: shouldReduceMotion
                ? { duration: 0 }
                : { duration: 0.16, ease: MOTION_EASE },
        },
        open: {
            opacity: 1,
            transform: 'translateY(0px)',
            transition: shouldReduceMotion
                ? { duration: 0 }
                : { duration: 0.32, ease: MOTION_EASE },
        },
    }
    const footerVariants = {
        closed: {
            opacity: 0,
            transform: 'translateY(10px)',
            transition: shouldReduceMotion
                ? { duration: 0 }
                : { delay: 0.02, duration: 0.16, ease: MOTION_EASE },
        },
        open: {
            opacity: 1,
            transform: 'translateY(0px)',
            transition: shouldReduceMotion
                ? { duration: 0 }
                : { delay: 0.72, duration: 0.32, ease: MOTION_EASE },
        },
    }

    return (
        <DialogContent
            id="mobile-navigation-panel"
            portal={false}
            closeClassName="hidden"
            overlayClassName="z-30! bg-black/45!"
            className={cn(
                `
                  pointer-events-none! absolute! inset-0! z-0! flex! size-full! max-w-none!
                  translate-0! flex-col! gap-0! overflow-hidden! rounded-none! border-0!
                  bg-transparent! p-0! shadow-none!
                `,
                `
                  motion-safe:data-[state=closed]:duration-350!
                  motion-safe:data-[state=closed]:animate-out
                  motion-safe:data-[state=closed]:fade-out-0
                  motion-safe:data-[state=closed]:slide-out-to-left-0!
                  motion-safe:data-[state=closed]:slide-out-to-top-0!
                  motion-safe:data-[state=closed]:zoom-out-100!
                `,
                'motion-safe:data-[state=open]:animate-in',
                'motion-safe:data-[state=open]:fade-in-0',
                'motion-safe:data-[state=open]:duration-200!',
                'motion-safe:data-[state=open]:slide-in-from-left-0!',
                'motion-safe:data-[state=open]:slide-in-from-top-0!',
                'motion-safe:data-[state=open]:zoom-in-100!'
            )}>
            <motion.div
                data-mobile-navigation
                data-lenis-prevent
                variants={panelVariants}
                initial="closed"
                animate={open ? 'open' : 'closed'}
                className="
                  pointer-events-auto relative flex h-full min-h-0 flex-col overflow-y-auto px-4
                  pb-4
                ">
                <div
                    className="relative flex min-h-full flex-col"
                    style={{ paddingTop: `calc(${SITE_HEADER_HEIGHT}px + 1rem)` }}>
                    <DialogTitle className="sr-only">Navigation menu</DialogTitle>
                    <motion.nav
                        aria-label="Primary navigation"
                        variants={navigationVariants}
                        initial="closed"
                        animate={open ? 'open' : 'closed'}
                        className="mx-auto flex w-full max-w-xs flex-col gap-1 px-8 sm:max-w-md">
                        {NAV_LINKS.map(link => (
                            <motion.div key={link.href} variants={navigationItemVariants}>
                                <DialogClose asChild>
                                    <SiteNavLink {...link} mobile pathname={pathname} />
                                </DialogClose>
                            </motion.div>
                        ))}
                    </motion.nav>
                    <motion.div
                        variants={footerVariants}
                        initial="closed"
                        animate={open ? 'open' : 'closed'}
                        className="
                          mx-1 mt-auto flex items-center justify-between rounded-2xl bg-accent/25
                          p-1
                        ">
                        <GitHubLink mobile />
                        <SiteThemeToggle />
                    </motion.div>
                </div>
            </motion.div>
        </DialogContent>
    )
}

export function SiteHeader({ className, ...props }: React.ComponentProps<'header'>) {
    const pathname = usePathname()
    const shouldReduceMotion = useReducedMotion() ?? false
    const [isScrolled, setIsScrolled] = useState(false)
    const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false)

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
            className={cn('sticky top-0 z-60 w-full shrink-0', className)}
            style={{ height: SITE_HEADER_RESERVED_HEIGHT }}>
            <div className="absolute inset-x-0 top-4 px-0 md:px-10">
                <div className="mx-auto w-full max-w-384">
                    <Dialog
                        open={isMobileMenuOpen}
                        onOpenChange={setIsMobileMenuOpen}
                        modal={false}>
                        <motion.div
                            data-site-header-shell
                            initial={false}
                            animate={{
                                height: isMobileMenuOpen
                                    ? `calc(100dvh - ${SITE_HEADER_OFFSET * 2}px)`
                                    : SITE_HEADER_HEIGHT,
                                borderRadius: isMobileMenuOpen ? 24 : 999,
                            }}
                            transition={
                                shouldReduceMotion
                                    ? { duration: 0 }
                                    : {
                                          height: {
                                              duration: isMobileMenuOpen ? 0.52 : 0.35,
                                              ease: isMobileMenuOpen ? REVEAL_EASE : MOTION_EASE,
                                          },
                                          borderRadius: {
                                              duration: isMobileMenuOpen ? 0.42 : 0.28,
                                              ease: MOTION_EASE,
                                          },
                                      }
                            }
                            className="relative mx-4 flex flex-col overflow-hidden"
                            style={{ height: SITE_HEADER_HEIGHT, borderRadius: 999 }}>
                            <div
                                data-site-header-backdrop
                                aria-hidden
                                className="pointer-events-none absolute inset-0 bg-background"
                            />
                            <motion.div
                                data-site-header-surface
                                aria-hidden
                                className="
                                  pointer-events-none absolute inset-0 overflow-hidden
                                  bg-neutral-100 shadow-xs transition-opacity duration-200 ease-out
                                  motion-reduce:transition-none
                                  dark:bg-neutral-950
                                "
                                style={{
                                    opacity: isScrolled || isMobileMenuOpen ? 1 : 0,
                                }}></motion.div>
                            <div
                                className="relative z-10 flex shrink-0 items-center px-3 md:px-5"
                                style={{ height: SITE_HEADER_HEIGHT }}>
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
                                        <SiteNavLink
                                            key={link.href}
                                            {...link}
                                            pathname={pathname}
                                        />
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
                                    <MobileNavigationTrigger
                                        open={isMobileMenuOpen}
                                        reduceMotion={shouldReduceMotion}
                                    />
                                </div>
                            </div>
                            <div className="lg:hidden">
                                <MobileNavigationPanel
                                    pathname={pathname}
                                    open={isMobileMenuOpen}
                                    onOpenChange={setIsMobileMenuOpen}
                                />
                            </div>
                        </motion.div>
                    </Dialog>
                </div>
            </div>
        </header>
    )
}
