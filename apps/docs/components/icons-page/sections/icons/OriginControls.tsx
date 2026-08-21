import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { cn } from '@/lib/utils'
import { useOriginFilter } from './context'

const RECENT_MONTHS = 3
const RECENT_DOT_CLASS = 'absolute top-2 right-2 size-1.5 rounded-full bg-primary'

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

/** Filter control styled like the existing view-mode segmented control. */
export function ExtendedFilterToggle() {
    const [origin, setOrigin] = useOriginFilter()
    const active = origin === 'extended'
    const stateClass = active ? 'bg-default-300 text-foreground' : 'text-muted-foreground'

    return (
        <div
            role="group"
            aria-label="Icon origin"
            className="
              flex h-10 items-center gap-0.5 rounded-lg bg-default-200 p-1
            ">
            <Tooltip>
                <TooltipTrigger asChild>
                    <button
                        type="button"
                        aria-pressed={active}
                        data-vaul-no-drag
                        onClick={() => setOrigin(active ? 'all' : 'extended')}
                        className={cn(
                            `
                              h-8 rounded-md px-3 text-xs font-medium
                              transition-colors
                            `,
                            `
                              hover:bg-default-300
                              focus-visible:ring-1 focus-visible:ring-ring
                              focus-visible:outline-hidden
                            `,
                            stateClass
                        )}>
                        Extended
                    </button>
                </TooltipTrigger>
                <TooltipContent>
                    <p>Show only extended icons</p>
                </TooltipContent>
            </Tooltip>
        </div>
    )
}
