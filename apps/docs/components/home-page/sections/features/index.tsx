'use client'
import { SectionMotion } from '@/components/ui-blocks/animations/SectionMotion'
import { Heading } from '@/components/ui/heading'
import { cn } from '@/lib/utils'
import {
    Star,
    Like,
    ShieldCheck,
    Globus,
    Link as LinkIcon,
    PaletteRound,
    PlugCircle,
    SettingsMinimalistic,
    CodeScan,
    Heart,
} from '@solar-icons/react/ssr'
import { AnimatePresence, motion } from 'framer-motion'
import { Icon } from '@iconify/react'
import React, { useState } from 'react'

const TABS = [
    { id: 'developers', label: 'For Developers' },
    { id: 'designers', label: 'For Designers' },
    { id: 'performance', label: 'For Performance' },
] as const

type TabId = typeof TABS[number]['id']

const TAB_CONTENT: Record<TabId, {
    title: string
    highlight: string
    description: string
    points: { title: string; desc: string; icon: React.FC<any> }[]
}> = {
    developers: {
        title: 'Built to enhance',
        highlight: 'Developer Experience',
        description: 'Spend less time wrestling with configurations and more time coding. Solar Icons provides type-safe, native, modular integration for modern tools.',
        points: [
            { title: 'Full Type Safety', desc: 'Auto-complete icon weights, styles, and sizes directly in your IDE.', icon: ShieldCheck },
            { title: 'Auto-Import Friendly', desc: 'No manual registries required. Modern bundlers handle tree-shaking easily.', icon: LinkIcon },
            { title: 'Multi-Framework Support', desc: 'Identical API structure across React, Vue, Svelte, Angular, and Solid.', icon: Globus },
        ]
    },
    designers: {
        title: 'Crafted for visual',
        highlight: 'Consistency & Style',
        description: 'Choose from six distinct, pixel-perfect visual styles designed to match your application\'s aesthetic and layout perfectly.',
        points: [
            { title: '6 Visual Styles', desc: 'Linear, Bold, Outline, BoldDuotone, LineDuotone, and Broken.', icon: PaletteRound },
            { title: 'Precise Geometry', desc: 'Consistent strokes, bounding boxes, and professional layout grids.', icon: Star },
            { title: 'Figma Components', desc: 'Fully mapped figma libraries ready to drop into design systems.', icon: Like },
        ]
    },
    performance: {
        title: 'Optimized for modern',
        highlight: 'Speed & Scale',
        description: 'Zero bloat, zero overhead. Keep your production bundles fast, lightweight, and tree-shakeable.',
        points: [
            { title: 'Zero-Bloat Sub-packages', desc: 'Import only the icon subsets you need, saving bundle footprint.', icon: PlugCircle },
            { title: 'Native SSR Compatibility', desc: 'Renders instantly on server side with zero layout/hydration shifts.', icon: CodeScan },
            { title: 'Tree-Shakeable Footprint', desc: 'Bundler outputs will only include the icons actually used in code.', icon: SettingsMinimalistic },
        ]
    }
}

export const FeaturesSection = () => {
    const [activeTab, setActiveTab] = useState<TabId>('developers')
    const content = TAB_CONTENT[activeTab]

    // Stagger animation variants
    const containerVariants = {
        hidden: { opacity: 0 },
        visible: {
            opacity: 1,
            transition: {
                staggerChildren: 0.08,
                delayChildren: 0.1,
            },
        },
    }

    const itemVariants = {
        hidden: { opacity: 0, y: 20 },
        visible: {
            opacity: 1,
            y: 0,
            transition: {
                type: 'spring' as const,
                stiffness: 100,
                damping: 18,
            },
        },
    }

    return (
        <SectionMotion 
            variants={containerVariants}
            className="
              relative container flex w-full flex-col items-center gap-12
              self-center px-4 py-20
              md:px-0
            "
        >
            {/* Ambient Background Glows */}
            <div className="absolute inset-0 -z-10 overflow-hidden pointer-events-none opacity-40">
                <div className="absolute top-1/4 left-1/4 size-72 rounded-full bg-primary/10 blur-3xl dark:bg-primary/5" />
                <div className="absolute bottom-1/4 right-1/4 size-80 rounded-full bg-warning/5 blur-3xl" />
            </div>

            {/* Title Block */}
            <motion.div variants={itemVariants} className="flex flex-col items-center text-center gap-4">
                <Heading size="h1" className="text-3xl font-extrabold tracking-tight md:text-5xl">
                    Crafted for the{' '}
                    <span className="box-decoration-clone underline decoration-primary underline-offset-8">
                        Entire Team
                    </span>
                </Heading>
                <p className="max-w-[580px] text-muted-foreground text-sm md:text-base leading-relaxed">
                    Discover how Solar Icons satisfies designers, developers, and product teams via premium visual options and outstanding developer ergonomics.
                </p>

                {/* Tab Pill Selector */}
                <div className="
                  mt-4 flex rounded-full bg-neutral-100 p-1 border border-neutral-200/50 
                  dark:bg-neutral-900/50 dark:border-neutral-800/50 backdrop-blur-xs select-none
                ">
                    {TABS.map(tab => {
                        const isActive = activeTab === tab.id
                        return (
                            <button
                                key={tab.id}
                                onClick={() => setActiveTab(tab.id)}
                                className={cn(
                                    `
                                      relative rounded-full px-5 py-2 text-xs md:text-sm 
                                      font-semibold transition-colors duration-250 cursor-pointer
                                    `,
                                    isActive ? "text-white" : "text-muted-foreground hover:text-foreground"
                                )}
                            >
                                {isActive && (
                                    <motion.span
                                        layoutId="activeTab"
                                        className="absolute inset-0 rounded-full bg-primary shadow-xs"
                                        transition={{ type: 'spring', stiffness: 350, damping: 25 }}
                                    />
                                )}
                                <span className="relative z-10">{tab.label}</span>
                            </button>
                        )
                    })}
                </div>
            </motion.div>

            {/* Split Content & Showcase Layout */}
            <div className="relative w-full grid grid-cols-1 md:grid-cols-12 gap-8 items-center mt-4 min-h-[460px]">
                {/* Left Column: Copywriting content */}
                <div className="md:col-span-6 flex flex-col justify-center gap-6 text-left">
                    <AnimatePresence mode="wait">
                        <motion.div
                            key={activeTab}
                            initial={{ opacity: 0, x: -20 }}
                            animate={{ opacity: 1, x: 0 }}
                            exit={{ opacity: 0, x: 20 }}
                            transition={{ duration: 0.25, ease: 'easeOut' }}
                            className="flex flex-col gap-6"
                        >
                            <div className="flex flex-col gap-3">
                                <h2 className="text-2xl font-extrabold tracking-tight text-foreground md:text-3xl leading-tight">
                                    {content.title}{' '}
                                    <span className="text-primary block">
                                        {content.highlight}
                                    </span>
                                </h2>
                                <p className="text-sm md:text-base text-muted-foreground/90 leading-relaxed max-w-[500px]">
                                    {content.description}
                                </p>
                            </div>

                            {/* Bullet Points */}
                            <div className="flex flex-col gap-4 mt-2">
                                {content.points.map((point, index) => {
                                    const PointIcon = point.icon
                                    return (
                                        <div key={index} className="flex items-start gap-4">
                                            <div className="flex size-9 shrink-0 items-center justify-center rounded-lg bg-primary/10 text-primary">
                                                <PointIcon size={18} weight="Bold" />
                                            </div>
                                            <div className="flex flex-col gap-0.5">
                                                <span className="text-sm font-bold text-foreground">
                                                    {point.title}
                                                </span>
                                                <span className="text-xs text-muted-foreground/80 leading-normal">
                                                    {point.desc}
                                                </span>
                                            </div>
                                        </div>
                                    )
                                })}
                            </div>
                        </motion.div>
                    </AnimatePresence>
                </div>

                {/* Right Column: Dynamic Preview Panel */}
                <motion.div 
                    variants={itemVariants}
                    className="md:col-span-6 flex items-center justify-center"
                >
                    <div className="
                      relative w-full h-[360px] md:h-[390px] rounded-3xl border border-default-200/50 
                      bg-default-100/10 dark:border-neutral-800/40 dark:bg-neutral-900/10 
                      backdrop-blur-3xs p-6 md:p-8 flex items-center justify-center overflow-hidden
                    ">
                        <AnimatePresence mode="wait">
                            {activeTab === 'developers' && <DevelopersShowcase />}
                            {activeTab === 'designers' && <DesignersShowcase />}
                            {activeTab === 'performance' && <PerformanceShowcase />}
                        </AnimatePresence>
                    </div>
                </motion.div>
            </div>
        </SectionMotion>
    )
}

/* 1. Developers Showcase (VS Code Mockup with Autocomplete suggestion box) */
const DevelopersShowcase = () => {
    return (
        <motion.div
            key="developers-showcase"
            initial={{ opacity: 0, scale: 0.96 }}
            animate={{ opacity: 1, scale: 1 }}
            exit={{ opacity: 0, scale: 0.96 }}
            transition={{ duration: 0.2, ease: 'easeOut' }}
            className="w-full flex flex-col gap-3 font-mono text-left"
        >
            <div className="
              w-full rounded-xl border border-neutral-200/80 bg-white shadow-xl 
              dark:border-neutral-800 dark:bg-neutral-950 overflow-hidden flex flex-col
            ">
                {/* Header with OS controls */}
                <div className="h-9 border-b border-neutral-200 dark:border-neutral-800 bg-neutral-50 dark:bg-neutral-900 flex items-center px-4 justify-between select-none">
                    <div className="flex gap-1.5">
                        <div className="size-2.5 rounded-full bg-red-400" />
                        <div className="size-2.5 rounded-full bg-yellow-400" />
                        <div className="size-2.5 rounded-full bg-green-400" />
                    </div>
                    <span className="text-[10px] text-muted-foreground font-semibold">App.tsx</span>
                    <div className="w-8" />
                </div>
                
                {/* Editor code lines */}
                <div className="p-4 flex flex-col gap-1 text-[11px] text-neutral-800 dark:text-neutral-300 leading-relaxed overflow-x-auto select-none">
                    <div>
                        <span className="text-purple-500 dark:text-pink-400">import</span>{' '}
                        <span className="text-blue-500 dark:text-blue-300">{`{ Star }`}</span>{' '}
                        <span className="text-purple-500 dark:text-pink-400">from</span>{' '}
                        <span className="text-green-600 dark:text-green-400">"@solar-icons/react"</span>
                    </div>
                    <div>
                        <span className="text-purple-500 dark:text-pink-400">export default function</span>{' '}
                        <span className="text-yellow-600 dark:text-yellow-400">Button</span>() {`{`}
                    </div>
                    <div>
                        &nbsp;&nbsp;<span className="text-purple-500 dark:text-pink-400">return</span> (
                    </div>
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&lt;<span className="text-red-500 dark:text-red-400">button</span> className=<span className="text-green-600 dark:text-green-400">"flex items-center gap-2"</span>&gt;
                    </div>
                    
                    {/* Animated Autocomplete line */}
                    <div className="relative bg-primary/5 dark:bg-primary/10 rounded-xs py-0.5 px-1 w-fit">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;<span className="text-red-500 dark:text-red-400">Star</span> size={<span className="text-orange-500 dark:text-orange-400">24</span>} weight="
                        <span className="animate-pulse font-bold text-primary dark:text-primary-foreground">|</span>
                        
                        {/* VSCode Suggestion Overlays */}
                        <div className="absolute left-[130px] top-6 z-20 w-44 rounded-lg border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 shadow-2xl p-1 flex flex-col font-sans select-none text-[10px] text-neutral-700 dark:text-neutral-300">
                            <div className="px-2 py-1 text-[8px] font-bold text-muted-foreground uppercase border-b border-neutral-100 dark:border-neutral-800 tracking-wider">
                                Suggestions
                            </div>
                            <div className="flex items-center justify-between px-2 py-1 bg-primary/10 dark:bg-primary/20 text-primary dark:text-primary-foreground font-semibold rounded-xs">
                                <span>"Bold"</span>
                                <span className="text-[8px] text-muted-foreground font-normal">default</span>
                            </div>
                            <div className="px-2 py-1 text-muted-foreground">"Linear"</div>
                            <div className="px-2 py-1 text-muted-foreground">"Outline"</div>
                            <div className="px-2 py-1 text-muted-foreground">"BoldDuotone"</div>
                            <div className="px-2 py-1 text-muted-foreground">"LineDuotone"</div>
                            <div className="px-2 py-1 text-muted-foreground">"Broken"</div>
                        </div>
                    </div>
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;className=<span className="text-green-600 dark:text-green-400">"text-warning"</span>
                    </div>
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/&gt;
                    </div>
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Favorite
                    </div>
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&lt;/<span className="text-red-500 dark:text-red-400">button</span>&gt;
                    </div>
                    <div>
                        &nbsp;&nbsp;)
                    </div>
                    <div>{`}`}</div>
                </div>
            </div>
        </motion.div>
    )
}

/* 2. Designers Showcase (Tighter static layout of icons with style switcher morphing) */
const STYLE_TABS = [
    { id: 'Linear', label: 'Linear' },
    { id: 'Bold', label: 'Bold' },
    { id: 'Outline', label: 'Outline' },
    { id: 'BoldDuotone', label: 'Duotone' },
    { id: 'Broken', label: 'Broken' },
] as const

type IconStyle = typeof STYLE_TABS[number]['id']

const DesignersShowcase = () => {
    const [selectedStyle, setSelectedStyle] = useState<IconStyle>('BoldDuotone')
    
    const showcaseIcons = [
        Star, Like, ShieldCheck, Globus, PaletteRound, PlugCircle, SettingsMinimalistic, Heart
    ]

    return (
        <motion.div
            key="designers-showcase"
            initial={{ opacity: 0, scale: 0.96 }}
            animate={{ opacity: 1, scale: 1 }}
            exit={{ opacity: 0, scale: 0.96 }}
            transition={{ duration: 0.2, ease: 'easeOut' }}
            className="w-full flex flex-col items-center gap-6"
        >
            {/* Style selector pills */}
            <div className="flex flex-wrap gap-1 p-1 rounded-full bg-neutral-100 dark:bg-neutral-900 border border-neutral-200/50 dark:border-neutral-800/50 select-none">
                {STYLE_TABS.map(tab => {
                    const isActive = selectedStyle === tab.id
                    return (
                        <button
                            key={tab.id}
                            onClick={() => setSelectedStyle(tab.id)}
                            className={cn(
                                "rounded-full px-3 py-1 text-[10px] md:text-xs font-bold transition-all cursor-pointer",
                                isActive 
                                    ? "bg-white text-neutral-900 shadow-2xs dark:bg-neutral-800 dark:text-white" 
                                    : "text-muted-foreground hover:text-foreground"
                            )}
                        >
                            {tab.label}
                        </button>
                    )
                })}
            </div>

            {/* Grid display of icons */}
            <div className="
              w-full max-w-[280px] grid grid-cols-4 gap-4 p-5 rounded-2xl bg-white 
              dark:bg-neutral-950 border border-neutral-100 dark:border-neutral-900 
              shadow-xl justify-items-center
            ">
                {showcaseIcons.map((IconComponent, idx) => (
                    <div
                        key={idx}
                        className="p-3 flex items-center justify-center rounded-xl bg-neutral-50 dark:bg-neutral-900 text-primary dark:text-primary-foreground size-12"
                    >
                        <motion.div
                            key={selectedStyle}
                            initial={{ scale: 0.8, opacity: 0 }}
                            animate={{ scale: 1, opacity: 1 }}
                            transition={{ type: 'spring', stiffness: 320, damping: 22 }}
                        >
                            <IconComponent size={24} weight={selectedStyle} />
                        </motion.div>
                    </div>
                ))}
            </div>
        </motion.div>
    )
}

/* 3. Performance Showcase (Horizontal animated bar chart for import footprints) */
const BENCHMARKS = [
    { name: '@solar-icons/react-perf', size: 0.4, percentage: 10, isPrimary: true },
    { name: '@solar-icons/react', size: 1.2, percentage: 22, isPrimary: true },
    { name: 'Generic Icon Library A', size: 14.8, percentage: 65, isPrimary: false },
    { name: 'Generic Icon Library B', size: 32.4, percentage: 100, isPrimary: false },
]

const PerformanceShowcase = () => {
    return (
        <motion.div
            key="performance-showcase"
            initial={{ opacity: 0, scale: 0.96 }}
            animate={{ opacity: 1, scale: 1 }}
            exit={{ opacity: 0, scale: 0.96 }}
            transition={{ duration: 0.2, ease: 'easeOut' }}
            className="w-full flex flex-col gap-6 text-left"
        >
            <div className="flex flex-col gap-4 p-5 rounded-2xl bg-white dark:bg-neutral-950 border border-neutral-100 dark:border-neutral-900 shadow-xl">
                <div className="flex flex-col gap-0.5 select-none">
                    <span className="text-[10px] font-bold text-muted-foreground uppercase tracking-widest">Benchmark</span>
                    <span className="text-xs font-extrabold text-foreground">Import Size (GZIP Footprint)</span>
                </div>
                
                <div className="flex flex-col gap-4 mt-1">
                    {BENCHMARKS.map((bench, idx) => (
                        <div key={idx} className="flex flex-col gap-1">
                            <div className="flex items-center justify-between text-[10px] font-semibold select-none">
                                <span className={bench.isPrimary ? "text-primary dark:text-primary-foreground font-bold" : "text-neutral-500"}>
                                    {bench.name}
                                </span>
                                <span className="font-mono text-foreground font-bold">{bench.size} KB</span>
                            </div>
                            {/* Animated progress bar */}
                            <div className="h-2 w-full bg-neutral-100 dark:bg-neutral-900 rounded-full overflow-hidden">
                                <motion.div
                                    initial={{ width: 0 }}
                                    animate={{ width: `${bench.percentage}%` }}
                                    transition={{ duration: 0.8, ease: [0.25, 1, 0.5, 1], delay: idx * 0.05 }}
                                    className={cn(
                                        "h-full rounded-full",
                                        bench.isPrimary 
                                            ? "bg-gradient-to-r from-primary/60 to-primary" 
                                            : "bg-neutral-300 dark:bg-neutral-700"
                                    )}
                                />
                            </div>
                        </div>
                    ))}
                </div>
            </div>
        </motion.div>
    )
}
