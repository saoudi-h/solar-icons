import * as React from 'react'
import { cva, type VariantProps } from 'class-variance-authority'

import { cn } from '@/lib/utils'

const badgeVariants = cva(
    'inline-flex items-center border px-2.5 py-1 text-sm font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 text-nowrap rounded-full',
    {
        variants: {
            variant: {
                default: '!border-transparent !text-background',
                outline: '!bg-transparent',
                ghost: '!bg-transparent !border-transparent',
            },
            colors: {
                default: 'bg-primary text-primary-foreground hover:bg-primary/80 border-primary',
                secondary:
                    'bg-secondary text-secondary-foreground hover:bg-secondary/80 border-secondary',
                destructive:
                    'bg-destructive text-destructive-foreground hover:bg-destructive/80 border-destructive',
                warning: 'bg-warning text-warning-foreground hover:bg-warning/80 border-warning',
                muted: 'bg-muted text-muted-foreground hover:bg-muted/80 border-muted',
                accent: 'bg-accent text-accent-foreground hover:bg-accent/80 border-accent',
            },
            size: {
                default: 'h-5 px-2.5',
                sm: 'h-4 rounded-md px-1.5 text-xs',
                lg: 'h-6 rounded-md px-3',
            },
        },
        defaultVariants: {
            variant: 'default',
            size: 'default',
            colors: 'default',
        },
    }
)

export interface BadgeProps
    extends React.HTMLAttributes<HTMLDivElement>,
        VariantProps<typeof badgeVariants> {}

function Badge({ className, variant, size, colors, ...props }: BadgeProps) {
    return <div className={cn(badgeVariants({ variant, size, colors }), className)} {...props} />
}

export { Badge, badgeVariants }
