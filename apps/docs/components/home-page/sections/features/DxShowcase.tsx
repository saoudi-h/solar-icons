import { Star } from '@solar-icons/react/ssr'
import { motion, useInView } from 'framer-motion'
import React from 'react'

export const DxShowcase = () => {
    const containerRef = React.useRef<HTMLDivElement>(null)
    const isInView = useInView(containerRef, { once: true, margin: '-50px' })

    return (
        <div className="mt-auto flex w-full flex-col pt-2">
            {/* Editor Window Mockup */}
            <motion.div
                ref={containerRef}
                initial={{ opacity: 0, y: 35 }}
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
                  flex h-[210px] flex-col overflow-hidden rounded-xl border
                  border-neutral-300/15 bg-[#1e1e1e] font-mono text-[10.5px]
                  text-[#abb2bf] shadow-lg
                ">
                {/* Title Bar / Tabs */}
                <div
                    className="
                      flex items-center justify-between border-b
                      border-[#252526] bg-[#181818] px-3 py-1.5 select-none
                    ">
                    <div className="flex items-center gap-1.5">
                        <span className="size-2.5 rounded-full bg-[#ff5f56]" />
                        <span className="size-2.5 rounded-full bg-[#ffbd2e]" />
                        <span className="size-2.5 rounded-full bg-[#27c93f]" />
                        <span
                            className="
                              ml-2 font-sans text-[10px] font-medium
                              text-[#858585]
                            ">
                            App.tsx
                        </span>
                    </div>
                    <span className="font-sans text-[9px] text-[#6b6b6b]">TypeScript</span>
                </div>

                {/* Editor Content Area */}
                <div
                    className="
                      relative flex-1 overflow-hidden p-3 leading-relaxed
                      select-none
                    ">
                    {/* Line Numbers & Code */}
                    <div className="flex gap-2">
                        {/* Line Numbers */}
                        <div
                            className="
                              w-3 pr-1 text-right font-sans text-[#5c6370]/60
                              select-none
                            ">
                            <div>1</div>
                            <div>2</div>
                            <div>3</div>
                            <div>4</div>
                            <div>5</div>
                        </div>

                        {/* Code */}
                        <div className="flex-1 text-[#abb2bf]">
                            <motion.div
                                initial={{ opacity: 0, x: -5 }}
                                animate={isInView ? { opacity: 1, x: 0 } : {}}
                                transition={{ delay: 0.15, duration: 0.3 }}>
                                <span className="text-[#c586c0]">import</span>{' '}
                                <span className="text-[#abb2bf]">{`{`}</span>{' '}
                                <span
                                    className="
                                      border-b border-dashed border-[#e06c75]/85
                                      text-[#e06c75]
                                    ">
                                    Star
                                </span>{' '}
                                <span className="text-[#abb2bf]">{`}`}</span>{' '}
                                <span className="text-[#c586c0]">from</span>{' '}
                                <span className="text-[#98c379]">"@solar-icons/react/ssr"</span>
                            </motion.div>
                            <div className="text-[#5c6370]"> </div>
                            <motion.div
                                initial={{ opacity: 0, x: -5 }}
                                animate={isInView ? { opacity: 1, x: 0 } : {}}
                                transition={{ delay: 0.25, duration: 0.3 }}>
                                <span className="text-[#e06c75]">const</span>{' '}
                                <span className="text-[#61afef]">App</span>{' '}
                                <span className="text-[#56b6c2]">=</span>{' '}
                                <span className="text-[#abb2bf]">()</span>{' '}
                                <span className="font-bold text-[#c586c0]">=&gt;</span>{' '}
                                <span className="text-[#abb2bf]">{`(`}</span>
                            </motion.div>
                            <motion.div
                                initial={{ opacity: 0, x: -5 }}
                                animate={isInView ? { opacity: 1, x: 0 } : {}}
                                transition={{ delay: 0.35, duration: 0.3 }}
                                className="pl-4">
                                <span className="text-[#56b6c2]">&lt;</span>
                                <span className="text-[#e06c75]">Star</span>{' '}
                                <span className="text-[#d19a66]">size</span>
                                <span className="text-[#56b6c2]">=</span>
                                <span className="text-[#abb2bf]">{`{`}</span>
                                <span className="text-[#d19a66]">24</span>
                                <span className="text-[#abb2bf]">{`}`}</span>
                            </motion.div>
                            <motion.div
                                initial={{ opacity: 0, x: -5 }}
                                animate={isInView ? { opacity: 1, x: 0 } : {}}
                                transition={{ delay: 0.45, duration: 0.3 }}
                                className="
                                  -ml-1 flex items-center gap-1 rounded-sm
                                  border-l-2 border-primary bg-[#2c313c]/35 px-1
                                  pl-8
                                ">
                                <span className="text-[#d19a66]">weight</span>
                                <span className="text-[#56b6c2]">=</span>
                                <span className="text-[#98c379]">""</span>
                                <span
                                    className="
                                      inline-block h-3 w-0.5 animate-pulse
                                      bg-primary/80
                                    "
                                />
                            </motion.div>
                        </div>
                    </div>

                    {/* Floating VS Code Suggestions & Documentation */}
                    <div
                        className="
                          absolute top-[76px] left-[72px] z-20 flex
                          max-w-[calc(100%-80px)] items-start gap-1
                        ">
                        {/* Completion List (Suggestions Box for weight) */}
                        <motion.div
                            initial={{ opacity: 0, y: 10, scale: 0.95 }}
                            animate={isInView ? { opacity: 1, y: 0, scale: 1 } : {}}
                            transition={{
                                type: 'spring',
                                stiffness: 120,
                                damping: 14,
                                delay: 0.6,
                            }}
                            className="
                              w-32 overflow-hidden rounded-sm border
                              border-[#454545] bg-[#252526] text-[9.5px]
                              text-[#cccccc] shadow-xl
                            ">
                            <div
                                className="
                                  flex items-center gap-1.5 bg-[#094771] px-1.5
                                  py-0.5 text-white
                                ">
                                <span
                                    className="
                                      font-sans font-bold text-blue-400
                                    ">
                                    ■
                                </span>
                                <span className="font-semibold">"BoldDuotone"</span>
                            </div>
                            <div
                                className="
                                  flex items-center gap-1.5 px-1.5 py-0.5
                                  opacity-85
                                  hover:bg-[#2a2d2e]
                                ">
                                <span
                                    className="
                                      font-sans font-bold text-blue-400
                                    ">
                                    ■
                                </span>
                                <span>"Bold"</span>
                            </div>
                            <div
                                className="
                                  flex items-center gap-1.5 px-1.5 py-0.5
                                  opacity-85
                                  hover:bg-[#2a2d2e]
                                ">
                                <span
                                    className="
                                      font-sans font-bold text-blue-400
                                    ">
                                    ■
                                </span>
                                <span>"Broken"</span>
                            </div>
                            <div
                                className="
                                  flex items-center gap-1.5 px-1.5 py-0.5
                                  opacity-85
                                  hover:bg-[#2a2d2e]
                                ">
                                <span
                                    className="
                                      font-sans font-bold text-blue-400
                                    ">
                                    ■
                                </span>
                                <span>"LineDuotone"</span>
                            </div>
                            <div
                                className="
                                  flex items-center gap-1.5 px-1.5 py-0.5
                                  opacity-85
                                  hover:bg-[#2a2d2e]
                                ">
                                <span
                                    className="
                                      font-sans font-bold text-blue-400
                                    ">
                                    ■
                                </span>
                                <span>"Linear"</span>
                            </div>
                        </motion.div>

                        {/* High-fidelity Import Hover Tooltip (replacing JSDoc Panel) */}
                        <motion.div
                            initial={{ opacity: 0, y: -8 }}
                            animate={isInView ? { opacity: 1, y: 0 } : {}}
                            transition={{
                                type: 'spring',
                                stiffness: 100,
                                damping: 15,
                                delay: 0.9,
                            }}
                            className="
                              absolute top-[-54px] left-[138px] z-30 hidden w-44
                              flex-col gap-1 rounded-sm border border-[#454545]
                              bg-[#1f1f1f] p-2 font-sans text-[9px]
                              leading-relaxed text-[#cccccc] shadow-xl
                              sm:flex
                            ">
                            <div
                                className="
                                  font-mono leading-snug text-[#56b6c2]
                                ">
                                <span className="font-sans text-[#858585]">alias</span>{' '}
                                <span className="text-[#c586c0]">const</span>{' '}
                                <span className="font-bold text-[#61afef]">Star</span>:{' '}
                                <span className="text-[#4ec9b0]">Icon</span>
                                <div
                                    className="
                                      font-sans text-[8.5px] text-[#858585]
                                    ">
                                    import Star
                                </div>
                            </div>
                            <div className="my-0.5 border-t border-[#454545]" />
                            <div className="flex flex-col gap-1 pl-1">
                                <div className="flex items-center gap-2">
                                    <Star
                                        size={13}
                                        weight="Bold"
                                        className="text-white"
                                    />
                                    <span className="font-mono text-[8.5px]">Bold</span>
                                </div>
                                <div className="flex items-center gap-2">
                                    <Star
                                        size={13}
                                        weight="BoldDuotone"
                                        className="text-white"
                                    />
                                    <span className="font-mono text-[8.5px]">BoldDuotone</span>
                                </div>
                                <div className="flex items-center gap-2">
                                    <Star
                                        size={13}
                                        weight="Broken"
                                        className="text-white"
                                    />
                                    <span className="font-mono text-[8.5px]">Broken</span>
                                </div>
                                <div className="flex items-center gap-2">
                                    <Star
                                        size={13}
                                        weight="LineDuotone"
                                        className="text-white"
                                    />
                                    <span className="font-mono text-[8.5px]">LineDuotone</span>
                                </div>
                                <div className="flex items-center gap-2">
                                    <Star
                                        size={13}
                                        weight="Linear"
                                        className="text-white"
                                    />
                                    <span className="font-mono text-[8.5px]">Linear</span>
                                </div>
                                <div className="flex items-center gap-2">
                                    <Star
                                        size={13}
                                        weight="Outline"
                                        className="text-white"
                                    />
                                    <span className="font-mono text-[8.5px]">Outline</span>
                                </div>
                            </div>
                        </motion.div>
                    </div>
                </div>

                {/* Status Bar */}
                <div
                    className="
                      flex items-center justify-between bg-[#007acc] px-2 py-0.5
                      font-sans text-[8.5px] text-white select-none
                    ">
                    <div className="flex items-center gap-2">
                        <span>-- NORMAL --</span>
                        <span>main*</span>
                    </div>
                    <div className="flex items-center gap-2">
                        <span>Ln 5, Col 18</span>
                        <span>UTF-8</span>
                    </div>
                </div>
            </motion.div>
        </div>
    )
}
