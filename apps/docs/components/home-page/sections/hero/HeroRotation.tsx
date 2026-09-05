'use client'
import type { DynamicIconProps } from '@solar-icons/react/lib/dynamic-icon'
import { atom, useAtom } from 'jotai'
import type { MotionValue } from 'motion/react'
import {
    AnimatePresence,
    motion,
    useAnimationFrame,
    useMotionValue,
    useReducedMotion,
    useScroll,
    useSpring,
    useTransform,
    useVelocity,
} from 'motion/react'
import { useTheme } from 'next-themes'
import type { FC } from 'react'
import React, { forwardRef, useEffect, useMemo, useRef } from 'react'

import type { Category, Style } from '@/generated/generatedHeroUtils'
import { categories, getIconsByCategory, styles } from '@/generated/generatedHeroUtils'
import { cn } from '@/lib/utils'

type SolarIcon = FC<DynamicIconProps>
type ControlDirection = 'up' | 'down'
type HeroTheme = 'light' | 'dark'

interface HeroIconColorConfig {
    color: string
    secondaryColor: string
}

interface HeroIconVisualConfig {
    light: HeroIconColorConfig
    dark: HeroIconColorConfig
    strokeWidth: number
}

const HERO_ICON_COLOR_PRESETS = [
    {
        light: { color: '#2563eb', secondaryColor: '#7c3aed' },
        dark: { color: '#93c5fd', secondaryColor: '#c4b5fd' },
    },
    {
        light: { color: '#7c3aed', secondaryColor: '#db2777' },
        dark: { color: '#c4b5fd', secondaryColor: '#f9a8d4' },
    },
    {
        light: { color: '#0f766e', secondaryColor: '#d97706' },
        dark: { color: '#5eead4', secondaryColor: '#fcd34d' },
    },
    {
        light: { color: '#e11d48', secondaryColor: '#ea580c' },
        dark: { color: '#fda4af', secondaryColor: '#fdba74' },
    },
    {
        light: { color: '#b45309', secondaryColor: '#0891b2' },
        dark: { color: '#fcd34d', secondaryColor: '#67e8f9' },
    },
] as const satisfies readonly Omit<HeroIconVisualConfig, 'strokeWidth'>[]

const HERO_ICON_STROKE_WIDTHS = [0.5, 1, 1.5, 2, 2.5, 3] as const
const HERO_STATE_CHANGE_INTERVAL = 4000

const INITIAL_HERO_ICON_VISUAL: HeroIconVisualConfig = {
    ...HERO_ICON_COLOR_PRESETS[0],
    strokeWidth: 1.5,
}

const heroIconVisualAtom = atom<HeroIconVisualConfig>(INITIAL_HERO_ICON_VISUAL)

function pickRandomItem<T>(items: readonly T[], current: T): T {
    const candidates = items.filter(item => item !== current)
    return candidates[Math.floor(Math.random() * candidates.length)] ?? items[0]!
}

function pickRandomHeroIconVisual(current: HeroIconVisualConfig): HeroIconVisualConfig {
    const colorCandidates = HERO_ICON_COLOR_PRESETS.filter(
        preset => preset.light.color !== current.light.color
    )
    const colorPreset =
        colorCandidates[Math.floor(Math.random() * colorCandidates.length)] ??
        HERO_ICON_COLOR_PRESETS[0]!
    const strokeWidth = pickRandomItem(HERO_ICON_STROKE_WIDTHS, current.strokeWidth)

    return {
        ...colorPreset,
        strokeWidth,
    }
}

const categoryAtom = atom<Category>('Devices')
const styleAtom = atom<Style>('Bold')

interface SlidingControlLabelProps {
    value: string
    direction: ControlDirection
    shouldReduceMotion: boolean | null
}

const SlidingControlLabel: FC<SlidingControlLabelProps> = ({
    value,
    direction,
    shouldReduceMotion,
}) => {
    const movesUp = direction === 'up'

    return (
        <AnimatePresence initial={false} mode="sync">
            <motion.span
                key={value}
                initial={shouldReduceMotion ? false : { opacity: 0, y: movesUp ? '100%' : '-100%' }}
                animate={{ opacity: 1, y: '0%' }}
                exit={
                    shouldReduceMotion
                        ? { opacity: 0 }
                        : {
                              opacity: 0,
                              y: movesUp ? '-100%' : '100%',
                              transition: { duration: 0.24, ease: 'easeIn' },
                          }
                }
                transition={
                    shouldReduceMotion
                        ? { duration: 0.12 }
                        : { duration: 0.36, ease: [0.23, 1, 0.32, 1] }
                }
                className={cn(
                    'pointer-events-none absolute inset-0 flex justify-center',
                    movesUp ? 'items-end pb-3' : 'items-start pt-3'
                )}>
                <span>{value}</span>
            </motion.span>
        </AnimatePresence>
    )
}

interface RotatingIconProps {
    index: number
    IconComponent: SolarIcon
    radius: number
    angleStep: number
    category: Category
    selectedStyle: Style
    visual: HeroIconVisualConfig
    parentRotation: MotionValue<number>
    staggerIndex: number
}

const RotatingIcon: FC<RotatingIconProps> = ({
    index,
    IconComponent,
    radius,
    angleStep,
    category,
    selectedStyle,
    visual,
    parentRotation,
    staggerIndex,
}) => {
    const rad = (index * angleStep * Math.PI) / 180
    const x = radius * Math.cos(rad) - 24
    const y = radius * Math.sin(rad) - 24
    const shouldReduceMotion = useReducedMotion()
    const transitionDelay = Math.min(staggerIndex * 0.045, 0.45)

    const rotate = useTransform(parentRotation, r => -r)

    return (
        <AnimatePresence initial={false} mode="sync">
            <motion.div
                key={`${index}-${category}-${selectedStyle}-${visual.light.color}-${visual.dark.color}-${visual.strokeWidth}`}
                initial={shouldReduceMotion ? false : { opacity: 0 }}
                animate={{ opacity: 1 }}
                exit={
                    shouldReduceMotion
                        ? { opacity: 0 }
                        : {
                              opacity: 0,
                              transition: {
                                  delay: transitionDelay,
                                  duration: 0.4,
                                  ease: 'easeIn',
                              },
                          }
                }
                transition={
                    shouldReduceMotion
                        ? { duration: 0.12 }
                        : {
                              delay: transitionDelay,
                              duration: 0.4,
                              ease: 'easeOut',
                          }
                }
                className="absolute flex items-center justify-center p-2"
                style={{
                    x,
                    y,
                    rotate,
                }}>
                <IconComponent
                    size={32}
                    weight={selectedStyle}
                    color="var(--hero-rotation-icon-color)"
                    strokeWidth={
                        selectedStyle === 'Broken' ||
                        selectedStyle === 'Linear' ||
                        selectedStyle === 'LineDuotone'
                            ? visual.strokeWidth
                            : undefined
                    }
                    secondaryColor={
                        selectedStyle === 'BoldDuotone' || selectedStyle === 'LineDuotone'
                            ? 'var(--hero-rotation-icon-secondary-color)'
                            : undefined
                    }
                />
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
    const [visual, setVisual] = useAtom(heroIconVisualAtom)
    const shouldReduceMotion = useReducedMotion()

    const changeVisual = () => setVisual(current => pickRandomHeroIconVisual(current))

    const setNextCategory = () => {
        const currentIndex = categories.indexOf(category)
        const nextIndex = (currentIndex + 1) % categories.length
        if (categories[nextIndex]) {
            setCategory(categories[nextIndex]!)
            changeVisual()
        }
    }

    const setNextStyle = () => {
        const currentIndex = styles.indexOf(style)
        const nextIndex = (currentIndex + 1) % styles.length
        if (styles[nextIndex]) {
            setStyle(styles[nextIndex]!)
            changeVisual()
        }
    }

    const generateIcons = (
        icons: SolarIcon[],
        radius: number,
        selectedStyle: Style,
        rotation: MotionValue<number>,
        staggerDirection: 'forward' | 'reverse',
        visual: HeroIconVisualConfig
    ) => {
        const angleStep = 360 / icons.length

        return (
            <motion.div
                className={`absolute top-1/2 left-1/2 origin-center -translate-1/2`}
                style={{ rotate: rotation }}>
                {icons.map((IconComponent, index) => (
                    <RotatingIcon
                        key={index}
                        index={index}
                        IconComponent={IconComponent}
                        radius={radius}
                        angleStep={angleStep}
                        category={category}
                        selectedStyle={selectedStyle}
                        visual={visual}
                        parentRotation={rotation}
                        staggerIndex={
                            staggerDirection === 'forward' ? index : icons.length - index - 1
                        }
                    />
                ))}
            </motion.div>
        )
    }

    return (
        <div data-hero-rotation-visual className="relative flex w-full items-center justify-center">
            <Circle size={700} tone="outer" wrapperClassName="opacity-50" />
            <Circle size={600} tone="middle" />
            <Circle size={450} tone="inner" />
            <div className="relative size-[700px]">
                {generateIcons(outerIcons, 260, selectedStyle, rotationOuter, 'forward', visual)}
                {generateIcons(innerIcons, 185, selectedStyle, rotationInner, 'reverse', visual)}
            </div>
            <Circle size={160} noGradient controls>
                <div
                    className={`
                      relative z-50 flex size-full flex-col items-center justify-center
                      overflow-hidden rounded-full bg-accent/50 bg-linear-to-t from-primary/50
                      to-transparent
                      dark:bg-linear-to-b
                    `}>
                    <button
                        className={`
                          group relative size-full cursor-pointer overflow-hidden rounded-t-full
                          border-b border-primary/30 font-heading text-base font-black
                          text-foreground/70 transition-colors duration-150 ease-out
                          hover:bg-primary/30 hover:text-foreground
                          focus-visible:ring-2 focus-visible:ring-primary/80
                          focus-visible:outline-none focus-visible:ring-inset
                          active:bg-primary/40
                        `}
                        type="button"
                        aria-label={`Change icon category, currently ${category}`}
                        onClick={() => setNextCategory()}>
                        <SlidingControlLabel
                            value={category}
                            direction="up"
                            shouldReduceMotion={shouldReduceMotion}
                        />
                    </button>
                    <button
                        className={`
                          group relative size-full cursor-pointer overflow-hidden rounded-b-full
                          border-t border-primary/10 font-heading text-base font-black
                          text-foreground/70 transition-colors duration-150 ease-out
                          hover:bg-primary/30 hover:text-foreground
                          focus-visible:ring-2 focus-visible:ring-primary/80
                          focus-visible:outline-none focus-visible:ring-inset
                          active:bg-primary/40
                        `}
                        type="button"
                        aria-label={`Change icon style, currently ${style}`}
                        onClick={() => setNextStyle()}>
                        <SlidingControlLabel
                            value={style}
                            direction="down"
                            shouldReduceMotion={shouldReduceMotion}
                        />
                    </button>
                </div>
            </Circle>
            <AnimatePresence initial={false} mode="sync">
                <motion.div
                    key={`${category}-${style}`}
                    aria-hidden="true"
                    initial={
                        shouldReduceMotion
                            ? { opacity: 0.3, scale: 1 }
                            : { opacity: 0.82, scale: 0.84 }
                    }
                    animate={{
                        opacity: 0,
                        scale: shouldReduceMotion ? 1 : 4.4,
                    }}
                    exit={{
                        opacity: 0,
                        scale: 1.08,
                        transition: { duration: 0.12, ease: 'easeOut' },
                    }}
                    transition={
                        shouldReduceMotion
                            ? { duration: 0.16, ease: 'easeOut' }
                            : { duration: 1.05, ease: [0.23, 1, 0.32, 1] }
                    }
                    className="
                      hero-rotation-ripple pointer-events-none absolute top-1/2 left-1/2 z-40
                      size-40 -translate-1/2 rounded-full
                    "
                />
            </AnimatePresence>
        </div>
    )
}

interface AnimatedReadoutValueProps {
    value: string
    shouldReduceMotion: boolean | null
    widthClass: string
    className?: string
}

const AnimatedReadoutValue: FC<AnimatedReadoutValueProps> = ({
    value,
    shouldReduceMotion,
    widthClass,
    className,
}) => (
    <span className={cn('relative inline-block h-[1.35em] shrink-0 overflow-hidden', widthClass)}>
        <AnimatePresence initial={false} mode="sync">
            <motion.span
                key={value}
                initial={shouldReduceMotion ? false : { opacity: 0, y: '55%' }}
                animate={{ opacity: 1, y: '0%' }}
                exit={
                    shouldReduceMotion
                        ? { opacity: 0 }
                        : {
                              opacity: 0,
                              y: '-85%',
                              transition: { duration: 0.4, ease: 'easeIn' },
                          }
                }
                transition={
                    shouldReduceMotion
                        ? { duration: 0.12 }
                        : { duration: 0.56, ease: [0.23, 1, 0.32, 1] }
                }
                className={cn('absolute inset-0 block', className)}>
                {value}
            </motion.span>
        </AnimatePresence>
    </span>
)

interface HeroColorReadoutProps {
    label: string
    color: string
    shouldReduceMotion: boolean | null
}

const HeroColorReadout: FC<HeroColorReadoutProps> = ({ label, color, shouldReduceMotion }) => (
    <div className="flex items-center gap-3 whitespace-nowrap">
        <span
            className="size-3 shrink-0 rounded-full shadow-[0_0_0_3px_hsl(var(--background)/0.16)]"
            style={{ backgroundColor: color }}
            aria-hidden="true"
        />
        <span className="min-w-16 text-base font-semibold text-foreground">{label}</span>
        <AnimatedReadoutValue
            value={color.toUpperCase()}
            shouldReduceMotion={shouldReduceMotion}
            widthClass="w-[8ch]"
            className="font-mono text-base tracking-tight text-foreground"
        />
    </div>
)

interface HeroStrokeReadoutProps {
    visual: HeroIconVisualConfig
    shouldReduceMotion: boolean | null
    className?: string
}

const HeroStrokeReadout: FC<HeroStrokeReadoutProps> = ({
    visual,
    shouldReduceMotion,
    className,
}) => (
    <div
        data-hero-rotation-stroke-readout
        className={cn('flex w-60 shrink-0 flex-col gap-3 whitespace-nowrap', className)}>
        <div className="flex items-baseline gap-3">
            <span className="text-base font-semibold text-foreground">Stroke width</span>
            <AnimatedReadoutValue
                value={visual.strokeWidth.toFixed(1)}
                shouldReduceMotion={shouldReduceMotion}
                widthClass="w-[5ch]"
                className="
                  font-mono text-2xl leading-none font-medium tracking-tight text-foreground
                "
            />
        </div>
        <div className="flex h-7 items-end gap-1" aria-hidden="true">
            {HERO_ICON_STROKE_WIDTHS.map(strokeWidth => (
                <span
                    key={strokeWidth}
                    className={cn(
                        'w-1 rounded-full transition-[height,background-color] duration-300',
                        strokeWidth === visual.strokeWidth
                            ? 'bg-primary'
                            : 'bg-foreground/25 dark:bg-foreground/30'
                    )}
                    style={{ height: `${Math.max(3, strokeWidth * 6)}px` }}
                />
            ))}
        </div>
    </div>
)

interface HeroRotationReadoutsProps {
    visual: HeroIconVisualConfig
}

const HeroRotationReadouts: FC<HeroRotationReadoutsProps> = ({ visual }) => {
    const { resolvedTheme } = useTheme()
    const theme: HeroTheme = resolvedTheme === 'light' ? 'light' : 'dark'
    const colors = visual[theme]
    const shouldReduceMotion = useReducedMotion()

    return (
        <>
            <div
                data-hero-rotation-readouts-side
                className="
                  pointer-events-none absolute inset-x-0 z-30 items-center justify-between px-6
                  text-foreground/75
                  dark:text-foreground/80
                ">
                <HeroStrokeReadout
                    visual={visual}
                    shouldReduceMotion={shouldReduceMotion}
                    className="rotate-[-4deg]"
                />
                <div className="flex w-60 shrink-0 rotate-3 flex-col items-end gap-3">
                    <HeroColorReadout
                        label="Primary"
                        color={colors.color}
                        shouldReduceMotion={shouldReduceMotion}
                    />
                    <HeroColorReadout
                        label="Duotone"
                        color={colors.secondaryColor}
                        shouldReduceMotion={shouldReduceMotion}
                    />
                </div>
            </div>
            <div
                data-hero-rotation-readouts-orbit
                className="
                  pointer-events-none absolute inset-0 z-30 text-foreground/75
                  dark:text-foreground/80
                ">
                <div data-hero-rotation-orbit-item="stroke">
                    <HeroStrokeReadout visual={visual} shouldReduceMotion={shouldReduceMotion} />
                </div>
                <div data-hero-rotation-orbit-item="primary">
                    <HeroColorReadout
                        label="Primary"
                        color={colors.color}
                        shouldReduceMotion={shouldReduceMotion}
                    />
                </div>
                <div data-hero-rotation-orbit-item="duotone">
                    <HeroColorReadout
                        label="Duotone"
                        color={colors.secondaryColor}
                        shouldReduceMotion={shouldReduceMotion}
                    />
                </div>
            </div>
        </>
    )
}

interface CircleProps {
    size: number
    className?: string
    wrapperClassName?: string
    noGradient?: boolean
    controls?: boolean
    tone?: 'outer' | 'middle' | 'inner'
    children?: React.ReactNode
}

const Circle = forwardRef<HTMLDivElement, CircleProps>(
    (
        { size, className, wrapperClassName, noGradient, controls, tone, children, ...props },
        ref
    ) => (
        <div className={cn('absolute inset-0', wrapperClassName)} ref={ref} {...props}>
            <div
                data-hero-rotation-ring={tone}
                data-hero-rotation-controls={controls || undefined}
                className={cn(
                    !noGradient && 'hero-section-gradient',
                    'relative top-1/2 left-1/2 -translate-1/2 rounded-full',
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
    const [visual, setVisual] = useAtom(heroIconVisualAtom)
    const shouldReduceMotion = useReducedMotion()

    // Using useMemo instead of useState + useEffect to avoid setState in effect
    const { outerIcons, innerIcons } = useMemo(() => {
        const { inner, outer } = getIconsByCategory(category)
        return { outerIcons: outer, innerIcons: inner }
    }, [category])

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
        if (shouldReduceMotion) return

        let cycle = 0
        const interval = setInterval(() => {
            setVisual(current => pickRandomHeroIconVisual(current))

            if (cycle % 2 === 0) {
                setCategory(
                    current => categories[(categories.indexOf(current) + 1) % categories.length]!
                )
            } else {
                setStyle(current => styles[(styles.indexOf(current) + 1) % styles.length]!)
            }
            cycle += 1
        }, HERO_STATE_CHANGE_INTERVAL)

        return () => clearInterval(interval)
    }, [setCategory, setStyle, setVisual, shouldReduceMotion])

    useAnimationFrame((_, delta) => {
        if (shouldReduceMotion) return

        const currentScrollVelocity = scrollVelocity.get()
        const scrollDirection = currentScrollVelocity < 0 ? -1 : 1
        const speedAdjustment = 1 + Math.abs(velocityFactor.get())

        if (currentScrollVelocity !== 0) {
            directionFactor.current = scrollDirection
        }

        const adjustedSpeedOuter = baseSpeedOuter * speedAdjustment * directionFactor.current
        const adjustedSpeedInner = baseSpeedInner * speedAdjustment * directionFactor.current

        currentSpeedOuter.set(adjustedSpeedOuter)
        currentSpeedInner.set(adjustedSpeedInner)

        const frameDelta = Math.min(delta, 32) / 1000
        rotationOuter.set(rotationOuter.get() + currentSpeedOuter.get() * frameDelta)
        rotationInner.set(rotationInner.get() + currentSpeedInner.get() * frameDelta)
    })

    const heroRotationStyle = {
        '--hero-rotation-icon-color-light': visual.light.color,
        '--hero-rotation-icon-secondary-color-light': visual.light.secondaryColor,
        '--hero-rotation-icon-color-dark': visual.dark.color,
        '--hero-rotation-icon-secondary-color-dark': visual.dark.secondaryColor,
    } as React.CSSProperties

    return (
        <div data-hero-rotation-stage style={heroRotationStyle} className="relative min-h-0 w-full">
            <HeroRotationReadouts visual={visual} />
            <div data-hero-rotation-wheel className="absolute inset-x-0">
                <RotatingCircles
                    selectedStyle={style}
                    outerIcons={outerIcons}
                    innerIcons={innerIcons}
                    rotationOuter={rotationOuter}
                    rotationInner={rotationInner}
                />
            </div>
        </div>
    )
}
