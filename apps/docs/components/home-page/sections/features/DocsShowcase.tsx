import { Icon } from '@iconify/react'
import { AnimatePresence, motion, useInView } from 'framer-motion'
import React from 'react'

export const DocsShowcase = () => {
    const [isOpen, setIsOpen] = React.useState(false)
    const containerRef = React.useRef<HTMLDivElement>(null)
    const isInView = useInView(containerRef, { once: true, margin: '-50px' })

    React.useEffect(() => {
        if (isInView) {
            const timer = setTimeout(() => {
                setIsOpen(true)
            }, 450)
            return () => clearTimeout(timer)
        }
    }, [isInView])

    const options = [
        { name: 'Open in GitHub', icon: 'mdi:github' },
        { name: 'View as Markdown', icon: 'mdi:markdown' },
        { name: 'Open in Scira AI', icon: 'material-symbols:psychology' },
        { name: 'Open in ChatGPT', icon: 'simple-icons:openai' },
        { name: 'Open in Claude', icon: 'simple-icons:anthropic' },
        { name: 'Open in Cursor', icon: 'material-symbols:code' },
    ] as const

    return (
        <div
            ref={containerRef}
            className="mt-auto flex w-full flex-col gap-4 font-sans text-xs">
            {/* Document Header mockup */}
            <motion.div
                initial={{ opacity: 0, y: 30 }}
                whileInView={{
                    opacity: 1,
                    y: 0,
                }}
                transition={{
                    type: 'spring',
                    stiffness: 80,
                    damping: 15,
                    delay: 0.1,
                }}
                viewport={{ once: true, margin: '-50px' }}
                className="
                  relative flex min-h-[220px] flex-col gap-3 rounded-2xl border
                  border-neutral-300/10 bg-neutral-200/40 p-4
                  dark:border-neutral-800/30 dark:bg-neutral-950/20
                ">
                {/* Button bar */}
                <div className="flex items-center gap-2">
                    <motion.button
                        initial={{ opacity: 0, scale: 0.9 }}
                        whileInView={{ opacity: 1, scale: 1 }}
                        transition={{ delay: 0.2, duration: 0.3 }}
                        viewport={{ once: true }}
                        className="
                          flex items-center gap-1.5 rounded-lg border
                          border-neutral-300/20 bg-white px-3 py-1.5 font-bold
                          text-neutral-700 shadow-2xs select-none
                          dark:border-neutral-800 dark:bg-neutral-900
                          dark:text-neutral-300
                        ">
                        <Icon
                            icon="mdi:content-copy"
                            className="size-3.5 text-neutral-400"
                        />
                        Copy Markdown
                    </motion.button>

                    <div className="relative">
                        <motion.button
                            initial={{ opacity: 0, scale: 0.9 }}
                            whileInView={{ opacity: 1, scale: 1 }}
                            transition={{ delay: 0.3, duration: 0.3 }}
                            viewport={{ once: true }}
                            onClick={() => setIsOpen(!isOpen)}
                            className="
                              flex cursor-pointer items-center gap-1 rounded-lg
                              border border-neutral-300/20 bg-white px-3 py-1.5
                              font-bold text-neutral-700 shadow-2xs select-none
                              dark:border-neutral-800 dark:bg-neutral-900
                              dark:text-neutral-300
                            ">
                            Open
                            <Icon
                                icon="material-symbols:keyboard-arrow-down"
                                className="size-3.5 text-neutral-400"
                            />
                        </motion.button>

                        {/* Expanded Dropdown mockup */}
                        <AnimatePresence>
                            {isOpen && (
                                <motion.div
                                    initial={{ opacity: 0, y: 10, scale: 0.95 }}
                                    animate={{ opacity: 1, y: 4, scale: 1 }}
                                    exit={{ opacity: 0, y: 10, scale: 0.95 }}
                                    transition={{
                                        duration: 0.15,
                                        type: 'spring',
                                        stiffness: 150,
                                        damping: 15,
                                    }}
                                    className="
                                      absolute top-full left-0 z-30 w-48
                                      rounded-xl border border-neutral-200
                                      bg-white p-1.5 shadow-lg
                                      dark:border-neutral-800
                                      dark:bg-neutral-900
                                    ">
                                    {options.map((opt, idx) => (
                                        <motion.div
                                            key={opt.name}
                                            initial={{ opacity: 0, x: -5 }}
                                            animate={{
                                                opacity: 1,
                                                x: 0,
                                                transition: {
                                                    delay: idx * 0.03,
                                                },
                                            }}
                                            className="
                                              flex cursor-pointer items-center
                                              justify-between rounded-lg px-2.5
                                              py-1.5 text-neutral-600
                                              transition-colors
                                              hover:bg-neutral-100
                                              hover:text-neutral-900
                                              dark:text-neutral-400
                                              dark:hover:bg-neutral-800/50
                                              dark:hover:text-neutral-100
                                            ">
                                            <div
                                                className="
                                                  flex items-center gap-2
                                                ">
                                                <Icon
                                                    icon={opt.icon}
                                                    className="
                                                      size-4 text-neutral-400
                                                      dark:text-neutral-500
                                                    "
                                                />
                                                <span
                                                    className="
                                                      text-[10.5px] font-medium
                                                    ">
                                                    {opt.name}
                                                </span>
                                            </div>
                                            <Icon
                                                icon="material-symbols:open-in-new"
                                                className="
                                                  size-3 text-neutral-400
                                                "
                                            />
                                        </motion.div>
                                    ))}
                                </motion.div>
                            )}
                        </AnimatePresence>
                    </div>
                </div>

                {/* Faded Document Text preview in background */}
                <motion.div
                    initial={{ opacity: 0 }}
                    whileInView={{ opacity: 0.3 }}
                    transition={{ delay: 0.4, duration: 0.5 }}
                    viewport={{ once: true }}
                    className="
                      pointer-events-none mt-2 flex flex-col gap-2 select-none
                    ">
                    <div
                        className="
                          h-3 w-1/3 rounded-sm bg-neutral-400
                          dark:bg-neutral-600
                        "
                    />
                    <div
                        className="
                          h-2 w-full rounded-sm bg-neutral-300
                          dark:bg-neutral-700
                        "
                    />
                    <div
                        className="
                          h-2 w-5/6 rounded-sm bg-neutral-300
                          dark:bg-neutral-700
                        "
                    />
                </motion.div>
            </motion.div>
        </div>
    )
}
