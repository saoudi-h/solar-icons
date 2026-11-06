'use client'

import { AlbumIcon } from '@solar-icons/react/dynamic/album'
import { CloudIcon } from '@solar-icons/react/dynamic/cloud'
import { HeadphonesRoundIcon } from '@solar-icons/react/dynamic/headphones-round'
import { KeyIcon } from '@solar-icons/react/dynamic/key'
import { LockIcon } from '@solar-icons/react/dynamic/lock'
import { MoonIcon } from '@solar-icons/react/dynamic/moon'
import { MusicNoteIcon } from '@solar-icons/react/dynamic/music-note'
import { PaletteRoundIcon } from '@solar-icons/react/dynamic/palette-round'
import { PenIcon } from '@solar-icons/react/dynamic/pen'
import { RulerIcon } from '@solar-icons/react/dynamic/ruler'
import { ShieldCheckIcon } from '@solar-icons/react/dynamic/shield-check'
import { SunIcon } from '@solar-icons/react/dynamic/sun'
import { MagnifierIcon } from '@solar-icons/react/linear/magnifier'
import { AnimatePresence, motion, useInView, useReducedMotion } from 'motion/react'
import { useEffect, useRef, useState } from 'react'

const searches = [
    { query: 'security', icons: [ShieldCheckIcon, LockIcon, KeyIcon] },
    { query: 'weather', icons: [SunIcon, CloudIcon, MoonIcon] },
    { query: 'audio', icons: [HeadphonesRoundIcon, MusicNoteIcon, AlbumIcon] },
    { query: 'design', icons: [PaletteRoundIcon, PenIcon, RulerIcon] },
] as const

/** The plugin in one gesture: type a word, get the icons. Static when motion is reduced. */
export function FigmaPluginShowcase() {
    const ref = useRef<HTMLDivElement>(null)
    const inView = useInView(ref, { once: true, margin: '-80px' })
    const reduceMotion = useReducedMotion()
    const [index, setIndex] = useState(0)
    const [length, setLength] = useState<number>(searches[0].query.length)
    const animate = inView && !reduceMotion

    useEffect(() => {
        if (!animate) return
        let cancelled = false
        const timers: ReturnType<typeof setTimeout>[] = []
        const wait = (ms: number) =>
            new Promise<void>(resolve => timers.push(setTimeout(resolve, ms)))

        void (async () => {
            let current = 0
            while (!cancelled) {
                const word = searches[current]?.query ?? ''
                setIndex(current)
                for (let n = 1; n <= word.length && !cancelled; n++) {
                    setLength(n)
                    await wait(110)
                }
                await wait(2400)
                for (let n = word.length - 1; n >= 0 && !cancelled; n--) {
                    setLength(n)
                    await wait(45)
                }
                await wait(300)
                current = (current + 1) % searches.length
            }
        })()

        return () => {
            cancelled = true
            timers.forEach(clearTimeout)
        }
    }, [animate])

    const { query, icons } = searches[index] ?? searches[0]
    const typed = query.slice(0, length)

    return (
        <div
            ref={ref}
            role="img"
            aria-label="The Solar Icons plugin: typing a word shows the matching icons"
            className="mt-auto flex h-60 w-full flex-col items-center justify-center gap-5">
            <div className="flex h-12 w-full max-w-sm items-center gap-3 rounded-xl border border-foreground/10 bg-background px-4 shadow-sm">
                <MagnifierIcon aria-hidden size={18} className="text-muted-foreground" />
                <span aria-hidden className="text-base text-foreground">
                    {typed || <span className="text-muted-foreground">Search icons</span>}
                    {typed && (
                        <span className="ml-px inline-block h-4 w-px translate-y-0.5 bg-primary motion-safe:animate-pulse" />
                    )}
                </span>
            </div>
            <div aria-hidden className="flex h-16 items-center gap-3">
                <AnimatePresence mode="popLayout">
                    {length >= 3 &&
                        icons.map((Icon, position) => (
                            <motion.span
                                key={`${index}-${position}`}
                                initial={{ opacity: 0, y: 8, scale: 0.92 }}
                                animate={{ opacity: 1, y: 0, scale: 1 }}
                                exit={{ opacity: 0, scale: 0.92 }}
                                transition={{
                                    duration: 0.25,
                                    delay: position * 0.06,
                                    ease: [0.23, 1, 0.32, 1],
                                }}
                                className="flex size-16 items-center justify-center rounded-2xl border border-foreground/10 bg-background text-foreground shadow-sm">
                                <Icon weight="LineDuotone" size={32} color="currentColor" />
                            </motion.span>
                        ))}
                </AnimatePresence>
            </div>
        </div>
    )
}
