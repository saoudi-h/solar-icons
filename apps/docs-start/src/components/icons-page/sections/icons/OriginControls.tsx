import { Tooltip, TooltipContent, TooltipTrigger } from '~/components/ui/tooltip'
import { cn } from '~/lib/utils'

import { useOriginFilter } from './context'

const RECENT_MONTHS = 3
const RECENT_DOT_CLASS = 'absolute -top-1 -right-1.5 size-1.5 rounded-full bg-primary'

/** Whether an extension was added within the current recent-icon window. */
export function isRecentExtension(addedAt?: string, now = new Date()): boolean {
    if (!addedAt) return false
    const added = new Date(`${addedAt}T00:00:00`)
    if (Number.isNaN(added.getTime())) return false

    const cutoff = new Date(now)
    cutoff.setMonth(cutoff.getMonth() - RECENT_MONTHS)
    return added >= cutoff && added <= now
}

/** Small semantic marker for an extension added within the recent window. */
export function RecentIconDot() {
    return (
        <Tooltip>
            <TooltipTrigger asChild>
                <span className={RECENT_DOT_CLASS} aria-label="Recently added icon">
                    <span className="sr-only">Recently added</span>
                </span>
            </TooltipTrigger>
            <TooltipContent>Recently added</TooltipContent>
        </Tooltip>
    )
}

/** Narrows the catalogue to the icons added by the project. */
export function ExtendedFilterToggle({ className }: { className?: string }) {
    const [origin, setOrigin] = useOriginFilter()
    const active = origin === 'extended'

    return (
        <Tooltip>
            <TooltipTrigger asChild>
                <button
                    type="button"
                    aria-pressed={active}
                    data-vaul-no-drag
                    onClick={() => setOrigin(active ? 'all' : 'extended')}
                    className={cn(
                        `
                          flex h-8 items-center gap-2 rounded-md px-2.5 text-left text-sm
                          transition-colors
                          focus-visible:ring-2 focus-visible:ring-primary/70
                          focus-visible:outline-hidden
                        `,
                        active
                            ? 'bg-primary/15 font-medium text-foreground'
                            : 'text-muted-foreground hover:bg-foreground/[0.06]',
                        className
                    )}>
                    <span
                        aria-hidden="true"
                        className={cn(
                            'size-1.5 rounded-full',
                            active ? 'bg-primary' : 'bg-muted-foreground/50'
                        )}
                    />
                    Extended
                </button>
            </TooltipTrigger>
            <TooltipContent side="right">
                <p>Only the icons added to the original set</p>
            </TooltipContent>
        </Tooltip>
    )
}
