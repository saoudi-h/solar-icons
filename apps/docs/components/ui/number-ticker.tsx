'use client'

import { useEffect, useRef } from 'react'
import { useInView, useMotionValue, useSpring } from 'framer-motion'

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

    const isFirstRender = useRef(true)

    const initialMotionValue =
        disableAnimationOnFirstRender && isFirstRender.current
            ? value
            : direction === 'down'
              ? value
              : 0

    const motionValue = useMotionValue(initialMotionValue)
    const springValue = useSpring(motionValue, {
        damping: 60,
        stiffness: 600,
    })

    useEffect(() => {
        if (disableAnimationOnFirstRender && isFirstRender.current && ref.current) {
            ref.current.textContent = Intl.NumberFormat('en-US', {
                minimumFractionDigits: decimalPlaces,
                maximumFractionDigits: decimalPlaces,
            }).format(Number(value.toFixed(decimalPlaces)))
        }
    }, [disableAnimationOnFirstRender, decimalPlaces, value])

    useEffect(() => {
        if (isInView) {
            if (isFirstRender.current) {
                if (!disableAnimationOnFirstRender) {
                    setTimeout(() => {
                        motionValue.set(direction === 'down' ? 0 : value)
                    }, delay * 1000)
                }
                isFirstRender.current = false
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
                'inline-block tabular-nums text-black dark:text-white tracking-wider',
                className
            )}
            ref={ref}
        />
    )
}
