import { forwardRef, memo, type CSSProperties } from 'react'
import type { IconData } from '~generated/descriptions'

import { cn } from '~/lib/utils'

import { useSelectedIconName, useShowcaseReady, useStyleURL } from './context'
import { useIconPreview } from './icon-registry'
import { isRecentExtension, RecentIconDot } from './OriginControls'

type IconCardProps = Pick<IconData, 'name' | 'origin' | 'addedAt'> & {
    style?: CSSProperties
    /** Show the name under the icon instead of on hover and focus only. */
    showName?: boolean
}

export const IconCard = memo(
    forwardRef<HTMLButtonElement, IconCardProps>(
        ({ name, origin, addedAt, style, showName = false }, ref) => {
            const ready = useShowcaseReady()
            const [selectedName, setIconName] = useSelectedIconName()
            const [weight] = useStyleURL()
            const { Icon, loading, error, retry } = useIconPreview(name, weight)
            const isSelected = selectedName === name
            return (
                <button
                    ref={ref}
                    type="button"
                    style={style}
                    aria-label={name}
                    aria-pressed={isSelected}
                    aria-busy={loading}
                    disabled={!ready || (loading && !Icon)}
                    onClick={() => (error ? retry() : setIconName(isSelected ? null : name))}
                    className={cn(
                        `
                          group relative flex size-full cursor-pointer flex-col items-center
                          justify-center gap-1 rounded-xl transition-colors duration-150
                          hover:z-10
                          focus-visible:z-10 focus-visible:ring-2 focus-visible:ring-primary
                          focus-visible:outline-none focus-visible:ring-inset
                          motion-reduce:transition-none
                        `,
                        // The selection is carried by the cell, never by the
                        // drawing: the icon keeps the colours chosen in the bar.
                        isSelected
                            ? 'bg-primary/15 ring-1 ring-primary/70 ring-inset'
                            : 'hover:bg-foreground/[0.06]'
                    )}>
                    <span className="relative flex shrink-0">
                        {Icon ? (
                            <Icon
                                weight={weight}
                                className="
                                  shrink-0 transition-transform duration-150 ease-out
                                  group-hover:scale-110
                                  motion-reduce:transition-none
                                "
                            />
                        ) : (
                            <span
                                aria-hidden="true"
                                className="
                                  flex size-8 items-center justify-center text-[10px]
                                  text-muted-foreground
                                ">
                                {error ? 'Retry' : null}
                            </span>
                        )}
                        {origin === 'extended' && isRecentExtension(addedAt) && <RecentIconDot />}
                    </span>
                    {showName ? (
                        <span
                            className="
                              w-full truncate px-1.5 text-center text-[11px]/4 text-muted-foreground
                            ">
                            {name}
                        </span>
                    ) : (
                        <span
                            aria-hidden="true"
                            className="
                              pointer-events-none absolute top-full left-1/2 z-10 -mt-1.5
                              -translate-x-1/2 rounded-md bg-foreground px-1.5 py-0.5 text-[11px]/4
                              font-medium whitespace-nowrap text-background opacity-0 shadow-sm
                              transition-opacity duration-100
                              group-hover:opacity-100 group-hover:delay-150
                              group-focus-visible:opacity-100
                            ">
                            {name}
                        </span>
                    )}
                </button>
            )
        }
    )
)
IconCard.displayName = 'IconCard'
