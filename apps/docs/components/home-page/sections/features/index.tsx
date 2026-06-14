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
import { motion } from 'framer-motion'
import { Icon } from '@iconify/react'
import React from 'react'

export const FeaturesSection = () => {
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
                <div className="absolute top-1/4 left-1/4 size-72 rounded-full bg-primary/8 blur-3xl dark:bg-primary/4" />
                <div className="absolute bottom-1/4 right-1/4 size-80 rounded-full bg-warning/4 blur-3xl" />
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
            </motion.div>

            {/* Bento Grid Layout */}
            <div className="w-full grid grid-cols-1 md:grid-cols-12 gap-6 mt-4">
                {/* Card 1: 6 Styles & 7,400+ Variations (md:col-span-7) */}
                <motion.div variants={itemVariants} className="md:col-span-7 flex">
                    <BentoCard>
                        <BentoHeader 
                            title="6 Visual Styles & 7,400+ Variations" 
                            description="Visual flexibility at your fingertips. Every icon comes in Linear, Bold, Outline, BoldDuotone, LineDuotone, and Broken styles to align with any brand identity."
                        />
                        <StylesShowcase />
                    </BentoCard>
                </motion.div>

                {/* Card 2: Native Frameworks (md:col-span-5) */}
                <motion.div variants={itemVariants} className="md:col-span-5 flex">
                    <BentoCard>
                        <BentoHeader 
                            title="First-Class Framework Support" 
                            description="Native integration for modern tools. Direct packages for React, React Native, Vue, Nuxt, Svelte, SolidJS, and Angular."
                        />
                        <FrameworksShowcase />
                    </BentoCard>
                </motion.div>

                {/* Card 3: Pixel-Perfect 24px Grid (md:col-span-4) */}
                <motion.div variants={itemVariants} className="md:col-span-4 flex">
                    <BentoCard>
                        <BentoHeader 
                            title="Pixel-Perfect 24px Grid" 
                            description="Consistent vector geometry. Designed on a standard 24x24 pixel grid with uniform bounding boxes and stroke weights."
                        />
                        <GridShowcase />
                    </BentoCard>
                </motion.div>

                {/* Card 4: Zero-Bloat Performance (md:col-span-4) */}
                <motion.div variants={itemVariants} className="md:col-span-4 flex">
                    <BentoCard>
                        <BentoHeader 
                            title="Zero-Bloat Performance" 
                            description="Only package what you use. optimized sub-packages (-perf) and direct imports strip bundle footprint."
                        />
                        <PerformanceShowcase />
                    </BentoCard>
                </motion.div>

                {/* Card 5: Type-Safe DX (md:col-span-4) */}
                <motion.div variants={itemVariants} className="md:col-span-4 flex">
                    <BentoCard>
                        <BentoHeader 
                            title="Type-Safe IDE Autocomplete" 
                            description="Developer-first ergonomics. Full TypeScript support, type safety, and JSDoc hints directly inside your editor."
                        />
                        <DxShowcase />
                    </BentoCard>
                </motion.div>
            </div>
        </SectionMotion>
    )
}

/* Base Bento Card Wrapper */
const BentoCard = ({ children, className }: { children: React.ReactNode; className?: string }) => (
    <div className={cn(
        `
          relative w-full flex flex-col justify-between overflow-hidden rounded-3xl border border-neutral-200/50 
          bg-neutral-50/50 p-6 shadow-xs transition-all duration-300 hover:shadow-md dark:border-neutral-800/40 
          dark:bg-neutral-900/10 dark:hover:bg-neutral-900/20 backdrop-blur-2xs
        `,
        className
    )}>
        {children}
    </div>
)

/* Consistent Card Header Component */
const BentoHeader = ({ title, description }: { title: string; description: string }) => (
    <div className="flex flex-col gap-1.5 text-left mb-6 select-none">
        <h3 className="text-base font-bold text-foreground tracking-tight">{title}</h3>
        <p className="text-xs text-muted-foreground leading-relaxed">{description}</p>
    </div>
)

/* Visual 1: Styles Showcase (PaletteRound in 6 weights) */
const StylesShowcase = () => {
    const styles = [
        { id: 'Linear', name: 'Linear', icon: PaletteRound },
        { id: 'Bold', name: 'Bold', icon: PaletteRound },
        { id: 'Outline', name: 'Outline', icon: PaletteRound },
        { id: 'BoldDuotone', name: 'Duotone', icon: PaletteRound },
        { id: 'LineDuotone', name: 'LineDuo', icon: PaletteRound },
        { id: 'Broken', name: 'Broken', icon: PaletteRound },
    ] as const

    return (
        <div className="w-full grid grid-cols-3 sm:grid-cols-6 gap-3 mt-auto pt-4 border-t border-neutral-150 dark:border-neutral-850/60">
            {styles.map(style => {
                const IconComponent = style.icon
                return (
                    <div key={style.id} className="flex flex-col items-center gap-2 p-2 rounded-xl bg-neutral-100/40 dark:bg-neutral-950/20 border border-neutral-200/5 select-none">
                        <div className="text-primary dark:text-primary-foreground p-1 flex items-center justify-center">
                            <IconComponent size={24} weight={style.id} />
                        </div>
                        <span className="text-[10px] font-bold text-neutral-500">{style.name}</span>
                    </div>
                )
            })}
        </div>
    )
}

/* Visual 2: Frameworks Showcase (Coloured tech badges) */
const FrameworksShowcase = () => {
    const frameworks = [
        { name: 'React', icon: 'logos:react' },
        { name: 'Vue', icon: 'logos:vue' },
        { name: 'Svelte', icon: 'logos:svelte-icon' },
        { name: 'Solid', icon: 'logos:solidjs-icon' },
        { name: 'Angular', icon: 'logos:angular-icon' },
        { name: 'Nuxt', icon: 'logos:nuxt-icon' },
    ]

    return (
        <div className="w-full grid grid-cols-3 gap-3 mt-auto pt-4 border-t border-neutral-150 dark:border-neutral-850/60">
            {frameworks.map(fw => (
                <div key={fw.name} className="flex flex-col items-center gap-1.5 p-2 rounded-xl bg-neutral-100/40 dark:bg-neutral-950/20 border border-neutral-200/5 hover:scale-[1.03] transition-transform duration-250 cursor-pointer">
                    <Icon icon={fw.icon} className="size-6" />
                    <span className="text-[10px] font-bold text-neutral-500 select-none">{fw.name}</span>
                </div>
            ))}
        </div>
    )
}

/* Visual 3: Grid Showcase (SVG Technical Blueprint) */
const GridShowcase = () => {
    return (
        <div className="w-full flex items-center justify-center py-4 mt-auto">
            <svg viewBox="0 0 100 100" className="size-24 text-neutral-300 dark:text-neutral-800">
                <defs>
                    <pattern id="bento-grid-pat" width="10" height="10" patternUnits="userSpaceOnUse">
                        <path d="M 10 0 L 0 0 0 10" fill="none" stroke="currentColor" strokeWidth="0.5" opacity="0.3" />
                    </pattern>
                </defs>
                {/* Main grid boundary */}
                <rect width="80" height="80" x="10" y="5" fill="url(#bento-grid-pat)" stroke="currentColor" strokeWidth="1" opacity="0.6" rx="4" />
                
                {/* Vector Icon inside grid */}
                <path 
                    d="M30 40 L50 60 L70 40 M50 20 L50 60" 
                    stroke="var(--color-primary)" 
                    strokeWidth="3.5" 
                    strokeLinecap="round" 
                    strokeLinejoin="round" 
                    fill="none" 
                />
                
                {/* Dimension line */}
                <line x1="10" y1="92" x2="90" y2="92" stroke="currentColor" strokeWidth="1" opacity="0.8" />
                <path d="M10 89 L10 95 M90 89 L90 95" stroke="currentColor" strokeWidth="1" opacity="0.8" />
                <text x="50" y="100" textAnchor="middle" fontSize="7" fontWeight="bold" className="fill-neutral-500 font-sans tracking-wide">24px Grid</text>
            </svg>
        </div>
    )
}

/* Visual 4: Performance Showcase */
const PerformanceShowcase = () => {
    return (
        <div className="w-full flex flex-col gap-2.5 mt-auto pt-4 border-t border-neutral-150 dark:border-neutral-850/60 font-mono text-[10px] text-left">
            <div className="rounded-xl border border-neutral-200/50 bg-white/40 dark:border-neutral-800/40 dark:bg-neutral-950/20 p-3 flex flex-col gap-1.5">
                <div className="flex justify-between items-center text-neutral-500 select-none">
                    <span>Direct SSR Import</span>
                    <span className="text-primary font-bold">0.4 KB</span>
                </div>
                <div className="p-1.5 rounded-md bg-neutral-100 dark:bg-neutral-900 text-neutral-800 dark:text-neutral-300 overflow-x-auto text-[9px] select-none">
                    <span className="text-purple-500">import</span> {`{ Star }`} <span className="text-purple-500">from</span> <span className="text-green-600">"@solar-icons/react/ssr"</span>
                </div>
                
                <div className="h-px bg-neutral-200/50 dark:bg-neutral-800/50 my-1" />

                <div className="flex justify-between items-center text-neutral-500 select-none">
                    <span>Performance Package</span>
                    <span className="text-primary font-bold">0.3 KB</span>
                </div>
                <div className="p-1.5 rounded-md bg-neutral-100 dark:bg-neutral-900 text-neutral-800 dark:text-neutral-300 overflow-x-auto text-[9px] select-none">
                    <span className="text-purple-500">import</span> {`{ Star }`} <span className="text-purple-500">from</span> <span className="text-green-600">"@solar-icons/react-perf"</span>
                </div>
            </div>
        </div>
    )
}

/* Visual 5: DX Showcase (Code snippets) */
const DxShowcase = () => {
    return (
        <div className="w-full flex flex-col mt-auto pt-4 border-t border-neutral-150 dark:border-neutral-850/60 font-mono text-[10px] text-left">
            <div className="rounded-xl border border-neutral-200/50 bg-white/40 dark:border-neutral-800/40 dark:bg-neutral-950/20 p-3 flex flex-col gap-1 select-none">
                <div>
                    &lt;<span className="text-red-500">Star</span>
                </div>
                <div>
                    &nbsp;&nbsp;size={`{`}<span className="text-orange-500">24</span>{`}`}
                </div>
                {/* Autocomplete highlight */}
                <div className="bg-primary/10 dark:bg-primary/20 rounded-xs px-1 text-primary font-bold border-l-2 border-primary">
                    &nbsp;&nbsp;weight="BoldDuotone"
                </div>
                <div>
                    &nbsp;&nbsp;className="text-warning"
                </div>
                <div>
                    /&gt;
                </div>
            </div>
        </div>
    )
}
