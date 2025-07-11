'use client'
import { SectionMotion } from '@/components/ui-blocks/animations/SectionMotion'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Heading } from '@/components/ui/heading'
import { IconContainer } from '@/components/ui/icon-container'
import { MotionHeading } from '@/components/ui/motion'
import { cn } from '@/lib/utils'
import type { Icon as IconType } from '@solar-icons/react/lib/types'
import * as solar from '@solar-icons/react/ssr/category'
import { AnimatePresence, motion, useScroll, useTransform } from 'framer-motion'
import React, { useState } from 'react'
import { MotionShapeSvg } from './ShapeSvg'

export interface FeatureCardProps {
    title: string
    content: string
    Icon: IconType
    hovered?: boolean
}

const features: FeatureCardProps[] = [
    {
        title: 'Multi-Style Support',
        content: '7,000+ Unique Icons Across Diverse Categories',
        Icon: solar.Tools.PaletteRound,
    },
    {
        title: 'Cross-Framework Compatibility',
        content: 'Multi-Style Variations: Bold, Linear, Outline, and more',
        Icon: solar.TextFormatting.Link,
    },
    {
        title: 'Easy Integration',
        content: 'Optimized for Performance and Versatility',
        Icon: solar.Devices.PlugCircle,
    },
    {
        title: 'Adaptations for Multiple Frameworks',
        content: 'Optimized for Performance and Versatility',
        Icon: solar.Map.Globus,
    },
]

export const FeaturesSection = () => {
    const ref = React.useRef<HTMLDivElement>(null)
    const { scrollYProgress } = useScroll({
        target: ref,
        offset: ['start end', 'end start'],
    })

    const y = useTransform(scrollYProgress, [0, 1], [-100, 300])

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
            <motion.div
                className={`
                  absolute inset-0 flex items-center justify-center
                  overflow-hidden
                `}
                ref={ref}>
                <MotionShapeSvg className="w-full text-primary blur-xs" style={{ y }} />
            </motion.div>
            <div className="flex flex-col items-center py-24">
                <div className="flex flex-col text-center">
                    <MotionHeading
                        size="h1"
                        justify="center"
                        initial="hidden"
                        variants={itemVariants}
                        whileInView="visible"
                        viewport={{ once: true, amount: 0.5 }}
                        className="pb-16"
                        custom={0}>
                        Why Choose{' '}
                        <span
                            className={`
                              box-decoration-clone underline decoration-primary
                              underline-offset-8
                            `}>
                            Solar Icons
                        </span>
                        ?
                    </MotionHeading>
                    <div className={`
                      mt-8 flex w-full flex-row flex-wrap items-stretch gap-4
                    `}>
                        {features.map((item, idx) => (
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
                                              w-full rounded-xl border-b-2
                                              border-primary/50 bg-linear-to-t
                                              from-primary/20 to-transparent
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
                                <FeatureCard {...item} hovered={hoveredIndex === idx} />
                            </motion.div>
                        ))}
                    </div>
                </div>
            </div>
        </SectionMotion>
    )
}

export const FeatureCard: React.FC<FeatureCardProps> = ({
    title,
    content,
    Icon,
    hovered = false,
}) => (
    <Card className="relative z-20 h-full w-full bg-accent/20 backdrop-blur-xs">
        <CardHeader>
            <CardTitle>
                <Heading
                    size="h2"
                    justify="center"
                    className={cn(
                        hovered && 'text-primary',
                        `
                          flex flex-row items-start gap-4 transition-colors
                          duration-300 ease-in-out
                        `
                    )}>
                    <IconContainer>
                        <Icon weight="BoldDuotone" size="32" />
                    </IconContainer>
                    {title}
                </Heading>
            </CardTitle>
        </CardHeader>
        <CardContent>
            <span className="text-sm font-light">{content}</span>
        </CardContent>
    </Card>
)
