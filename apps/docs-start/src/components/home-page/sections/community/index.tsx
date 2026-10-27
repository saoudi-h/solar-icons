'use client'
import NumberFlow from '@number-flow/react'
import type { IconWeight } from '@solar-icons/core/runtime'
import { AltArrowDownIcon } from '@solar-icons/react/dynamic/alt-arrow-down'
import { AltArrowUpIcon } from '@solar-icons/react/dynamic/alt-arrow-up'
import { ArrowRightUpIcon } from '@solar-icons/react/dynamic/arrow-right-up'
import { BuildingsIcon } from '@solar-icons/react/dynamic/buildings'
import { CheckCircleIcon } from '@solar-icons/react/dynamic/check-circle'
import { CloseCircleIcon } from '@solar-icons/react/dynamic/close-circle'
import { CodeScanIcon } from '@solar-icons/react/dynamic/code-scan'
import { CopyIcon } from '@solar-icons/react/dynamic/copy'
import { DialogIcon } from '@solar-icons/react/dynamic/dialog'
import { GlobalIcon } from '@solar-icons/react/dynamic/global'
import { HeartIcon } from '@solar-icons/react/dynamic/heart'
import { KeyIcon } from '@solar-icons/react/dynamic/key'
import { LikeIcon } from '@solar-icons/react/dynamic/like'
import { LinkIcon } from '@solar-icons/react/dynamic/link'
import { LockIcon } from '@solar-icons/react/dynamic/lock'
import { MinimalisticMagnifierIcon } from '@solar-icons/react/dynamic/minimalistic-magnifier'
import { PaletteRoundIcon } from '@solar-icons/react/dynamic/palette-round'
import { PlugCircleIcon } from '@solar-icons/react/dynamic/plug-circle'
import { RestartIcon } from '@solar-icons/react/dynamic/restart'
import { SettingsMinimalisticIcon } from '@solar-icons/react/dynamic/settings-minimalistic'
import { ShieldCheckIcon } from '@solar-icons/react/dynamic/shield-check'
import { StarIcon } from '@solar-icons/react/dynamic/star'
import { UnlinkIcon } from '@solar-icons/react/dynamic/unlink'
import { UnreadIcon } from '@solar-icons/react/dynamic/unread'
import { WidgetIcon } from '@solar-icons/react/dynamic/widget'
import { motion } from 'motion/react'
import React from 'react'

import { SectionMotion } from '~/components/ui-blocks/animations/SectionMotion'
import { GitHubStarButton } from '~/components/ui/GitHubStarButton'
import { Heading } from '~/components/ui/heading'
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
                      md:grid-cols-12 md:gap-12
                    `}>
                    {/* Left: Text and dynamic metric widgets */}
                    <div className="flex flex-col gap-6 md:col-span-7">
                        {/* Title & Copy */}
                        <motion.div variants={itemVariants} className="flex flex-col gap-4">
                            <Heading size="h1" className="text-3xl font-light md:text-4xl">
                                Built for developers. <br className="hidden md:inline" />
                                <span className="font-body text-muted-foreground">
                                    Maintained with care.
                                </span>
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
                        <div className="mt-2 flex max-w-2xl gap-4">
                            {/* Stat Card 1: Downloads */}
                            <motion.div variants={itemVariants} className="flex-1">
                                <StatCard title="Weekly Downloads" value={weeklyDownloads} />
                            </motion.div>
                            {/* Stat Card 2: Total Icons */}
                            <motion.div variants={itemVariants} className="flex-1">
                                <StatCard title="Total Icons" value={8706} />
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
                        className="relative flex w-full items-center justify-center md:col-span-5">
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
        <div className={`flex flex-col gap-1 p-4`}>
            <span className={`text-xs font-bold text-muted-foreground uppercase`}>{title}</span>
            <span className={`text-3xl font-extrabold tracking-tight text-foreground`}>
                <NumberFlow value={value} format={{ minimumIntegerDigits: 1 }} trend={1} />
            </span>
        </div>
    )
}

// Geometric Icon Grid layout (5x5, middle column 2 row 2 is empty for the button)
type GridIcon = React.ComponentType<{ size?: number; weight?: IconWeight }> | null

const gridIcons: GridIcon[][] = [
    [HeartIcon, LikeIcon, ShieldCheckIcon, GlobalIcon, LinkIcon, MinimalisticMagnifierIcon],
    [
        PaletteRoundIcon,
        PlugCircleIcon,
        SettingsMinimalisticIcon,
        CodeScanIcon,
        CheckCircleIcon,
        WidgetIcon,
    ],
    [CopyIcon, AltArrowDownIcon, BuildingsIcon, AltArrowUpIcon, CloseCircleIcon, StarIcon],
    [UnreadIcon, ArrowRightUpIcon, RestartIcon, UnlinkIcon, DialogIcon, LockIcon, KeyIcon],
]

interface CommunityIconGridProps {
    stars: number
}

const CommunityIconGrid: React.FC<CommunityIconGridProps> = ({ stars }) => {
    return (
        <div className="relative flex h-85 w-full items-center justify-center">
            {/* The 3D Tilted Icon Grid */}
            <div
                className="
                  pointer-events-none absolute flex h-72 w-96 items-center justify-center
                  select-none
                  sm:w-md
                "
                style={{
                    perspective: 300,
                    transformStyle: 'preserve-3d',
                }}>
                <div
                    className="grid size-full grid-cols-5 grid-rows-5 gap-3"
                    style={{
                        transform: 'rotateX(20deg) rotateY(-20deg) rotateZ(6deg) translateZ(-10px)',
                        transformStyle: 'preserve-3d',
                        maskImage: 'radial-gradient(circle, black 45%, transparent 90%)',
                        WebkitMaskImage: 'radial-gradient(circle, black 45%, transparent 90%)',
                    }}>
                    {gridIcons.map((row, rowIndex) =>
                        row.map((IconComponent, colIndex) => {
                            if (IconComponent === null) {
                                return <div key="center-placeholder" className="size-full" />
                            }

                            return (
                                <div
                                    key={`${rowIndex}-${colIndex}`}
                                    className="flex size-full items-center justify-center">
                                    <div
                                        className="
                                          text-foreground/40 transition-colors duration-300
                                          dark:text-foreground/25
                                        ">
                                        <IconComponent size={24} weight="BoldDuotone" />
                                    </div>
                                </div>
                            )
                        })
                    )}
                </div>
            </div>

            {/* Elevated premium button container */}
            <div className="relative z-10">
                <GitHubStarButton starCount={stars} />
            </div>
        </div>
    )
}
