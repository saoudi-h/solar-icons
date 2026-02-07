'use client'

import { useInView, useMotionValue, useSpring } from 'framer-motion'
import { useEffect, useRef } from 'react'

import { cn } from '@/lib/utils'

interface NumberTickerProps {
    value: number
    direction?: 'up' | 'down'
    className?: string
    delay?: number // delay in seconds
    decimalPlaces?: number
    disableAnimationOnFirstRender?: boolean
}

export default function NumberTicker({
    value,
    direction = 'up',
    delay = 0,
    className,
    decimalPlaces = 0,
    disableAnimationOnFirstRender = true,
}: NumberTickerProps) {
    const ref = useRef<HTMLSpanElement>(null)
    const isInView = useInView(ref, { once: true, margin: '0px' })
    const hasAnimated = useRef(false)

    // Always start from 0 or value depending on direction, animation happens in effect
    const motionValue = useMotionValue(direction === 'down' ? value : 0)
    const springValue = useSpring(motionValue, {
        damping: 60,
        stiffness: 600,
    })

    useEffect(() => {
        if (disableAnimationOnFirstRender && !hasAnimated.current && ref.current) {
            // On first render, just show the value without animation
            ref.current.textContent = Intl.NumberFormat('en-US', {
                minimumFractionDigits: decimalPlaces,
                maximumFractionDigits: decimalPlaces,
            }).format(Number(value.toFixed(decimalPlaces)))
        }
    }, [disableAnimationOnFirstRender, decimalPlaces, value])

    useEffect(() => {
        if (isInView) {
            if (!hasAnimated.current) {
                if (!disableAnimationOnFirstRender) {
                    setTimeout(() => {
                        motionValue.set(direction === 'down' ? 0 : value)
                    }, delay * 1000)
                }
                hasAnimated.current = true
            } else {
                setTimeout(() => {
                    motionValue.set(direction === 'down' ? 0 : value)
                }, delay * 1000)
            }
        }
    }, [isInView, motionValue, delay, value, direction, disableAnimationOnFirstRender])

    useEffect(() => {
        const unsubscribe = springValue.on('change', latest => {
            if (ref.current) {
                ref.current.textContent = Intl.NumberFormat('en-US', {
                    minimumFractionDigits: decimalPlaces,
                    maximumFractionDigits: decimalPlaces,
                }).format(Number(latest.toFixed(decimalPlaces)))
            }
        })

        return () => unsubscribe()
    }, [springValue, decimalPlaces])

    return (
        <span
            className={cn(
                `
                  inline-block tracking-wider text-black tabular-nums
                  dark:text-white
                `,
                className
            )}
            ref={ref}
        />
    )
}
