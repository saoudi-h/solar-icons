'use client'
import React, { SVGProps, useState } from 'react'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import type { Icon as IconType } from '@solar-icons/react/lib/types'
import { Home } from '@solar-icons/react/ssr/category'
import { AnimatePresence, motion } from 'framer-motion'
import { cn } from '@/lib/utils'

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
        Icon: Home.BedsideTable3,
    },
    {
        title: 'Cross-Framework Compatibility',
        content: 'Multi-Style Variations: Bold, Linear, Outline, and more',
        Icon: Home.Closet2,
    },
    {
        title: 'Easy Integration',
        content: 'Optimized for Performance and Versatility',
        Icon: Home.BedsideTable4,
    },
    {
        title: 'Adaptations for Multiple Frameworks',
        content: 'Optimized for Performance and Versatility',
        Icon: Home.Condicioner2,
    },
]

export const FeatureSection = () => {
    let [hoveredIndex, setHoveredIndex] = useState<number | null>(null)

    return (
        <section className="relative flex flex-col items-center rounded-2xl bg-hero-section-centered-navbar px-3 md:rounded-3xl md:px-0 max-w-fd-container self-center w-full gap-8 py-12">
            <div className="absolute inset-0 overflow-hidden">
                <ShapeSvg className="w-full text-primary blur-sm" />
            </div>
            <div className="flex flex-col items-center py-24">
                <div className="flex flex-col text-center">
                    <h1 className="text-4xl font-medium tracking-tight font-heading">
                        Why Choose{' '}
                        <span className="decoration-primary decoration-clone underline-offset-8 underline">
                            Solar Icons
                        </span>
                        ?
                    </h1>
                    <div className="flex flex-row gap-4 mt-8 items-stretch w-full flex-wrap">
                        {features.map((item, idx) => (
                            <div
                                key={item?.title}
                                className="relative flex-1 p-2"
                                onMouseEnter={() => setHoveredIndex(idx)}
                                onMouseLeave={() => setHoveredIndex(null)}>
                                <AnimatePresence>
                                    {hoveredIndex === idx && (
                                        <motion.span
                                            className="absolute inset-0 h-full w-full border-primary/50 border-b-2 rounded-xl  block bg-gradient-to-t from-primary/20 to-transparent"
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
                            </div>
                        ))}
                    </div>
                </div>
            </div>
        </section>
    )
}

export const FeatureCard: React.FC<FeatureCardProps> = ({
    title,
    content,
    Icon,
    hovered = false,
}) => (
    <Card className="relative z-20 bg-accent/20 backdrop-blur-md w-full h-full">
        <CardHeader>
            <CardTitle>
                <div
                    className={cn(
                        hovered && 'text-primary',
                        'flex flex-row gap-4 items-center font-heading font-bold transition-colors duration-300 ease-in-out'
                    )}>
                    <IconContainer>
                        <Icon weight="BoldDuotone" size="24" />
                    </IconContainer>
                    {title}
                </div>
            </CardTitle>
        </CardHeader>
        <CardContent>
            <span className="font-light text-sm">{content}</span>
        </CardContent>
    </Card>
)

const IconContainer: React.FC<{ children: React.ReactNode }> = ({ children }) => (
    <div className="rounded-md border to-secondary shadow-md  bg-gradient-to-t from-fd-background/80 p-1 ">
        {children}
    </div>
)

const ShapeSvg: React.FC<SVGProps<SVGSVGElement>> = props => (
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1422 800" {...props}>
        <g fill="none" stroke="currentColor" strokeLinecap="round">
            <path d="M0 520q355.5-245 711-120t711 120"></path>
            <path d="M0 468q355.5-193 711-68t711 68" opacity="0.51"></path>
            <path d="M0 416q355.5-141 711-16t711 16" opacity="0.7"></path>
            <path d="M0 364q355.5-89 711 36t711-36" opacity="0.99"></path>
            <path d="M0 312q355.5-37 711 88t711-88" opacity="0.48"></path>
            <path d="M0 260q355.5 15 711 140t711-140" opacity="0.62"></path>
            <path d="M0 208q355.5 67 711 192t711-192" opacity="0.76"></path>
            <path d="M0 156q355.5 119 711 244t711-244" opacity="0.32"></path>
            <path d="M0 104q355.5 171 711 296t711-296" opacity="0.98"></path>
        </g>
    </svg>
)
