'use client'
import React, { FC, useEffect, useState } from 'react'
import { motion } from 'framer-motion'
import type { Icon as SolarIcon } from '@solar-icons/react/lib/types'
import { categories, getIconsByCategory, Style, styles, Category } from './generatedHeroUtils'
import { cn } from '@/lib/utils'
import './heroSectionStyle.css'
import { atom, useAtom } from 'jotai'

const categoryAtom = atom<Category>('Devices')
const styleAtom = atom<Style>('Bold')

interface RotatingCirclesProps {
    outerIcons: SolarIcon[]
    innerIcons: SolarIcon[]
    rotationSpeedOuter?: number
    rotationSpeedInner?: number
    selectedStyle: Style
}

export const RotatingCircles: FC<RotatingCirclesProps> = ({
    outerIcons,
    innerIcons,
    rotationSpeedOuter = 20,
    rotationSpeedInner = 15,
    selectedStyle,
}) => {
    const [category, setCategory] = useAtom(categoryAtom)
    const [style, setStyle] = useAtom(styleAtom)

    const setNextCategory = () => {
        const currentIndex = categories.indexOf(category)
        const nextIndex = (currentIndex + 1) % categories.length
        if (categories[nextIndex]) setCategory(categories[nextIndex])
    }

    const setNextStyle = () => {
        const currentIndex = styles.indexOf(style)
        const nextIndex = (currentIndex + 1) % styles.length
        if (styles[nextIndex]) setStyle(styles[nextIndex])
    }

    const generateIcons = (
        icons: SolarIcon[],
        radius: number,
        isOuter: boolean,
        selectedStyle: Style
    ) => {
        const angleStep = 360 / icons.length

        return (
            <motion.div
                className="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 bg-blue-500/20 origin-center"
                animate={{
                    rotate: isOuter ? 360 : -360,
                }}
                transition={{
                    duration: isOuter ? rotationSpeedOuter : rotationSpeedInner,
                    repeat: Infinity,
                    ease: 'linear',
                }}>
                {icons.map((IconComponent, index) => {
                    const rad = (index * angleStep * Math.PI) / 180
                    // const angle = 0
                    const x = radius * Math.cos(rad) - 24
                    const y = radius * Math.sin(rad) - 24

                    return (
                        <motion.div
                            key={index}
                            className="absolute border-primary/30 bg-gradient-to-b from-primary/30 to-transparent dark:backdrop-contrast-100 shadow-inner rounded-full flex items-center justify-center p-2 size-12"
                            style={{
                                x,
                                y,
                                transform: `rotate(${(-rad * 180) / Math.PI}deg)`,
                            }}
                            animate={{
                                rotate: isOuter ? -360 : 360,
                            }}
                            transition={{
                                duration: isOuter ? rotationSpeedOuter : rotationSpeedInner,
                                repeat: Infinity,
                                ease: 'linear',
                            }}>
                            <IconComponent size={24} weight={selectedStyle} />
                        </motion.div>
                    )
                })}
            </motion.div>
        )
    }

    return (
        <div className="relative flex items-center justify-center w-full">
            <Circle size={700} wrapperClassName="blur-3xl" />
            <Circle size={600} />
            <Circle size={450} />
            <div className="relative w-[700px] h-[700px]">
                {generateIcons(outerIcons, 260, true, selectedStyle)}
                {generateIcons(innerIcons, 185, false, selectedStyle)}
            </div>
            <Circle size={160} noGradient>
                <div className="relative flex flex-col items-center justify-center size-full rounded-full bg-accent/50 dark:bg-gradient-to-b bg-gradient-to-t from-primary/50 to-transparent backdrop-contrast-150 z-50 overflow-hidden">
                    <button
                        className="size-full hover:bg-primary/30  hover:backdrop-contrast-125 text-heading text-md font-black text-foreground/70 hover:text-foreground transition-color duration-100 flex flex-col items-center justify-end"
                        onClick={() => setNextCategory()}>
                        <div className="pb-3 active:scale-90 hover:scale-110 transition-all duration-100">
                            {category}
                        </div>
                    </button>
                    <button
                        className="size-full hover:bg-primary/30  hover:backdrop-contrast-125 text-heading text-md font-black text-foreground/70 hover:text-foreground transition-color duration-100 flex flex-col items-center justify-start border-t border-primary/30"
                        onClick={() => setNextStyle()}>
                        <div className="pt-3 active:scale-90 hover:scale-110 transition-all duration-100">
                            {style}
                        </div>
                    </button>
                </div>
            </Circle>
        </div>
    )
}

const Circle = ({
    size,
    className,
    wrapperClassName,
    noGradient = false,
    children,
}: {
    size: number
    className?: string
    wrapperClassName?: string
    noGradient?: boolean
    children?: React.ReactNode
}) => {
    return (
        <div className={cn('absolute inset-0', wrapperClassName)}>
            <div
                className={cn(
                    noGradient || 'hero-section-gradient',
                    'rounded-full dark:backdrop-contrast-150 shadow-2xl backdrop-contrast-150 dark:shadow-primary/20 shadow-primary/20 relative top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2',
                    className
                )}
                style={{ width: size, height: size }}>
                {children || null}
            </div>
        </div>
    )
}

export const HeroRotation = () => {
    const [style] = useAtom(styleAtom)
    const [category] = useAtom(categoryAtom)
    const [outerIcons, setOuterIcons] = useState<SolarIcon[]>([])
    const [innerIcons, setInnerIcons] = useState<SolarIcon[]>([])

    useEffect(() => {
        const { inner, outer } = getIconsByCategory(category)
        setOuterIcons(outer)
        setInnerIcons(inner)
    }, [style, category])

    return (
        <div className="h-[25rem] w-full">
            <RotatingCircles
                selectedStyle={style}
                outerIcons={outerIcons}
                innerIcons={innerIcons}
                rotationSpeedOuter={25}
                rotationSpeedInner={18}
            />
        </div>
    )
}
