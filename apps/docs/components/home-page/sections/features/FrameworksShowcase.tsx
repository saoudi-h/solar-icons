'use client'
import { cn } from '@/lib/utils'
import { Icon } from '@iconify/react'
import { motion } from 'framer-motion'
import styles from './FrameworksShowcase.module.css'

export const FrameworksShowcase = () => {
    const frameworks = [
        { name: 'React', icon: 'logos:react', color: 'hover:shadow-sky-500/20' },
        { name: 'Vue', icon: 'logos:vue', color: 'hover:shadow-emerald-500/20' },
        { name: 'Svelte', icon: 'logos:svelte-icon', color: 'hover:shadow-orange-500/20' },
        { name: 'Solid', icon: 'logos:solidjs-icon', color: 'hover:shadow-blue-500/20' },
        { name: 'Angular', icon: 'logos:angular-icon', color: 'hover:shadow-red-500/20' },
        { name: 'Nuxt', icon: 'logos:nuxt-icon', color: 'hover:shadow-green-500/20' },
        { name: 'static', icon: 'vscode-icons:file-type-svg', color: 'hover:shadow-[#ffb13b]/20' },
    ]

    return (
        <div className="mt-auto flex w-full items-center justify-center pb-4">
            <div className="flex max-w-85 flex-wrap justify-center gap-6">
                {frameworks.map((fw, idx) => {
                    const isEven = idx % 2 === 0
                    return (
                        <motion.div
                            key={fw.name}
                            initial={{ scale: 0.4, opacity: 0 }}
                            whileInView={{
                                scale: 1,
                                opacity: 1,
                                transition: {
                                    type: 'spring',
                                    stiffness: 100,
                                    damping: 14,
                                    delay: idx * 0.08,
                                },
                            }}
                            viewport={{ once: true, margin: '-50px' }}>
                            <div
                                className={cn(
                                    `
                                      flex size-18 items-center justify-center
                                      rounded-full bg-default-200 shadow-2xs
                                      backdrop-blur-sm transition-all
                                      duration-300 select-none
                                      hover:scale-125 hover:shadow-xl
                                    `,
                                    isEven ? styles.badgeFloatUp : styles.badgeFloatDown,
                                    fw.color
                                )}
                                style={{
                                    animationDelay: `${idx * 0.25}s`,
                                }}>
                                <Icon icon={fw.icon} className="size-9" />
                            </div>
                        </motion.div>
                    )
                })}
            </div>
        </div>
    )
}
