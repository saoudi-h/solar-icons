'use client'
import { SectionMotion } from '@/components/ui-blocks/animations/SectionMotion'
import { Badge } from '@/components/ui/badge'
import { ButtonWithTooltip } from '@/components/ui/button-with-tooltip'
import { Card, CardContent, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'
import { Heading } from '@/components/ui/heading'
import { MotionHeading } from '@/components/ui/motion'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { cn } from '@/lib/utils'
import { Icon } from '@iconify/react'
import { ArrowRightUp } from '@solar-icons/react'
import { AnimatePresence, motion } from 'framer-motion'
import { useRouter } from 'next/navigation'
import React, { useState } from 'react'
export interface PackageCardProps {
    title: string
    link?: string
    githubLink?: string
    npmLink?: string
    content?: string
    iconify: string
    hovered?: boolean
    status:
        | 'released'
        | 'in-progress'
        | 'coming-soon'
        | 'not-started'
        | 'abandoned'
        | 'deprecated'
        | 'maintenance'
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
                ease: 'easeOut',
                duration: 0.6,
                delay: 0.1 * index,
            },
        }),
    }

    return (
        <SectionMotion
            className={`
              relative flex w-full max-w-fd-container flex-col items-center
              gap-8 self-center px-3 py-12
              md:px-0
            `}>
            <div
                className={`
                  relative w-full gap-2 overflow-hidden rounded-2xl bg-accent/30
                  py-12
                  md:rounded-3xl
                `}>
                <NoiseSvg
                    className={`
                  pointer-events-none absolute inset-0 size-full opacity-30
                `}
                />
                <div
                    className={`
                      absolute top-0 left-1/3 h-1/2 w-1/2 -translate-x-1/2
                      -translate-y-1/2 rounded-full bg-linear-to-b
                      from-teal-950/80 to-transparent blur-3xl
                    `}></div>
                <div
                    className={`
                      absolute top-0 left-2/3 h-1/3 w-1/3 -translate-x-1/2
                      -translate-y-1/2 rounded-full bg-linear-to-b
                      from-pink-700/50 to-transparent blur-3xl
                    `}></div>
                <div
                    className="absolute inset-0"
                    style={{
                        background:
                            'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                    }}
                />
                <div
                    className={`
                      relative my-14 mt-16 flex flex-col items-center
                      justify-center gap-6
                    `}>
                    <MotionHeading
                        size="h1"
                        justify="center"
                        initial="hidden"
                        variants={itemVariants}
                        whileInView="visible"
                        className="pb-16"
                        viewport={{ once: true, amount: 0.5 }}
                        custom={0}>
                        Available{' '}
                        <span
                            className={`
                              box-decoration-clone underline decoration-primary
                              underline-offset-8
                            `}>
                            Packages
                        </span>
                    </MotionHeading>
                    <div
                        className={`
                          mx-auto mt-8 flex w-full max-w-4xl flex-row flex-wrap
                          items-stretch gap-4 p-4
                        `}>
                        {packages.map((item, idx) => (
                            <motion.div
                                initial="hidden"
                                variants={itemVariants}
                                whileInView="visible"
                                viewport={{ once: true, amount: 0.5 }}
                                custom={idx}
                                key={item?.title}
                                className="relative flex-1 p-2"
                                onMouseEnter={() => setHoveredIndex(idx)}
                                onMouseLeave={() => setHoveredIndex(null)}>
                                <AnimatePresence>
                                    {hoveredIndex === idx && (
                                        <motion.span
                                            className={`
                                              absolute inset-0 block h-full
                                              w-full rounded-none border
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
    link,
    githubLink,
    status,
}) => {
    const router = useRouter()
    return (
        <Card
            className={`
              relative z-20 flex h-full min-h-48 w-full min-w-48 flex-col
              overflow-hidden rounded-none bg-background/30
              hover:bg-background/70
              md:min-h-64 md:min-w-64
            `}>
            <div
                className={`
              absolute bottom-0 left-0 size-24
              sm:size-32
            `}>
                {
                    <Icon
                        icon={iconify}
                        className={cn(
                            hovered ? 'contrast-150' : 'contrast-50',
                            `
                              absolute inset-0 size-full blur-3xl
                              transition-colors duration-300 ease-in-out
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
                              flex flex-row items-center gap-4 transition-colors
                              duration-300 ease-in-out
                            `
                        )}>
                        {title}
                        {status && status !== 'released' && (
                            <Badge variant="default" colors="default" size="sm">
                                {status}
                            </Badge>
                        )}
                    </Heading>
                </CardTitle>
            </CardHeader>
            <CardContent
                className={`
                  relative flex-1 text-left text-sm font-light
                  text-muted-foreground
                `}>
                {content}
            </CardContent>
            <CardFooter
                className={`
                  relative flex w-full flex-row items-center justify-end
                  bg-accent/30 px-2 py-2 backdrop-blur-lg
                `}>
                <ButtonWithTooltip
                    tooltip="Documentation"
                    onClick={() => {
                        if (link) router.push(link)
                    }}
                    disabled={!link}
                    size="icon"
                    colors="secondary"
                    className={`
                      w-10 rounded-l-xl rounded-r-none! border-r-border/50
                    `}>
                    <ArrowRightUp className="size-full" />
                </ButtonWithTooltip>
                <ButtonWithTooltip
                    tooltip="GitHub Repository"
                    onClick={() => {
                        if (githubLink) router.push(githubLink)
                    }}
                    disabled={!githubLink}
                    size="icon"
                    colors="secondary"
                    className="rounded-none border-x-transparent">
                    <Icon icon="mdi:github" className="size-full" />
                </ButtonWithTooltip>
                <ButtonWithTooltip
                    tooltip="NPM Package"
                    onClick={() => {
                        if (npmLink) router.push(npmLink)
                    }}
                    disabled={!npmLink}
                    size="icon"
                    colors="secondary"
                    className="rounded-l-none! rounded-r-xl border-l-border/50">
                    <Icon icon="devicon:npm" className="size-full" />
                </ButtonWithTooltip>
            </CardFooter>

            <motion.div
                initial={{ rotate: 0, x: '-33%', y: '33%', scale: 1 }}
                animate={{ rotate: hovered ? 45 : 0, x: hovered ? '0%' : '-33%' }}
                transition={{
                    rotate: { duration: 0.5, ease: 'linear' },
                }}
                className={`
                  absolute bottom-0 left-0 size-24
                  sm:size-32
                `}>
                {<Icon icon={iconify} className="absolute inset-0 size-full" />}
            </motion.div>
        </Card>
    )
}
