'use client'
import { SectionMotion } from '@/components/ui-blocks/animations/SectionMotion'
import { Heading } from '@/components/ui/heading'
import { GitHubStarButton } from '@/components/ui/GitHubStarButton'
import NumberFlow from '@number-flow/react'
import React, { useEffect, useState, useRef } from 'react'
import { motion, useInView } from 'framer-motion'
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
    CheckCircle,
    Copy,
    AltArrowDown,
    AltArrowUp,
    CloseCircle,
    Unread,
    ArrowRightUp,
    Restart,
    LinkBroken,
    Dialog,
    MinimalisticMagnifier,
    Widget,
    Lock,
    Key,
    Heart,
    Buildings,
} from '@solar-icons/react/ssr'

interface Stats {
    stars: number
    downloads: number
    timestamp: number
}

const CACHE_KEY = 'solar-icons-community-stats-v1'
const CACHE_TTL = 60 * 60 * 1000 // 1 hour cache TTL

const DEFAULT_STARS = 96
const DEFAULT_DOWNLOADS = 15200

const NPM_PACKAGES = [
    '@solar-icons/react',
    '@solar-icons/react-perf',
    '@solar-icons/react-native',
    '@solar-icons/vue',
    '@solar-icons/nuxt',
    '@solar-icons/svelte',
    '@solar-icons/solid',
    '@solar-icons/angular',
]

export const CommunitySection = () => {
    const [stats, setStats] = useState({
        stars: DEFAULT_STARS,
        downloads: DEFAULT_DOWNLOADS,
    })
    const [isLoading, setIsLoading] = useState(true)

    useEffect(() => {
        const fetchStats = async () => {
            try {
                // 1. Check local cache
                const cachedStr = localStorage.getItem(CACHE_KEY)
                if (cachedStr) {
                    try {
                        const cachedData = JSON.parse(cachedStr) as Stats
                        if (Date.now() - cachedData.timestamp < CACHE_TTL) {
                            setStats({
                                stars: cachedData.stars,
                                downloads: cachedData.downloads,
                            })
                            setIsLoading(false)
                            return
                        }
                    } catch (e) {
                        // Ignore parse error and refetch
                    }
                }

                // 2. Cache is stale or missing, fetch live data
                setIsLoading(true)

                // Fetch GitHub Stargazers
                const githubPromise = fetch('https://api.github.com/repos/saoudi-h/solar-icons')
                    .then(res => {
                        if (!res.ok) throw new Error('GitHub API error')
                        return res.json()
                    })
                    .then(data => data.stargazers_count as number)
                    .catch(() => DEFAULT_STARS)

                // Fetch NPM downloads for all variants
                const npmPromises = NPM_PACKAGES.map(pkg =>
                    fetch(`https://api.npmjs.org/downloads/point/last-week/${pkg}`)
                        .then(res => {
                            if (!res.ok) throw new Error(`NPM API error for ${pkg}`)
                            return res.json()
                        })
                        .then(data => (data.downloads as number) || 0)
                        .catch(() => 0)
                )

                const [starsResult, npmDownloadsResults] = await Promise.all([
                    githubPromise,
                    Promise.all(npmPromises),
                ])

                const totalDownloads = npmDownloadsResults.reduce((acc, curr) => acc + curr, 0)
                const finalDownloads = totalDownloads > 0 ? totalDownloads : DEFAULT_DOWNLOADS

                // Update state and cache
                const newStats = {
                    stars: starsResult,
                    downloads: finalDownloads,
                }
                
                setStats(newStats)
                localStorage.setItem(
                    CACHE_KEY,
                    JSON.stringify({
                        ...newStats,
                        timestamp: Date.now(),
                    })
                )
            } catch (err) {
                // Keep default state on complete failure
            } finally {
                setIsLoading(false)
            }
        }

        fetchStats()
    }, [])

    // Stagger animation variants
    const containerVariants = {
        hidden: { opacity: 0 },
        visible: {
            opacity: 1,
            transition: {
                staggerChildren: 0.08,
                delayChildren: 0.15,
            },
        },
    }

    const itemVariants = {
        hidden: { opacity: 0, y: 25 },
        visible: {
            opacity: 1,
            y: 0,
            transition: {
                type: 'spring' as const,
                stiffness: 90,
                damping: 15,
            },
        },
    }

    return (
        <SectionMotion 
            variants={containerVariants}
            className="
              container self-center px-3 pb-16
              md:px-0
            "
        >
            <div
                className={`
                  relative w-full overflow-hidden p-8 text-left
                  md:rounded-4xl md:p-14
                `}>

                {/* Content Grid */}
                <div
                    className={`
                      relative z-10 grid grid-cols-1 items-center gap-8
                      md:grid-cols-12 md:gap-12
                    `}>
                    {/* Left: Text and dynamic metric widgets */}
                    <div className="
                      flex flex-col gap-6
                      md:col-span-7
                    ">

                        {/* Title & Copy */}
                        <motion.div variants={itemVariants} className="
                          flex flex-col gap-4
                        ">
                            <Heading
                                size="h1"
                                className="
                                  text-3xl font-extrabold tracking-tight
                                  md:text-4xl
                                ">
                                Built for developers.{' '}
                                <br className="
                                  hidden
                                  md:inline
                                " />
                                Maintained with care.
                            </Heading>
                            <p
                                className={`
                                  max-w-[540px] text-sm/relaxed
                                  text-muted-foreground
                                  md:text-base
                                `}>
                                Clean packages, improved search, and developer-friendly tools to make Solar Icons easier to use in your projects.
                                If you find it useful, a GitHub star helps the project grow.
                            </p>
                        </motion.div>

                        {/* Stats Dashboard Grid */}
                        <div className="mt-2 flex max-w-2xl gap-4">
                            {/* Stat Card 1: Downloads */}
                            <motion.div variants={itemVariants} className="
                              flex-1
                            ">
                                <StatCard
                                    title="Weekly Downloads"
                                    value={stats.downloads}
                                />
                            </motion.div>
                            {/* Stat Card 2: Total Icons */}
                            <motion.div variants={itemVariants} className="
                              flex-1
                            ">
                                <StatCard
                                    title="Total Icons"
                                    value={7476}
                                />
                            </motion.div>
                            {/* Stat Card 3: Total Icons */}
                            <motion.div variants={itemVariants} className="
                              flex-1
                            ">
                                <StatCard
                                    title="Total Packages"
                                    value={8}
                                />
                            </motion.div>
                        </div>
                    </div>

                    {/* Right: Custom GitHub Star Button CTA with geometric icon grid */}
                    <motion.div
                        variants={itemVariants}
                        className="
                          relative flex w-full items-center justify-center
                          md:col-span-5
                        "
                    >
                        <CommunityIconGrid 
                            stars={stats.stars} 
                            isLoading={isLoading} 
                        />
                    </motion.div>
                </div>
            </div>
        </SectionMotion>
    )
}

interface StatCardProps {
    title: string
    value: number
}

const StatCard: React.FC<StatCardProps> = ({ title, value }) => {
    const ref = useRef<HTMLDivElement>(null)
    const isInView = useInView(ref, { once: true, amount: 0.3 })
    const [displayValue, setDisplayValue] = useState(0)

    useEffect(() => {
        if (isInView) {
            setDisplayValue(value)
        }
    }, [isInView, value])

    return (
        <div
            ref={ref}
            className={`flex flex-col gap-1 p-4`}>
            <span
                className={`
                  text-[10px] font-bold tracking-widest text-muted-foreground
                  uppercase
                `}>
                {title}
            </span>
            <span
                className={`
                  text-3xl font-extrabold tracking-tight text-foreground
                `}>
                <NumberFlow
                    value={displayValue}
                    format={{ minimumIntegerDigits: 1 }}
                    trend={1}
                />
            </span>
        </div>
    )
}

// Geometric Icon Grid layout (5x5, middle column 2 row 2 is empty for the button)
const gridIcons = [
    [Heart, Like, ShieldCheck, Globus, LinkIcon, MinimalisticMagnifier],
    [PaletteRound, PlugCircle, SettingsMinimalistic, CodeScan, CheckCircle, Widget],
    [Copy, AltArrowDown, Buildings, AltArrowUp, CloseCircle, Star],
    [Unread, ArrowRightUp, Restart, LinkBroken, Dialog, Lock, Key],
]

interface CommunityIconGridProps {
    stars: number | null
    isLoading: boolean
}

const CommunityIconGrid: React.FC<CommunityIconGridProps> = ({ stars, isLoading }) => {
    return (
        <div className="relative flex h-85 w-full items-center justify-center">
            {/* The 3D Tilted Icon Grid */}
            <div 
                className="
                  pointer-events-none absolute flex h-72 w-96 items-center
                  justify-center select-none
                  sm:w-md
                "
                style={{
                    perspective: 300,
                    transformStyle: 'preserve-3d',
                }}
            >
                <div 
                    className="grid size-full grid-cols-5 grid-rows-5 gap-3"
                    style={{
                        transform: 'rotateX(20deg) rotateY(-20deg) rotateZ(6deg) translateZ(-10px)',
                        transformStyle: 'preserve-3d',
                        maskImage: 'radial-gradient(circle, black 45%, transparent 90%)',
                        WebkitMaskImage: 'radial-gradient(circle, black 45%, transparent 90%)'
                    }}
                >
                    {gridIcons.map((row, rowIndex) => 
                        row.map((IconComponent, colIndex) => {
                            if (IconComponent === null) {
                                return <div key="center-placeholder" className="
                                  size-full
                                " />
                            }

                            return (
                                <div key={`${rowIndex}-${colIndex}`} className="
                                  flex size-full items-center justify-center
                                ">
                                    <div 
                                        className="
                                          text-foreground/40 transition-colors
                                          duration-300
                                          dark:text-foreground/25
                                        "
                                    >
                                        <IconComponent size={24} weight="BoldDuotone" />
                                    </div>
                                </div>
                            )
                        })
                    )}
                </div>
            </div>

            {/* Elevated premium button container */}
            <div className="relative z-10">
                <GitHubStarButton 
                    starCount={stars} 
                    isLoading={isLoading} 
                />
            </div>
        </div>
    )
}

