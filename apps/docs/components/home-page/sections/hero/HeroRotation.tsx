'use client'
import type { Category, Style } from '@/core/generated/generatedHeroUtils'
import { categories, getIconsByCategory, styles } from '@/core/generated/generatedHeroUtils'
import { cn } from '@/lib/utils'
import type { Icon as SolarIcon } from '@solar-icons/react/lib/types'
import type { MotionValue } from 'framer-motion'
import {
    AnimatePresence,
    motion,
    useAnimationFrame,
    useMotionValue,
    useScroll,
    useSpring,
    useTransform,
    useVelocity,
} from 'framer-motion'
import { atom, useAtom } from 'jotai'
import type { FC } from 'react'
import React, { forwardRef, useEffect, useRef, useState } from 'react'

const categoryAtom = atom<Category>('Devices')
const styleAtom = atom<Style>('Bold')

interface RotatingIconProps {
    index: number
    IconComponent: SolarIcon
    radius: number
    angleStep: number
    selectedStyle: Style
    parentRotation: MotionValue<number>
}

const RotatingIcon: FC<RotatingIconProps> = ({
    index,
    IconComponent,
    radius,
    angleStep,
    selectedStyle,
    parentRotation,
}) => {
    const rad = (index * angleStep * Math.PI) / 180
    const x = radius * Math.cos(rad) - 24
    const y = radius * Math.sin(rad) - 24

    const rotate = useTransform(parentRotation, (r) => -r)

    return (
        <AnimatePresence mode="wait">
            <motion.div
                key={IconComponent.name}
                initial={{ opacity: 0, scale: 0 }}
                animate={{ opacity: 1, scale: [0, 1.5, 1] }}
                exit={{ opacity: 0, scale: 0 }}
                transition={{
                    delay: index * 0.1,
                    duration: 0.4,
                    ease: 'easeInOut',
                }}
                className="absolute flex items-center justify-center p-2"
                style={{
                    x,
                    y,
                    rotate,
                }}>
                <IconComponent size={32} weight={selectedStyle} />
            </motion.div>
        </AnimatePresence>
    )
}

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
        if (categories[nextIndex]) setCategory(categories[nextIndex]!)
    }

    const setNextStyle = () => {
        const currentIndex = styles.indexOf(style)
        const nextIndex = (currentIndex + 1) % styles.length
        if (styles[nextIndex]) setStyle(styles[nextIndex]!)
    }

    const generateIcons = (
        icons: SolarIcon[],
        radius: number,
        selectedStyle: Style,
        rotation: MotionValue<number>
    ) => {
        const angleStep = 360 / icons.length

        return (
            <motion.div
                className={`
                  absolute top-1/2 left-1/2 origin-center -translate-x-1/2
                  -translate-y-1/2
                `}
                style={{ rotate: rotation }}>
                {icons.map((IconComponent, index) => (
                    <RotatingIcon
                        key={IconComponent.displayName}
                        index={index}
                        IconComponent={IconComponent}
                        radius={radius}
                        angleStep={angleStep}
                        selectedStyle={selectedStyle}
                        parentRotation={rotation}
                    />
                ))}
            </motion.div>
        )
    }

    return (
        <div className="relative flex w-full items-center justify-center">
            <Circle size={700} wrapperClassName="opacity-50" />
            <Circle size={600} />
            <Circle size={450} />
            <div className="relative h-[700px] w-[700px]">
                {generateIcons(outerIcons, 260, selectedStyle, rotationOuter)}
                {generateIcons(innerIcons, 185, selectedStyle, rotationInner)}
            </div>
            <Circle size={160} noGradient>
                <div
                    className={`
                      relative z-50 flex size-full flex-col items-center
                      justify-center overflow-hidden rounded-full bg-accent/50
                      bg-linear-to-t from-primary/50 to-transparent
                      backdrop-contrast-150
                      dark:bg-linear-to-b
                    `}>
                    <button
                        className={`
                          size-full rounded-t-full border-b border-primary/30
                          font-heading text-base font-black text-foreground/70
                          transition-colors duration-100
                          hover:bg-primary/30 hover:text-foreground
                          hover:backdrop-contrast-125
                        `}
                        onClick={() => setNextCategory()}>
                        <motion.div
                            key={category}
                            animate={{ filter: ['blur(10px)', 'blur(0px)'] }}
                            transition={{ duration: 0.5 }}
                            className={`
                              flex size-full items-end justify-center
                              rounded-t-full pb-3 transition-all duration-100
                              hover:scale-110
                              active:scale-90
                            `}>
                            {category}
                        </motion.div>
                    </button>
                    <button
                        className={`
                          size-full rounded-b-full border-t border-primary/10
                          font-heading text-base font-black text-foreground/70
                          transition-colors duration-100
                          hover:bg-primary/30 hover:text-foreground
                          hover:backdrop-contrast-125
                        `}
                        onClick={() => setNextStyle()}>
                        <motion.div
                            key={style}
                            animate={{ filter: ['blur(10px)', 'blur(0px)'] }}
                            transition={{ duration: 0.5 }}
                            className={`
                              flex size-full items-start justify-center
                              rounded-b-full pt-3 transition-all duration-100
                              hover:scale-110
                              active:scale-90
                            `}>
                            {style}
                        </motion.div>
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
                    `
                      relative top-1/2 left-1/2 -translate-x-1/2
                      -translate-y-1/2 rounded-full shadow-2xl shadow-primary/20
                      backdrop-contrast-150
                      dark:shadow-primary/20 dark:backdrop-contrast-150
                    `,
                    className
                )}
                style={{ width: size, height: size }}>
                {children || null}
            </div>
        </div>
    )
)

Circle.displayName = 'Circle'

export const HeroRotation: FC = () => {
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

    useAnimationFrame((_, delta) => {
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
        <div className="h-100 w-full">
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
