'use client'
import { cn } from '@/lib/utils'
import {
    Globus,
    Heart,
    PaletteRound,
    SettingsMinimalistic,
    ShieldCheck,
    Star,
} from '@solar-icons/react-reactive/ssr'
import { motion } from 'framer-motion'

export const StylesShowcase = () => {
    const styles = ['Linear', 'Bold', 'Outline', 'BoldDuotone', 'LineDuotone', 'Broken'] as const

    // Fully static shades to ensure Tailwind CSS parses classes correctly during purge
    const rows = [
        {
            icon: PaletteRound,
            shades: [
                'text-rose-300 dark:text-rose-800',
                'text-rose-400 dark:text-rose-700',
                'text-rose-500 dark:text-rose-600',
                'text-rose-600 dark:text-rose-500',
                'text-rose-700 dark:text-rose-400',
                'text-rose-800 dark:text-rose-300',
            ] as const,
        },
        {
            icon: SettingsMinimalistic,
            shades: [
                'text-emerald-300 dark:text-emerald-800',
                'text-emerald-400 dark:text-emerald-700',
                'text-emerald-500 dark:text-emerald-600',
                'text-emerald-600 dark:text-emerald-500',
                'text-emerald-700 dark:text-emerald-400',
                'text-emerald-800 dark:text-emerald-300',
            ] as const,
        },
        {
            icon: Heart,
            shades: [
                'text-sky-300 dark:text-sky-800',
                'text-sky-400 dark:text-sky-700',
                'text-sky-500 dark:text-sky-600',
                'text-sky-600 dark:text-sky-500',
                'text-sky-700 dark:text-sky-400',
                'text-sky-800 dark:text-sky-300',
            ] as const,
        },
        {
            icon: ShieldCheck,
            shades: [
                'text-violet-300 dark:text-violet-800',
                'text-violet-400 dark:text-violet-700',
                'text-violet-500 dark:text-violet-600',
                'text-violet-600 dark:text-violet-500',
                'text-violet-700 dark:text-violet-400',
                'text-violet-800 dark:text-violet-300',
            ] as const,
        },
        {
            icon: Star,
            shades: [
                'text-pink-300 dark:text-pink-800',
                'text-pink-400 dark:text-pink-700',
                'text-pink-500 dark:text-pink-600',
                'text-pink-600 dark:text-pink-500',
                'text-pink-700 dark:text-pink-400',
                'text-pink-800 dark:text-pink-300',
            ] as const,
        },
        {
            icon: Globus,
            shades: [
                'text-amber-300 dark:text-amber-800',
                'text-amber-400 dark:text-amber-700',
                'text-amber-500 dark:text-amber-600',
                'text-amber-600 dark:text-amber-500',
                'text-amber-700 dark:text-amber-400',
                'text-amber-800 dark:text-amber-300',
            ] as const,
        },
    ] as const

    return (
        <div className="relative h-52 w-full">
            <div
                className="
                  pointer-events-none absolute flex size-full items-center
                  justify-center select-none
                "
                style={{
                    perspective: 800,
                    transformStyle: 'preserve-3d',
                }}>
                <div
                    className="w-full max-w-xl p-2"
                    style={{
                        transform: 'rotateX(-35deg)',
                        transformStyle: 'preserve-3d',
                        maskImage: 'radial-gradient(circle, black 55%, transparent 95%)',
                        WebkitMaskImage: 'radial-gradient(circle, black 55%, transparent 95%)',
                    }}>
                    <div className="flex w-full flex-col gap-1">
                        {rows.map(({ icon: IconComponent, shades }, r) => (
                            <motion.div
                                key={r}
                                initial={{ opacity: 0, y: 10 }}
                                whileInView={{
                                    opacity: 1,
                                    y: 0,
                                    transition: {
                                        type: 'spring',
                                        stiffness: 100,
                                        damping: 15,
                                        delay: r * 0.05,
                                    },
                                }}
                                viewport={{ once: true, margin: '-50px' }}
                                className="
                                  flex w-full items-center justify-center
                                ">
                                <div
                                    className="
                                      flex flex-1 items-center justify-center
                                      gap-4
                                    ">
                                    {styles.map((style, c) => (
                                        <motion.div
                                            key={c}
                                            initial={{ scale: 0.5, opacity: 0 }}
                                            whileInView={{
                                                scale: 1,
                                                opacity: 1,
                                                transition: {
                                                    type: 'spring',
                                                    stiffness: 120,
                                                    damping: 12,
                                                    delay: 0.05 + r * 0.04 + c * 0.1,
                                                },
                                            }}
                                            viewport={{ once: true }}
                                            className="
                                              relative flex size-10 items-center
                                              justify-center
                                            ">
                                            <IconComponent
                                                size={28}
                                                weight={style}
                                                className={cn(
                                                    `
                                                      transition-all
                                                      duration-300
                                                    `,
                                                    shades[c]
                                                )}
                                            />
                                        </motion.div>
                                    ))}
                                </div>
                            </motion.div>
                        ))}
                    </div>
                </div>
            </div>
        </div>
    )
}
