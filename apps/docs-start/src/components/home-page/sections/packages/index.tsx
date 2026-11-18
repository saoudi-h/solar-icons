'use client'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import { AnimatePresence, motion } from 'motion/react'
import React, { useState } from 'react'

import { SectionMotion } from '~/components/ui-blocks/animations/SectionMotion'
import { Badge } from '~/components/ui/badge'
import { ButtonGroup } from '~/components/ui/button-group'
import { ButtonWithTooltip } from '~/components/ui/button-with-tooltip'
import { Card, CardContent, CardFooter, CardHeader, CardTitle } from '~/components/ui/card'
import { Heading } from '~/components/ui/heading'
import { MotionHeading } from '~/components/ui/motion'
import { NoiseSvg } from '~/components/ui/noise-svg'
import { useNavigateTo } from '~/hooks/use-navigate-to'
import { Icon } from '~/lib/icons'
import { cn } from '~/lib/utils'

export type PackageStatus =
    | 'released'
    | 'in-progress'
    | 'coming-soon'
    | 'not-started'
    | 'abandoned'
    | 'deprecated'
    | 'maintenance'
    | 'new'

export interface PackageVariant {
    /** Short target label displayed in the card version switcher, e.g. 'Solid 2'. */
    label: string
    /** Registry package name, e.g. '@solar-icons/solid-v2'. */
    packageName: string
    /** Optional label used in the scrolling framework showcase pills. */
    showcaseLabel?: string
    status?: PackageStatus
    content?: string
    link?: string
    githubLink?: string
    npmLink?: string
    registryLink?: string
    registryTooltip?: string
    registryIcon?: string
}

export interface PackageCardProps {
    title: string
    link?: string
    githubLink?: string
    npmLink?: string
    registryLink?: string
    registryTooltip?: string
    registryIcon?: string
    content?: string
    iconify: string
    hovered?: boolean
    status: PackageStatus
    variants?: PackageVariant[]
}

export interface PackageSectionProps {
    packages: PackageCardProps[]
}

export const PackagesSection: React.FC<PackageSectionProps> = ({ packages }) => {
    const [hoveredIndex, setHoveredIndex] = useState<number | null>(null)
    const itemVariants = {
        hidden: { opacity: 0, y: 100 },
        visible: (index: number) => ({
            opacity: 1,
            y: 0,
            transition: {
                ease: 'easeOut' as const,
                duration: 0.6,
                delay: 0.1 * index,
            },
        }),
    }

    return (
        <SectionMotion
            id="available-packages"
            className={`
              relative flex w-full max-w-384 flex-col items-center gap-8 self-center px-3 py-12
              md:px-0
            `}>
            <div
                className={`
                  relative w-full gap-2 overflow-hidden rounded-2xl bg-accent/30 py-12
                  md:rounded-3xl
                `}>
                <NoiseSvg className={`pointer-events-none absolute inset-0 size-full opacity-30`} />
                <div
                    className={`
                      absolute top-0 left-1/3 size-1/2 -translate-1/2 rounded-full bg-linear-to-b
                      from-teal-950/80 to-transparent blur-3xl
                    `}></div>
                <div
                    className={`
                      absolute top-0 left-2/3 size-1/3 -translate-1/2 rounded-full bg-linear-to-b
                      from-pink-700/50 to-transparent blur-3xl
                    `}></div>
                <div
                    className="absolute inset-0"
                    style={{
                        background:
                            'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                    }}
                />
                <div className="relative flex flex-col items-center justify-center gap-4">
                    <MotionHeading
                        size="h1"
                        justify="center"
                        initial="hidden"
                        variants={itemVariants}
                        whileInView="visible"
                        className="max-w-4xl font-light"
                        viewport={{ once: true, amount: 0.5 }}
                        custom={0}>
                        Integrate{' '}
                        <span className="font-body text-muted-foreground">Solar Icons.</span>
                    </MotionHeading>
                    <p
                        className="
                          max-w-[620px] text-center text-sm/relaxed text-muted-foreground
                          select-none
                          md:text-base
                        ">
                        Choose a framework package, standalone asset, or workflow tool.
                    </p>
                    <div
                        className={`
                          mx-auto mt-10 grid w-full max-w-6xl grid-cols-1 gap-4 px-4
                          sm:grid-cols-2
                          lg:grid-cols-3
                          xl:grid-cols-4
                        `}>
                        {packages.map((item, idx) => (
                            <motion.div
                                initial="hidden"
                                variants={itemVariants}
                                whileInView="visible"
                                viewport={{ once: true, amount: 0.5 }}
                                custom={idx}
                                key={item.title}
                                className="relative flex min-w-0 p-2"
                                onMouseEnter={() => setHoveredIndex(idx)}
                                onMouseLeave={() => setHoveredIndex(null)}>
                                <AnimatePresence>
                                    {hoveredIndex === idx && (
                                        <motion.span
                                            className={`
                                              absolute inset-0 block size-full rounded-none border
                                              border-accent/50 bg-accent/40
                                            `}
                                            layoutId="hoverBackground"
                                            initial={{ opacity: 0 }}
                                            animate={{
                                                opacity: 1,
                                                transition: { duration: 0.15 },
                                            }}
                                            exit={{
                                                opacity: 0,
                                                transition: { duration: 0.15, delay: 0.2 },
                                            }}
                                        />
                                    )}
                                </AnimatePresence>
                                <PackageCard {...item} hovered={hoveredIndex === idx} />
                            </motion.div>
                        ))}
                    </div>
                </div>
            </div>
        </SectionMotion>
    )
}

export const PackageCard: React.FC<PackageCardProps> = ({
    title,
    content,
    iconify,
    hovered = false,
    npmLink,
    registryLink,
    registryTooltip = 'NPM Package',
    registryIcon = 'devicon:npm',
    link,
    githubLink,
    status,
    variants,
}) => {
    const navigateTo = useNavigateTo()
    const [selectedVariantIndex, setSelectedVariantIndex] = useState(0)
    const activeVariant =
        variants && variants.length > 0
            ? (variants[selectedVariantIndex] ?? variants[0])
            : undefined
    const effectiveStatus = activeVariant?.status ?? status
    const effectiveContent = activeVariant?.content ?? content
    const effectiveLink = activeVariant?.link ?? link
    const effectiveGithubLink = activeVariant?.githubLink ?? githubLink
    const effectiveRegistryLink = activeVariant?.registryLink ?? registryLink
    const effectiveNpmLink = activeVariant?.npmLink ?? npmLink
    const effectiveRegistryTooltip = activeVariant?.registryTooltip ?? registryTooltip
    const effectiveRegistryIcon = activeVariant?.registryIcon ?? registryIcon
    const packageLink = effectiveRegistryLink ?? effectiveNpmLink
    const linksLabel = activeVariant ? `${title} (${activeVariant.label}) links` : `${title} links`

    return (
        <Card
            className={`
              relative z-20 flex size-full min-h-48 min-w-48 flex-col overflow-hidden rounded-none
              bg-background/30
              hover:bg-background/70
              md:min-h-64 md:min-w-64
            `}>
            <div className={`absolute bottom-0 left-0 size-24 sm:size-32`}>
                {
                    <Icon
                        icon={iconify}
                        className={cn(
                            hovered ? 'contrast-150' : 'contrast-50',
                            `
                              absolute inset-0 size-full blur-3xl transition-colors duration-300
                              ease-in-out
                            `
                        )}
                    />
                }
            </div>
            <CardHeader>
                <CardTitle>
                    <Heading
                        size="h2"
                        justify="default"
                        className={cn(
                            hovered && 'text-primary',
                            `
                              flex flex-row items-center gap-4 font-light transition-colors
                              duration-300 ease-in-out
                            `
                        )}>
                        {title}
                        {effectiveStatus !== 'released' && (
                            <Badge variant="default" colors="default" size="sm">
                                {effectiveStatus}
                            </Badge>
                        )}
                    </Heading>
                </CardTitle>
                {variants && variants.length > 0 && (
                    <div
                        role="group"
                        aria-label={`${title} package versions`}
                        className="mt-2 inline-flex w-fit items-center gap-1 rounded-md border border-foreground/10 bg-secondary/50 p-0.5">
                        {variants.map((variant, idx) => {
                            const isSelected = idx === selectedVariantIndex
                            return (
                                <button
                                    key={variant.packageName}
                                    type="button"
                                    aria-pressed={isSelected}
                                    onClick={() => setSelectedVariantIndex(idx)}
                                    className={cn(
                                        `
                                          rounded-sm px-2 py-0.5 text-xs font-medium
                                          transition-colors
                                          focus-visible:ring-2 focus-visible:ring-ring
                                          focus-visible:outline-hidden
                                        `,
                                        isSelected
                                            ? 'bg-background text-foreground shadow-2xs ring-1 ring-foreground/15'
                                            : 'text-muted-foreground hover:text-foreground'
                                    )}>
                                    {variant.label}
                                </button>
                            )
                        })}
                    </div>
                )}
            </CardHeader>
            <CardContent
                className={`relative flex-1 text-left text-sm font-light text-muted-foreground`}>
                {activeVariant && (
                    <div className="mb-1.5">
                        <code className="rounded bg-foreground/[0.06] px-1.5 py-0.5 font-mono text-[11px] text-foreground/85">
                            {activeVariant.packageName}
                        </code>
                    </div>
                )}
                {effectiveContent}
            </CardContent>
            <CardFooter
                className={`
                  relative flex w-full flex-row items-center justify-end bg-accent/30 p-2
                  backdrop-blur-lg
                `}>
                <ButtonGroup
                    aria-label={linksLabel}
                    className="overflow-hidden rounded-md bg-secondary/80">
                    <ButtonWithTooltip
                        tooltip="Documentation"
                        aria-label="Documentation"
                        onClick={() => {
                            if (effectiveLink) navigateTo(effectiveLink)
                        }}
                        disabled={!effectiveLink}
                        size="icon-sm"
                        colors="secondary"
                        variant="ghost"
                        className="rounded-none! border-0! bg-transparent! [&_svg]:size-4">
                        <ArrowRightUpIcon />
                    </ButtonWithTooltip>
                    <ButtonWithTooltip
                        tooltip="GitHub Repository"
                        aria-label="GitHub Repository"
                        onClick={() => {
                            if (effectiveGithubLink) navigateTo(effectiveGithubLink)
                        }}
                        disabled={!effectiveGithubLink}
                        size="icon-sm"
                        colors="secondary"
                        variant="ghost"
                        className="rounded-none! border-0! bg-transparent! [&_svg]:size-4">
                        <Icon icon="mdi:github" className="size-4" />
                    </ButtonWithTooltip>
                    <ButtonWithTooltip
                        tooltip={effectiveRegistryTooltip}
                        aria-label={effectiveRegistryTooltip}
                        onClick={() => {
                            if (packageLink) navigateTo(packageLink)
                        }}
                        disabled={!packageLink}
                        size="icon-sm"
                        colors="secondary"
                        variant="ghost"
                        className="rounded-none! border-0! bg-transparent! [&_svg]:size-4">
                        <Icon icon={effectiveRegistryIcon} className="size-4" />
                    </ButtonWithTooltip>
                </ButtonGroup>
            </CardFooter>

            <motion.div
                initial={{ rotate: 0, x: '-33%', y: '33%', scale: 1 }}
                animate={{ rotate: hovered ? 45 : 0, x: hovered ? '0%' : '-33%' }}
                transition={{
                    rotate: { duration: 0.5, ease: 'linear' },
                }}
                className={`absolute bottom-0 left-0 size-24 sm:size-32`}>
                {<Icon icon={iconify} className="absolute inset-0 size-full" />}
            </motion.div>
        </Card>
    )
}
