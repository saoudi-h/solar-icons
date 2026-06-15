'use client'
import { cn } from '@/lib/utils'
import { Icon } from '@iconify/react'
import NumberFlow from '@number-flow/react'
import { Star } from '@solar-icons/react/ssr'
import { motion } from 'framer-motion'
import React from 'react'

export interface GitHubStarButtonProps {
    starCount: number | null
    isLoading?: boolean
    className?: string
    style?: React.CSSProperties
}

export const GitHubStarButton: React.FC<GitHubStarButtonProps> = ({
    starCount,
    className,
    style,
}) => {
    // Standard fallback or initial value is 96 to prevent empty layout/shimmer shifts
    const displayCount = starCount !== null ? starCount : 96

    return (
        <motion.a
            href="https://github.com/saoudi-h/solar-icons"
            target="_blank"
            rel="noopener noreferrer"
            whileTap={{ scale: 0.96 }}
            transition={{ type: 'spring', stiffness: 500, damping: 25 }}
            style={style}
            className={cn(
                `
                  group relative flex h-13 items-center gap-4 rounded-full
                  border border-white/10 bg-neutral-900/80 px-6 text-sm
                  font-semibold text-neutral-200 shadow-2xl backdrop-blur-xl
                  transition-all duration-300 ease-out select-none
                  hover:border-warning/50 hover:bg-neutral-950/90
                  hover:text-white
                  dark:bg-black/60
                  dark:hover:bg-neutral-950/80
                `,
                className
            )}>
            {/* Outer gradient glow */}
            <div
                className="
                  absolute -inset-px -z-10 rounded-full bg-linear-to-r
                  from-warning/20 to-amber-500/20 opacity-0 blur-xs
                  transition-opacity duration-300
                  group-hover:opacity-100
                "
            />

            {/* Background glow shadow */}
            <div
                className="
                  absolute inset-0 -z-20 rounded-full bg-warning/10 opacity-0
                  blur-lg transition-opacity duration-300
                  group-hover:opacity-100
                "
            />

            {/* Reflection Sweep Effect */}
            <div
                className="
                  pointer-events-none absolute inset-0 overflow-hidden
                  rounded-full
                ">
                <div
                    className="
                      absolute -inset-y-2 -left-16 w-12 -rotate-12
                      bg-linear-to-r from-transparent via-white/15
                      to-transparent transition-transform duration-1000 ease-out
                      group-hover:translate-x-[400px]
                    "
                />
            </div>

            {/* Left section: GitHub Logo & text */}
            <span className="z-10 flex items-center gap-2.5">
                <Icon
                    icon="mdi:github"
                    className="
                      size-5.5 text-neutral-400 transition-colors duration-200
                      ease-out
                      group-hover:text-white
                    "
                />
                <span className="tracking-wide">Star on GitHub</span>
            </span>

            {/* Separator Line */}
            <div
                className="
                  z-10 h-4 w-px bg-white/10 transition-colors duration-200
                  ease-out
                  group-hover:bg-warning/30
                "
            />

            {/* Right section: Star & Counter */}
            <span className="z-10 flex items-center gap-1.5">
                <span
                    className={cn(
                        `
                          flex items-center justify-center transition-transform
                          duration-300 ease-out
                          group-hover:scale-120 group-hover:rotate-12
                        `,
                        starCount !== null
                            ? 'text-warning'
                            : `text-muted-foreground`
                    )}>
                    <Star size={18} weight={starCount !== null ? 'Bold' : 'Linear'} />
                </span>

                <span
                    className="
                      min-w-[18px] font-mono text-sm font-extrabold text-warning
                      transition-colors duration-200 ease-out
                    ">
                    <NumberFlow
                        value={displayCount}
                        format={{ minimumIntegerDigits: 1 }}
                        trend={1}
                    />
                </span>
            </span>
        </motion.a>
    )
}

GitHubStarButton.displayName = 'GitHubStarButton'
