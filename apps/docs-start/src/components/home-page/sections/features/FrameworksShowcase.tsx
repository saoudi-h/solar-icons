'use client'
import type { CSSProperties } from 'react'

import { Link } from '~/components/ui/link'
import { Icon } from '~/lib/icons'
import { packages } from '~/lib/packages'
import { cn } from '~/lib/utils'

import styles from './FrameworksShowcase.module.css'

/*
 * A tilted wall of every released framework package, three rows sliding in opposite directions.
 * The pills come from the package catalogue so this card and the catalogue cannot drift.
 */

const frameworks = packages.filter(item => item.status === 'released').slice(0, 10)

/** Each row starts at a different pill so the same framework never lines up above another. */
const rows = [
    { offset: 0, duration: 46, reverse: false },
    { offset: 4, duration: 58, reverse: true },
    { offset: 7, duration: 52, reverse: false },
] as const

function rotated<T>(list: readonly T[], by: number): T[] {
    return [...list.slice(by), ...list.slice(0, by)]
}

export const FrameworksShowcase = () => {
    return (
        <div
            className={cn(
                `
                  relative -mx-6 -mb-6 mt-auto h-72 overflow-hidden select-none
                  [mask-image:linear-gradient(to_right,transparent,black_14%,black_86%,transparent)]
                `,
                styles.wall
            )}>
            <div
                className="
                  absolute -inset-x-24 inset-y-0 flex -rotate-6 flex-col justify-center gap-3
                ">
                {rows.map(row => (
                    <div key={row.offset} className="flex">
                        <div
                            className={cn('flex w-max shrink-0 gap-3 pr-3', styles.row)}
                            style={
                                {
                                    '--duration': `${row.duration}s`,
                                    '--direction': row.reverse ? 'reverse' : 'normal',
                                } as CSSProperties
                            }>
                            {[0, 1].map(copy =>
                                rotated(frameworks, row.offset).map(framework => (
                                    <Link
                                        key={`${copy}-${framework.title}`}
                                        href={framework.link}
                                        aria-hidden={copy === 1 || undefined}
                                        tabIndex={copy === 1 ? -1 : undefined}
                                        className="
                                          flex h-16 shrink-0 items-center gap-3 rounded-2xl border
                                          border-foreground/10 bg-background px-5 shadow-sm
                                          outline-none
                                          transition-[border-color,box-shadow] duration-300
                                          hover:border-primary/50 hover:shadow-lg
                                          focus-visible:ring-2 focus-visible:ring-ring
                                        ">
                                        <Icon
                                            aria-hidden
                                            icon={framework.iconify}
                                            className="size-8"
                                        />
                                        <span className="text-base font-medium text-foreground">
                                            {framework.title}
                                        </span>
                                    </Link>
                                ))
                            )}
                        </div>
                    </div>
                ))}
            </div>
        </div>
    )
}
