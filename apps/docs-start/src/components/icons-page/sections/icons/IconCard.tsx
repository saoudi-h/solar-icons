import {
    forwardRef,
    memo,
    useEffect,
    useRef,
    type CSSProperties,
    type FocusEvent,
    type PointerEvent,
} from 'react'
import type { IconData } from '~generated/descriptions'

import { cn } from '~/lib/utils'

import { useSelectedIconName, useShowcaseReady, useStyleURL } from './context'
import { useIconPreview } from './icon-registry'
import { useIconNameTooltip } from './IconNameTooltip'
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
            const tooltip = useIconNameTooltip()
            const isSelected = selectedName === name
            // Hover waits a beat so sweeping across the grid does not flash a
            // tooltip on every cell; keyboard focus shows it at once.
            const hoverTimer = useRef<number | null>(null)
            const cancelHover = () => {
                if (hoverTimer.current === null) return
                clearTimeout(hoverTimer.current)
                hoverTimer.current = null
            }
            useEffect(
                () => () => {
                    if (hoverTimer.current !== null) clearTimeout(hoverTimer.current)
                },
                []
            )
            const showTooltip = (
                event: PointerEvent<HTMLButtonElement> | FocusEvent<HTMLButtonElement>,
                delay = 0
            ) => {
                if (showName) return
                cancelHover()
                const anchor = event.currentTarget
                if (delay === 0) {
                    tooltip.show(name, anchor)
                    return
                }
                hoverTimer.current = window.setTimeout(() => {
                    hoverTimer.current = null
                    if (anchor.isConnected) tooltip.show(name, anchor)
                }, delay)
            }
            const hideTooltip = () => {
                cancelHover()
                tooltip.hide()
            }
            return (
                <button
                    ref={ref}
                    type="button"
                    style={style}
                    aria-label={name}
                    aria-pressed={isSelected}
                    aria-busy={loading}
                    disabled={!ready || (loading && !Icon)}
                    onClick={() => {
                        hideTooltip()
                        if (error) retry()
                        else setIconName(isSelected ? null : name)
                    }}
                    onPointerEnter={event => showTooltip(event, 150)}
                    onPointerLeave={hideTooltip}
                    onFocus={event => showTooltip(event)}
                    onBlur={hideTooltip}
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
                    ) : null}
                </button>
            )
        }
    )
)
IconCard.displayName = 'IconCard'
