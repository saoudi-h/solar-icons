'use client'
import React, { FC, forwardRef, useEffect, useRef, useState } from 'react'
import {
    AnimatePresence,
    motion,
    MotionValue,
    useAnimationFrame,
    useMotionValue,
    useScroll,
    useSpring,
    useTransform,
    useVelocity,
} from 'framer-motion'
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
    rotationOuter: MotionValue<number>
    rotationInner: MotionValue<number>
    selectedStyle: Style
}

export const RotatingCircles: FC<RotatingCirclesProps> = ({
    outerIcons,
    innerIcons,
    rotationOuter,
    rotationInner,
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
        selectedStyle: Style,
        rotation: MotionValue<number>
    ) => {
        const angleStep = 360 / icons.length

        return (
            <motion.div
                className="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 origin-center"
                style={{ rotate: rotation }}>
                {icons.map((IconComponent, index) => {
                    const rad = (index * angleStep * Math.PI) / 180
                    const x = radius * Math.cos(rad) - 24
                    const y = radius * Math.sin(rad) - 24

                    return (
                        <AnimatePresence key={IconComponent.displayName}>
                            <motion.div
                                key={IconComponent.name}
                                initial={{ opacity: 0, scale: 0 }}
                                animate={{ opacity: 1, scale: 1 }}
                                exit={{ opacity: 0, scale: 0 }}
                                transition={{
                                    delay: index * 0.1,
                                    duration: 0.3,
                                    type: 'spring',
                                }}
                                custom={index}
                                className="absolute flex items-center justify-center p-2"
                                style={{
                                    x,
                                    y,
                                    rotate: `${(-rad * 180) / Math.PI}deg`,
                                }}>
                                <IconComponent size={24} weight={selectedStyle} />
                            </motion.div>
                        </AnimatePresence>
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
                {generateIcons(outerIcons, 260, true, selectedStyle, rotationOuter)}
                {generateIcons(innerIcons, 185, false, selectedStyle, rotationInner)}
            </div>
            <Circle size={160} noGradient>
                <div className="relative flex flex-col items-center justify-center size-full rounded-full bg-accent/50 dark:bg-gradient-to-b bg-gradient-to-t from-primary/50 to-transparent backdrop-contrast-150 z-50 overflow-hidden">
                    <button
                        className="size-full hover:bg-primary/30  hover:backdrop-contrast-125 text-heading text-md font-black text-foreground/70 hover:text-foreground transition-color duration-100 border-b border-primary/30 rounded-t-full"
                        onClick={() => setNextCategory()}>
                        <div className="pb-3 active:scale-90 hover:scale-110 transition-all duration-100 size-full flex items-end justify-center rounded-t-full">
                            {category}
                        </div>
                    </button>
                    <button
                        className="size-full hover:bg-primary/30  hover:backdrop-contrast-125 text-heading text-md font-black text-foreground/70 hover:text-foreground transition-color duration-100 border-t border-primary/10 rounded-b-full"
                        onClick={() => setNextStyle()}>
                        <div className="pt-3 active:scale-90 hover:scale-110 transition-all duration-100 size-full flex items-start justify-center rounded-b-full">
                            {style}
                        </div>
                    </button>
                </div>
            </Circle>
        </div>
    )
}

interface CircleProps {
    size: number
    className?: string
    wrapperClassName?: string
    noGradient?: boolean
    children?: React.ReactNode
}

const Circle = forwardRef<HTMLDivElement, CircleProps>(
    ({ size, className, wrapperClassName, noGradient, children, ...props }, ref) => (
        <div className={cn('absolute inset-0', wrapperClassName)} ref={ref} {...props}>
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
)

Circle.displayName = 'Circle'

export const HeroRotation = () => {
    const [style, setStyle] = useAtom(styleAtom)
    const [category, setCategory] = useAtom(categoryAtom)
    const [outerIcons, setOuterIcons] = useState<SolarIcon[]>([])
    const [innerIcons, setInnerIcons] = useState<SolarIcon[]>([])

    const { scrollY } = useScroll()
    const scrollVelocity = useVelocity(scrollY)
    const smoothVelocity = useSpring(scrollVelocity, {
        damping: 50,
        stiffness: 400,
    })

    const velocityFactor = useTransform(smoothVelocity, [0, 1000], [0, 5], {
        clamp: false,
    })

    const baseSpeedOuter = 360 / 25
    const baseSpeedInner = -360 / 10

    const rotationOuter = useMotionValue(0)
    const rotationInner = useMotionValue(0)
    const currentSpeedOuter = useMotionValue(baseSpeedOuter)
    const currentSpeedInner = useMotionValue(baseSpeedInner)

    const directionFactor = useRef(1)

    useEffect(() => {
        const { inner, outer } = getIconsByCategory(category)
        setOuterIcons(outer)
        setInnerIcons(inner)
    }, [style, category])

    useEffect(() => {
        const setRandom = () => {
            setStyle(styles[Math.floor(Math.random() * styles.length)] || 'Linear')
            setCategory(categories[Math.floor(Math.random() * categories.length)] || 'Devices')
        }

        const interval = setInterval(() => {
            setRandom()
        }, 5000)

        return () => clearInterval(interval)
    }, [])

    useAnimationFrame((t, delta) => {
        const scrollDirection = scrollVelocity.get() < 0 ? -1 : 1
        const speedAdjustment = 1 + Math.abs(velocityFactor.get())

        if (scrollVelocity.get() !== 0) {
            directionFactor.current = scrollDirection
        }

        const adjustedSpeedOuter = baseSpeedOuter * speedAdjustment * directionFactor.current
        const adjustedSpeedInner = baseSpeedInner * speedAdjustment * directionFactor.current

        currentSpeedOuter.set(adjustedSpeedOuter)
        currentSpeedInner.set(adjustedSpeedInner)

        rotationOuter.set(rotationOuter.get() + currentSpeedOuter.get() * (delta / 1000))
        rotationInner.set(rotationInner.get() + currentSpeedInner.get() * (delta / 1000))
    })

    return (
        <div className="h-[25rem] w-full">
            <RotatingCircles
                selectedStyle={style}
                outerIcons={outerIcons}
                innerIcons={innerIcons}
                rotationOuter={rotationOuter}
                rotationInner={rotationInner}
            />
        </div>
    )
}
