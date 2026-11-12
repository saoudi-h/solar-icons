'use client'
import { ListIcon } from '@solar-icons/react/linear/list'
import { TagIcon } from '@solar-icons/react/linear/tag'
import { Widget4Icon } from '@solar-icons/react/linear/widget-4'

import { Tooltip, TooltipContent, TooltipTrigger } from '~/components/ui/tooltip'
import { cn } from '~/lib/utils'

import { useShowNamesURL, useViewModeURL } from './context'
import { CONTROL_FOCUS, CONTROL_SURFACE } from './surface'

const SEGMENT = 'flex size-8 items-center justify-center rounded-md transition-colors'
const SEGMENT_ON = 'bg-background text-foreground shadow-xs dark:bg-foreground/15'
const SEGMENT_OFF = 'text-muted-foreground hover:bg-foreground/[0.06] hover:text-foreground'

const VIEW_MODES = [
    { value: 'flat', label: 'Flat', tip: 'One continuous grid', Icon: Widget4Icon },
    { value: 'grouped', label: 'Grouped', tip: 'Grouped by category', Icon: ListIcon },
] as const

/** How the grid is laid out: flat or by category, with or without names. */
export const ViewModeToggle: React.FC<{ className?: string }> = ({ className }) => {
    const [viewMode, setViewMode] = useViewModeURL()
    const [showNames, setShowNames] = useShowNamesURL()

    return (
        <div
            className={cn(
                'flex h-10 shrink-0 items-center gap-0.5 rounded-lg p-1',
                CONTROL_SURFACE,
                className
            )}>
            <div role="radiogroup" aria-label="View mode" className="flex items-center gap-0.5">
                {VIEW_MODES.map(({ value, label, tip, Icon }) => {
                    const isActive = viewMode === value
                    return (
                        <Tooltip key={value}>
                            <TooltipTrigger asChild>
                                <button
                                    type="button"
                                    role="radio"
                                    aria-checked={isActive}
                                    aria-label={label}
                                    data-vaul-no-drag
                                    onClick={() => setViewMode(value)}
                                    className={cn(
                                        SEGMENT,
                                        CONTROL_FOCUS,
                                        isActive ? SEGMENT_ON : SEGMENT_OFF
                                    )}>
                                    <Icon className="size-4" isolated />
                                </button>
                            </TooltipTrigger>
                            <TooltipContent>
                                <p>{tip}</p>
                            </TooltipContent>
                        </Tooltip>
                    )
                })}
            </div>
            <span aria-hidden="true" className="mx-0.5 h-4 w-px bg-foreground/10" />
            <Tooltip>
                <TooltipTrigger asChild>
                    <button
                        type="button"
                        aria-pressed={showNames}
                        aria-label="Show icon names"
                        data-vaul-no-drag
                        onClick={() => setShowNames(!showNames)}
                        className={cn(
                            SEGMENT,
                            CONTROL_FOCUS,
                            showNames ? SEGMENT_ON : SEGMENT_OFF
                        )}>
                        <TagIcon className="size-4" isolated />
                    </button>
                </TooltipTrigger>
                <TooltipContent>
                    <p>{showNames ? 'Hide icon names' : 'Show icon names'}</p>
                </TooltipContent>
            </Tooltip>
        </div>
    )
}
