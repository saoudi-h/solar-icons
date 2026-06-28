'use client'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { cn } from '@/lib/utils'
import { useAtom } from 'jotai'
import { viewModeAtom } from './context'

export const ViewModeToggle: React.FC<{ className?: string }> = ({ className }) => {
    const [viewMode, setViewMode] = useAtom(viewModeAtom)

    return (
        <div
            role="radiogroup"
            aria-label="View mode"
            className={cn(
                'flex h-10 items-center gap-0.5 rounded-lg bg-default-200 p-1',
                className
            )}>
            {(
                [
                    { value: 'grouped', label: 'Grouped', tip: 'Group icons by category' },
                    { value: 'flat', label: 'Flat', tip: 'Single uniform grid' },
                ] as const
            ).map(opt => {
                const isActive = viewMode === opt.value
                return (
                    <Tooltip key={opt.value}>
                        <TooltipTrigger asChild>
                            <button
                                type="button"
                                role="radio"
                                aria-checked={isActive}
                                data-vaul-no-drag
                                onClick={() => setViewMode(opt.value)}
                                className={cn(
                                    `
                                      h-8 rounded-md px-3 text-xs font-medium
                                      transition-colors
                                    `,
                                    `
                                      hover:bg-default-300
                                      focus-visible:ring-1
                                      focus-visible:ring-ring
                                      focus-visible:outline-hidden
                                    `,
                                    isActive && 'bg-default-300 text-foreground',
                                    !isActive && 'text-muted-foreground'
                                )}>
                                {opt.label}
                            </button>
                        </TooltipTrigger>
                        <TooltipContent>
                            <p>{opt.tip}</p>
                        </TooltipContent>
                    </Tooltip>
                )
            })}
        </div>
    )
}
