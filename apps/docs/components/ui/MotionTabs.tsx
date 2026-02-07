'use client'
import { cn } from '@/lib/utils'
import { AnimatePresence, motion } from 'framer-motion'
import { useState } from 'react'
import { Button } from './button'

type MotionTab = {
    title: string
    value: string
    content?: string | React.ReactNode | any
}

export const MotionTabs = ({
    tabs: propTabs,
    containerClassName,
    activeTabClassName,
    tabClassName,
    contentClassName,
}: {
    tabs: MotionTab[]
    containerClassName?: string
    activeTabClassName?: string
    tabClassName?: string
    contentClassName?: string
}) => {
    const [active, setActive] = useState<MotionTab>(() => propTabs[0]!)
    const [hoveredTab, setHoveredTab] = useState<string | null>(null)

    const handleTabClick = (tab: MotionTab) => {
        if (tab.value !== active.value) {
            setActive(tab)
        }
    }

    const isActive = (tab: MotionTab) => {
        return tab.value === active.value
    }

    const isHovered = (tab: MotionTab) => {
        return hoveredTab === tab.value
    }

    return (
        <div
            className={`
              relative flex w-full grow-0 flex-col-reverse overflow-hidden
            `}>
            <div
                className={`
                  border-border bg-default-100 relative h-full min-h-[200px]
                  rounded-b-lg border px-2 py-4 text-left
                `}>
                <AnimatePresence mode="wait">
                    <motion.div
                        key={active.value}
                        initial={{
                            opacity: 0,
                            y: 20,
                            filter: 'blur(4px)',
                        }}
                        animate={{
                            opacity: 1,
                            y: 0,
                            filter: 'blur(0px)',
                        }}
                        exit={{
                            opacity: 0,
                            y: -20,
                            filter: 'blur(4px)',
                        }}
                        transition={{
                            duration: 0.3,
                            ease: 'easeInOut',
                        }}
                        className={cn('w-full', contentClassName)}>
                        {active.content}
                    </motion.div>
                </AnimatePresence>
            </div>

            <div
                className={cn(
                    `
                      no-visible-scrollbar relative -bottom-[1px] flex w-full
                      max-w-full flex-row items-center justify-start gap-2
                      overflow-auto
                      md:overflow-visible
                    `,
                    containerClassName
                )}>
                {propTabs.map(tab => (
                    <Button
                        variant="ghost"
                        size="sm"
                        key={tab.value}
                        onClick={() => handleTabClick(tab)}
                        onMouseEnter={() => setHoveredTab(tab.value)}
                        onMouseLeave={() => setHoveredTab(null)}
                        className={cn(
                            `
                              relative px-3 py-2 transition-all duration-200
                              ease-out
                            `,
                            `
                              rounded-none rounded-t-lg border border-b-0
                              text-sm font-medium whitespace-nowrap
                            `,
                            // add focus in top left and right but not bottom
                            'focus:border-primary',
                            tabClassName
                        )}>
                        {isActive(tab) && (
                            <motion.div
                                layoutId="activeTab"
                                transition={{
                                    type: 'spring',
                                    bounce: 0.15,
                                    duration: 0.5,
                                }}
                                className={cn(
                                    `
                                      border-border bg-default-100 absolute
                                      inset-0 rounded-t-lg border border-b-0
                                      shadow-2xl
                                    `,
                                    activeTabClassName
                                )}
                            />
                        )}

                        {!isActive(tab) && isHovered(tab) && (
                            <motion.div
                                initial={{ opacity: 0 }}
                                animate={{ opacity: 1 }}
                                exit={{ opacity: 0 }}
                                transition={{ duration: 0.2 }}
                                className={`
                                  from-accent absolute inset-0 rounded-t-lg
                                  bg-gradient-to-b to-transparent
                                `}
                            />
                        )}

                        {/* Tab text */}
                        <span
                            className={cn(
                                'relative block transition-colors duration-200',
                                isActive(tab)
                                    ? 'text-foreground'
                                    : `
                                      text-default-600
                                      hover:text-default-900
                                    `
                            )}>
                            {tab.title}
                        </span>
                    </Button>
                ))}
            </div>
        </div>
    )
}
