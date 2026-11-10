'use client'
import NumberFlow from '@number-flow/react'
import { ArrowRightUpIcon } from '@solar-icons/react/dynamic/arrow-right-up'
import { CodeScanIcon } from '@solar-icons/react/dynamic/code-scan'
import { GlobalIcon } from '@solar-icons/react/dynamic/global'
import { HeartIcon } from '@solar-icons/react/dynamic/heart'
import { PaletteRoundIcon } from '@solar-icons/react/dynamic/palette-round'
import { PlugCircleIcon } from '@solar-icons/react/dynamic/plug-circle'
import { ShieldCheckIcon } from '@solar-icons/react/dynamic/shield-check'
import { StarIcon } from '@solar-icons/react/dynamic/star'
import { WidgetIcon } from '@solar-icons/react/dynamic/widget'
import { motion, useReducedMotion } from 'motion/react'
import React from 'react'

import { SectionMotion } from '~/components/ui-blocks/animations/SectionMotion'
import { GitHubStarButton } from '~/components/ui/GitHubStarButton'
import { Heading } from '~/components/ui/heading'
import { Link } from '~/components/ui/link'
import { projectLinks } from '~/lib/project-links'
import { useSiteStats } from '~/lib/site-stats-context'

export const CommunitySection = () => {
    const { stars, weeklyDownloads } = useSiteStats()

    // Stagger animation variants
    const containerVariants = {
        hidden: { opacity: 0 },
        visible: {
            opacity: 1,
            transition: {
                staggerChildren: 0.08,
                delayChildren: 0.15,
            },
        },
    }

    const itemVariants = {
        hidden: { opacity: 0, y: 25 },
        visible: {
            opacity: 1,
            y: 0,
            transition: {
                type: 'spring' as const,
                stiffness: 90,
                damping: 15,
            },
        },
    }

    return (
        <SectionMotion
            variants={containerVariants}
            className="w-full max-w-384 self-center px-3 pb-16 md:px-0">
            <div className={`relative w-full overflow-hidden p-8 text-left md:rounded-4xl md:p-14`}>
                {/* Content Grid */}
                <div
                    className={`
                      relative z-10 grid grid-cols-1 items-center gap-8
                      lg:grid-cols-12 lg:gap-12
                    `}>
                    {/* Left: Text and dynamic metric widgets */}
                    <div className="flex flex-col gap-6 lg:col-span-7">
                        {/* Title & Copy */}
                        <motion.div variants={itemVariants} className="flex flex-col gap-4">
                            <Heading asChild size="h1" className="text-3xl font-light md:text-4xl">
                                <h2>
                                    Built for developers. <br className="hidden md:inline" />
                                    <span className="font-body text-muted-foreground">
                                        Maintained with care.
                                    </span>
                                </h2>
                            </Heading>
                            <p
                                className={`
                                  max-w-[540px] text-sm/relaxed text-muted-foreground
                                  md:text-base
                                `}>
                                Clean packages, improved search, and developer-friendly tools to
                                make Solar Icons easier to use in your projects. If you find it
                                useful, a GitHub star helps the project grow.
                            </p>
                        </motion.div>

                        {/* Stats Dashboard Grid */}
                        <div className="mt-2 grid max-w-2xl grid-cols-3 gap-2 sm:gap-4">
                            {/* Stat Card 1: Downloads */}
                            <motion.div variants={itemVariants} className="flex-1">
                                <StatCard title="Weekly npm downloads" value={weeklyDownloads} />
                            </motion.div>
                            {/* Stat Card 2: Total Icons */}
                            <motion.div variants={itemVariants} className="flex-1">
                                <StatCard title="Total Icons" value={8748} />
                            </motion.div>
                            {/* Stat Card 3: Total Packages */}
                            <motion.div variants={itemVariants} className="flex-1">
                                <StatCard title="Total Packages" value={16} />
                            </motion.div>
                        </div>
                    </div>

                    {/* Right: Custom GitHub Star Button CTA with geometric icon grid */}
                    <motion.div
                        variants={itemVariants}
                        className="relative flex w-full items-center justify-center lg:col-span-5">
                        <CommunityIconGrid stars={stars} />
                    </motion.div>
                </div>
            </div>
        </SectionMotion>
    )
}

interface StatCardProps {
    title: string
    value: number
}

const StatCard: React.FC<StatCardProps> = ({ title, value }) => {
    return (
        <div className={`flex min-w-0 flex-col gap-1 p-2 sm:p-4`}>
            <span className={`text-xs font-bold text-muted-foreground uppercase`}>{title}</span>
            <span className={`text-xl font-extrabold tracking-tight text-foreground sm:text-3xl`}>
                <NumberFlow value={value} format={{ minimumIntegerDigits: 1 }} trend={1} />
            </span>
        </div>
    )
}

// A missing tile makes requesting an icon part of the catalogue illustration.
const communityIcons = [
    { Icon: HeartIcon, color: 'text-rose-500 dark:text-rose-400', x: '8%', y: '15%', rotate: -12 },
    {
        Icon: PaletteRoundIcon,
        color: 'text-violet-500 dark:text-violet-400',
        x: '33%',
        y: '5%',
        rotate: 8,
    },
    { Icon: GlobalIcon, color: 'text-sky-600 dark:text-sky-400', x: '59%', y: '12%', rotate: -8 },
    {
        Icon: ShieldCheckIcon,
        color: 'text-emerald-600 dark:text-emerald-400',
        x: '84%',
        y: '3%',
        rotate: 12,
    },
    { Icon: CodeScanIcon, color: 'text-sky-600 dark:text-sky-400', x: '3%', y: '64%', rotate: 8 },
    {
        Icon: PlugCircleIcon,
        color: 'text-amber-600 dark:text-amber-400',
        x: '29%',
        y: '71%',
        rotate: -10,
    },
    {
        Icon: WidgetIcon,
        color: 'text-violet-500 dark:text-violet-400',
        x: '55%',
        y: '65%',
        rotate: 10,
    },
    {
        Icon: StarIcon,
        color: 'text-amber-600 dark:text-amber-400',
        x: '10%',
        y: '86%',
        rotate: -10,
    },
]

const CommunityIconGrid = ({ stars }: { stars: number }) => {
    const reduceMotion = useReducedMotion()

    return (
        <div className="relative mx-auto h-85 w-full max-w-96">
            <div className="absolute inset-0" aria-hidden="true">
                {communityIcons.map(({ Icon, color, x, y, rotate }, index) => (
                    <motion.div
                        key={index}
                        className={`absolute ${color}`}
                        style={{ left: x, top: y, rotate }}
                        animate={reduceMotion ? undefined : { y: [0, -6, 0] }}
                        transition={{
                            duration: 5 + index * 0.3,
                            repeat: Infinity,
                            ease: 'easeInOut',
                        }}>
                        <Icon size={index % 3 === 0 ? 36 : 32} weight="BoldDuotone" />
                    </motion.div>
                ))}
            </div>

            <Link
                href={projectLinks.requestIcon}
                className="group absolute top-48 right-0 flex flex-col items-center gap-3 rounded-xl text-center focus-visible:outline-2 focus-visible:outline-offset-8 focus-visible:outline-ring">
                <span className="relative flex size-16 items-center justify-center rounded-2xl border border-dashed border-primary/60 bg-primary/5 text-primary transition-colors duration-300 group-hover:border-primary group-hover:bg-primary/10">
                    <span aria-hidden="true" className="flex size-8 items-center justify-center">
                        <svg viewBox="0 0 24 24" fill="none" className="size-8">
                            <path
                                d="M12 5v14M5 12h14"
                                stroke="currentColor"
                                strokeWidth="1.5"
                                strokeLinecap="round"
                            />
                        </svg>
                    </span>
                </span>
                <span className="flex flex-col gap-1">
                    <span className="text-sm font-medium text-foreground">Missing an icon?</span>
                    <span className="flex items-center justify-center gap-1 text-xs text-primary">
                        Request it <ArrowRightUpIcon size={14} weight="Linear" aria-hidden="true" />
                    </span>
                </span>
            </Link>

            <div className="absolute top-28 left-1/2 -translate-x-1/2">
                <GitHubStarButton starCount={stars} />
            </div>
        </div>
    )
}
