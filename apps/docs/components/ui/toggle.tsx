'use client'

import * as TogglePrimitive from '@radix-ui/react-toggle'
import { cva, type VariantProps } from 'class-variance-authority'
import * as React from 'react'

import { cn } from '@/lib/utils'

const toggleVariants = cva(
    `
      focus-visible:ring-ring focus-visible:ring-1 focus-visible:outline-hidden
      data-[state=on]:bg-primary data-[state=on]:text-primary-foreground
      inline-flex items-center justify-center gap-2 rounded-md border-2 text-sm
      font-medium whitespace-nowrap shadow-2xs transition-all duration-200
      ease-in
      active:scale-95
      disabled:pointer-events-none disabled:opacity-50
      [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0
    `,
    {
        variants: {
            variant: {
                default: '',
                outline: 'border-input border bg-transparent',
                ghost: 'border-transparent bg-transparent',
                link: `
                  border-transparent bg-transparent
                  hover:border-transparent hover:bg-transparent
                `,
            },
            colors: {
                default: `
                  border-primary bg-primary text-primary-foreground/80
                  hover:bg-primary/80 hover:text-primary-foreground
                `,
                secondary: `
                  border-border bg-secondary text-secondary-foreground/80
                  hover:border-secondary/80 hover:bg-secondary/80
                  hover:text-secondary-foreground
                `,
                destructive: `
                  border-destructive bg-destructive text-destructive-foreground
                  hover:border-destructive/80 hover:bg-destructive/80
                `,
                warning: `
                  border-warning bg-warning text-warning-foreground
                  hover:border-warning/80 hover:bg-warning/80
                `,
                muted: `
                  border-muted bg-muted text-muted-foreground
                  hover:border-muted/80 hover:bg-muted/80
                `,
                accent: `
                  border-accent bg-accent text-accent-foreground
                  hover:border-accent/80 hover:bg-accent/80
                `,
            },
            size: {
                default: 'h-9 min-w-9 px-2',
                sm: 'h-8 min-w-8 px-1.5',
                lg: 'h-10 min-w-10 px-2.5',
            },
        },
        defaultVariants: {
            variant: 'default',
            colors: 'default',
            size: 'default',
        },
    }
)

const Toggle = React.forwardRef<
    React.ComponentRef<typeof TogglePrimitive.Root>,
    React.ComponentPropsWithoutRef<typeof TogglePrimitive.Root> &
        VariantProps<typeof toggleVariants>
>(({ className, variant, size, colors, ...props }, ref) => (
    <TogglePrimitive.Root
        ref={ref}
        className={cn(toggleVariants({ variant, colors, size, className }))}
        {...props}
    />
))

Toggle.displayName = TogglePrimitive.Root.displayName

export { Toggle, toggleVariants }
