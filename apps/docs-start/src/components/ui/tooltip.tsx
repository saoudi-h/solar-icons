'use client'

import * as TooltipPrimitive from '@radix-ui/react-tooltip'
import * as React from 'react'

import { cn } from '~/lib/utils'

/** Wait before the first tooltip opens, and the window in which the next opens at once. */
const TOOLTIP_DELAY_MS = 700
const TOOLTIP_SKIP_DELAY_MS = 300

function TooltipProvider({
    delayDuration = TOOLTIP_DELAY_MS,
    skipDelayDuration = TOOLTIP_SKIP_DELAY_MS,
    ...props
}: React.ComponentProps<typeof TooltipPrimitive.Provider>) {
    return (
        <TooltipPrimitive.Provider
            data-slot="tooltip-provider"
            delayDuration={delayDuration}
            skipDelayDuration={skipDelayDuration}
            {...props}
        />
    )
}

function Tooltip({ ...props }: React.ComponentProps<typeof TooltipPrimitive.Root>) {
    return <TooltipPrimitive.Root data-slot="tooltip" {...props} />
}

function TooltipTrigger({ ...props }: React.ComponentProps<typeof TooltipPrimitive.Trigger>) {
    return <TooltipPrimitive.Trigger data-slot="tooltip-trigger" {...props} />
}

const TooltipContent = React.forwardRef<
    React.ElementRef<typeof TooltipPrimitive.Content>,
    React.ComponentPropsWithoutRef<typeof TooltipPrimitive.Content>
>(({ className, sideOffset = 4, ...props }, ref) => (
    <TooltipPrimitive.Portal>
        <TooltipPrimitive.Content
            ref={ref}
            data-slot="tooltip-content"
            sideOffset={sideOffset}
            className={cn(
                `
                  z-50 overflow-hidden rounded-full bg-secondary px-3 py-1.5 text-xs
                  text-secondary-foreground shadow-xs animate-in fade-in-0 zoom-in-95
                  data-[side=bottom]:slide-in-from-top-2
                  data-[side=left]:slide-in-from-right-2
                  data-[side=right]:slide-in-from-left-2
                  data-[side=top]:slide-in-from-bottom-2
                  data-[state=closed]:animate-out data-[state=closed]:fade-out-0
                  data-[state=closed]:zoom-out-95
                `,
                className
            )}
            {...props}
        />
    </TooltipPrimitive.Portal>
))
TooltipContent.displayName = TooltipPrimitive.Content.displayName

export {
    Tooltip,
    TOOLTIP_DELAY_MS,
    TOOLTIP_SKIP_DELAY_MS,
    TooltipContent,
    TooltipProvider,
    TooltipTrigger,
}
