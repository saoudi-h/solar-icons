import { cva, type VariantProps } from 'class-variance-authority'
import * as React from 'react'

import { cn } from '@/lib/utils'

const badgeVariants = cva(
    `
      inline-flex items-center rounded-full border px-2.5 py-1 text-sm
      font-semibold text-nowrap transition-colors
      focus:ring-2 focus:ring-ring focus:ring-offset-2 focus:outline-hidden
    `,
    {
        variants: {
            variant: {
                default: 'border-transparent text-background',
                outline: 'bg-transparent',
                ghost: 'border-transparent bg-transparent',
            },
            colors: {
                default: `
                  border-primary bg-primary text-primary-foreground
                  hover:bg-primary/80
                `,
                secondary: `
                  border-secondary bg-secondary text-secondary-foreground
                  hover:bg-secondary/80
                `,
                destructive: `
                  border-destructive bg-destructive text-destructive-foreground
                  hover:bg-destructive/80
                `,
                warning: `
                  border-warning bg-warning text-warning-foreground
                  hover:bg-warning/80
                `,
                muted: `
                  border-muted bg-muted text-muted-foreground
                  hover:bg-muted/80
                `,
                accent: `
                  border-accent bg-accent text-accent-foreground
                  hover:bg-accent/80
                `,
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
