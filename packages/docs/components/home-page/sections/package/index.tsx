'use client'
import React, { useState } from 'react'
import { Card, CardContent, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'
import { AnimatePresence, motion } from 'framer-motion'
import { cn } from '@/lib/utils'
import { Heading, MotionHeading } from '@/components/ui/heading'
import MotionSection from '@/components/ui-blocks/animations/SectionMotion'
import { Icon } from '@iconify/react'
import { NoiseSvg } from '@/components/ui/noise-svg'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { ArrowRightUp } from '@solar-icons/react'
import { useRouter } from 'next/navigation'

export interface PackageCardProps {
    title: string
    link?: string
    githubLink?: string
    npmLink?: string
    content?: string
    iconify: string
    hovered?: boolean
    status: 'released' | 'in-progress' | 'coming-soon'
}

export interface PackageSectionProps {
    packages: PackageCardProps[]
}

export const PackageSection: React.FC<PackageSectionProps> = ({ packages }) => {
    let [hoveredIndex, setHoveredIndex] = useState<number | null>(null)
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
        <MotionSection className="relative flex flex-col items-center px-3 md:px-0 max-w-fd-container self-center w-full gap-8 py-12">
            <div className="relative gap-2 bg-accent/30 rounded-2xl md:rounded-3xl py-12 w-full overflow-hidden">
                <NoiseSvg className="absolute size-full inset-0 pointer-events-none opacity-30" />
                <div className="absolute rounded-full w-1/2 h-1/2 top-0 left-1/3 -translate-x-1/2 -translate-y-1/2 bg-gradient-to-b from-teal-950/80 to-transparent blur-3xl"></div>
                <div className="absolute rounded-full w-1/3 h-1/3 top-0 left-2/3 -translate-x-1/2 -translate-y-1/2 bg-gradient-to-b from-pink-700/50 to-transparent blur-3xl"></div>
                <div
                    className="absolute inset-0"
                    style={{
                        background:
                            'radial-gradient(circle at 50% -60%, transparent 0%, hsla(var(--accent)/0.5) 50%, hsla(var(--background)/0.8) 100%)',
                    }}
                />
                <div className="relative my-14 mt-16 flex flex-col items-center justify-center gap-6">
                    <MotionHeading
                        size="h1"
                        justify="center"
                        initial="hidden"
                        variants={itemVariants}
                        whileInView="visible"
                        viewport={{ once: true, amount: 0.5 }}
                        custom={0}>
                        Available{' '}
                        <span className="decoration-primary decoration-clone underline-offset-8 underline">
                            Packages
                        </span>
                    </MotionHeading>
                    <div className="flex flex-row gap-4 mt-8 items-stretch w-full max-w-4xl mx-auto p-4 flex-wrap">
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
                                            className="absolute inset-0 h-full w-full border-accent/50 border bg-accent/40 rounded-none  block"
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
        </MotionSection>
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
        <Card className="relative z-20 t w-full h-full md:min-w-64 md:min-h-64 min-w-48 min-h-48 bg-background/30 hover:bg-background/70  flex flex-col rounded-none overflow-hidden">
            <div className="absolute size-24 sm:size-32 left-0 bottom-0">
                {
                    <Icon
                        icon={iconify}
                        className={cn(
                            hovered ? 'contrast-150' : 'contrast-50',
                            'absolute inset-0 size-full blur-3xl transition-colors duration-300 ease-in-out'
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
                            'flex flex-row gap-4 items-center transition-colors duration-300 ease-in-out'
                        )}>
                        {title}
                        {status && status !== 'released' && <Badge variant="default" colors="default" size="sm">{status}</Badge>}
                    </Heading>
                </CardTitle>
            </CardHeader>
            <CardContent className="relative flex-1 font-light text-sm text-muted-foreground text-left">
                {content}
            </CardContent>
            <CardFooter className="relative w-full flex flex-row justify-end items-center px-2 py-2 backdrop-blur-lg bg-accent/30">
                <Button
                    onClick={() => {
                        link && router.push(link)
                    }}
                    disabled={!link}
                    size="icon"
                    variant="outline"
                    color=""
                    className="rounded-l-xl rounded-r-none w-10 border-r-border/50">
                    <ArrowRightUp className="size-full" />
                </Button>
                <Button
                    onClick={() => {
                        githubLink && router.push(githubLink)
                    }}
                    disabled={!githubLink}
                    size="icon"
                    variant="outline"
                    color=""
                    className="rounded-none border-x-transparent">
                    <Icon icon="mdi:github" className="size-full" />
                </Button>
                <Button
                    onClick={() => {
                        npmLink && router.push(npmLink)
                    }}
                    disabled={!npmLink}
                    size="icon"
                    variant="outline"
                    color=""
                    className="rounded-r-xl rounded-l-none border-l-border/50">
                    <Icon icon="devicon:npm" className="size-full" />
                </Button>
            </CardFooter>

            <motion.div
                initial={{ rotate: 0, x: '-33%', y: '33%', scale: 1 }}
                animate={{ rotate: hovered ? 45 : 0, x: hovered ? '0%' : '-33%' }}
                transition={{
                    rotate: { duration: 0.5, ease: 'linear' },
                }}
                className="absolute size-24 sm:size-32 left-0 bottom-0">
                {<Icon icon={iconify} className="absolute inset-0 size-full" />}
            </motion.div>
        </Card>
    )
}
