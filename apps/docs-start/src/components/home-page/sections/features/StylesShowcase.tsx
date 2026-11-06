'use client'
import { BoltIcon } from '@solar-icons/react/dynamic/bolt'
import { CameraIcon } from '@solar-icons/react/dynamic/camera'
import { HeartIcon } from '@solar-icons/react/dynamic/heart'
import { LeafIcon } from '@solar-icons/react/dynamic/leaf'
import { RocketIcon } from '@solar-icons/react/dynamic/rocket'
import {
    AnimatePresence,
    motion,
    useAnimationFrame,
    useInView,
    useMotionValue,
    useMotionValueEvent,
    useReducedMotion,
    useTransform,
} from 'motion/react'
import type { MotionValue } from 'motion/react'
import { useRef, useState } from 'react'
import type { KeyboardEvent } from 'react'

import { cn } from '~/lib/utils'

/*
 * A cover-flow of colourful tiles. Each tile is one icon in one style; the six styles come one
 * after the other, each with its own colour, then the next icon. The wheel never stops by itself:
 * one position advances smoothly every frame. The tile in the middle is the selected one: it grows
 * and turns to face you while its neighbours step back and tilt away.
 */

const styles = [
    { weight: 'Linear', label: 'Linear', from: 258, to: 292 },
    { weight: 'Broken', label: 'Broken', from: 208, to: 238 },
    { weight: 'LineDuotone', label: 'Line Duotone', from: 168, to: 198 },
    { weight: 'Outline', label: 'Outline', from: 128, to: 162 },
    { weight: 'Bold', label: 'Bold', from: 42, to: 14 },
    { weight: 'BoldDuotone', label: 'Bold Duotone', from: 346, to: 318 },
] as const

const icons = [
    { name: 'Heart', Icon: HeartIcon },
    { name: 'Camera', Icon: CameraIcon },
    { name: 'Leaf', Icon: LeafIcon },
    { name: 'Bolt', Icon: BoltIcon },
    { name: 'Rocket', Icon: RocketIcon },
] as const

const belt = icons.flatMap(({ name, Icon }) =>
    styles.map((style, styleIndex) => ({ name, Icon, styleIndex, ...style }))
)
const COUNT = belt.length
/** Tiles per second while the wheel turns by itself. */
const SPEED = 0.6
const TILE = 96
/** Distance between tiles, and the extra room the selected tile takes from its neighbours. */
const SPACING = 56
const PUSH = 52

/** Signed distance on the circular belt, in tiles. */
const wrap = (value: number) => ((((value + COUNT / 2) % COUNT) + COUNT) % COUNT) - COUNT / 2
const clamp = (value: number, min: number, max: number) => Math.min(max, Math.max(min, value))
const smooth = (t: number) => t * t * (3 - 2 * t)

function Tile({
    item,
    index,
    position,
    onPick,
}: {
    item: (typeof belt)[number]
    index: number
    position: MotionValue<number>
    onPick: (index: number) => void
}) {
    const distance = useTransform(position, value => wrap(index - value))
    const x = useTransform(distance, d => SPACING * d + PUSH * clamp(d, -1, 1))
    const scale = useTransform(distance, d => 0.78 + 0.5 * smooth(clamp(1 - Math.abs(d), 0, 1)))
    const rotateY = useTransform(distance, d => -clamp(d, -1, 1) * 38)
    const opacity = useTransform(distance, d => clamp((2.6 - Math.abs(d)) / 0.9, 0, 1))
    const zIndex = useTransform(distance, d => 100 - Math.round(Math.abs(d) * 10))
    const pointerEvents = useTransform(distance, d => (Math.abs(d) < 2.5 ? 'auto' : 'none'))
    const { Icon, from, to } = item

    return (
        <motion.button
            type="button"
            aria-hidden
            tabIndex={-1}
            onClick={() => onPick(index)}
            style={{
                x,
                scale,
                rotateY,
                opacity,
                zIndex,
                pointerEvents,
                width: TILE,
                height: TILE,
                background: `linear-gradient(150deg, hsl(${from} 92% 68%), hsl(${to} 88% 54%))`,
                boxShadow: `inset 0 1px 0 hsl(0 0% 100% / 0.45), inset 0 -10px 20px hsl(${to} 88% 40% / 0.25), 0 18px 28px -14px hsl(${to} 88% 45% / 0.75)`,
            }}
            className="absolute top-1/2 left-1/2 -mt-12 -ml-12 flex cursor-pointer items-center justify-center rounded-[28px] text-white outline-none">
            <Icon
                weight={item.weight}
                size={54}
                color="currentColor"
                className="drop-shadow-[0_2px_4px_hsl(0_0%_0%/0.18)]"
            />
        </motion.button>
    )
}

export const StylesShowcase = () => {
    const ref = useRef<HTMLDivElement>(null)
    const inView = useInView(ref, { margin: '-60px' })
    const reduceMotion = useReducedMotion()
    const position = useMotionValue(0)
    const [selected, setSelected] = useState(0)
    const velocity = useRef(0)
    const goal = useRef<number | null>(null)
    const paused = useRef(false)

    useAnimationFrame((_, delta) => {
        if (!inView) return
        const dt = Math.min(delta, 64) / 1000
        let value = position.get()
        if (goal.current !== null) {
            // Glide to the tile the visitor asked for.
            const gap = goal.current - value
            value += gap * (1 - Math.exp(-dt * 7))
            if (Math.abs(gap) < 0.004) {
                value = goal.current
                goal.current = null
            }
        } else if (!reduceMotion) {
            // Ease towards the cruising speed, or towards rest while the pointer is on the card.
            const wanted = paused.current ? 0 : SPEED
            velocity.current += (wanted - velocity.current) * (1 - Math.exp(-dt * 3.5))
            value += velocity.current * dt
        }
        position.set(value)
    })

    useMotionValueEvent(position, 'change', value => {
        setSelected(((Math.round(value) % COUNT) + COUNT) % COUNT)
    })

    const current = belt[selected] ?? { name: 'Heart', label: 'Linear', styleIndex: 0 }

    function moveTo(next: number) {
        if (reduceMotion) position.set(next)
        else goal.current = next
    }

    function pick(index: number) {
        const from = position.get()
        moveTo(from + wrap(index - from))
    }

    function onKeyDown(event: KeyboardEvent<HTMLDivElement>) {
        const from = Math.round(goal.current ?? position.get())
        if (event.key === 'ArrowRight') moveTo(from + 1)
        else if (event.key === 'ArrowLeft') moveTo(from - 1)
        else return
        event.preventDefault()
    }

    return (
        <div
            ref={ref}
            role="group"
            aria-roledescription="carousel"
            aria-label="Every icon in its six styles, one after the other. Use the arrow keys to move."
            tabIndex={0}
            onPointerEnter={() => (paused.current = true)}
            onPointerLeave={() => (paused.current = false)}
            onFocus={() => (paused.current = true)}
            onBlur={() => (paused.current = false)}
            onKeyDown={onKeyDown}
            className="
              mt-auto flex w-full flex-col items-center gap-4 rounded-2xl outline-none select-none
              focus-visible:ring-2 focus-visible:ring-ring
            ">
            <div
                className="
                  relative -my-8 h-68 w-full
                  [mask-image:linear-gradient(to_right,transparent,black_16%,black_84%,transparent)]
                "
                style={{ perspective: 800 }}>
                {belt.map((item, index) => (
                    <Tile
                        key={`${item.name}-${item.weight}`}
                        item={item}
                        index={index}
                        position={position}
                        onPick={pick}
                    />
                ))}
            </div>

            <div className="flex flex-col items-center gap-3">
                <div aria-live="off" className="flex h-10 flex-col items-center">
                    <AnimatePresence mode="wait" initial={false}>
                        <motion.p
                            key={`${current.name}-${current.label}`}
                            initial={{ opacity: 0, y: 5 }}
                            animate={{ opacity: 1, y: 0, transition: { duration: 0.25 } }}
                            exit={{ opacity: 0, y: -5, transition: { duration: 0.12 } }}
                            className="flex flex-col items-center gap-0.5 text-center">
                            <span className="text-sm font-medium text-foreground">
                                {current.label}
                            </span>
                            <span className="text-xs text-muted-foreground">{current.name}</span>
                        </motion.p>
                    </AnimatePresence>
                </div>
                <div aria-hidden className="flex gap-1.5">
                    {styles.map((style, index) => (
                        <span
                            key={style.weight}
                            className={cn(
                                'h-1 rounded-full transition-[width,background-color] duration-300',
                                index === current.styleIndex
                                    ? 'w-5 bg-foreground'
                                    : 'w-1.5 bg-foreground/20'
                            )}
                        />
                    ))}
                </div>
            </div>
        </div>
    )
}
