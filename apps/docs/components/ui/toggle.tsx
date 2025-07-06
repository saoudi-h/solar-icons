'use client'

import * as React from 'react'
import * as TogglePrimitive from '@radix-ui/react-toggle'
import { cva, type VariantProps } from 'class-variance-authority'

import { cn } from '@/lib/utils'

const toggleVariants = cva(
    'border-2 shadow-xs inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 [&_svg]:pointer-events-none [&_svg]:size-4 transition-all duration-200 ease-in active:scale-95 [&_svg]:shrink-0 items-center justify-center',
    {
        variants: {
            variant: {
                default: '',
                outline: 'border border-input bg-transparent',
                ghost: 'bg-transparent border-transparent',
                link: 'bg-transparent hover:bg-transparent border-transparent hover:border-transparent',
            },
            colors: {
                default:
                    'bg-primary text-primary-foreground/80 border-primary hover:text-primary-foreground hover:bg-primary/80',
                secondary:
                    'text-secondary-foreground/80 hover:text-secondary-foreground bg-secondary border-border hover:bg-secondary/80 hover:border-secondary/80',
                destructive:
                    'text-destructive-foreground bg-destructive border-destructive hover:bg-destructive/80 hover:border-destructive/80',
                warning:
                    'text-warning-foreground bg-warning border-warning hover:bg-warning/80 hover:border-warning/80',
                muted: 'text-muted-foreground bg-muted border-muted hover:bg-muted/80 hover:border-muted/80',
                accent: 'text-accent-foreground bg-accent border-accent hover:bg-accent/80 hover:border-accent/80',
            },
            size: {
                default: 'h-9 px-2 min-w-9',
                sm: 'h-8 px-1.5 min-w-8',
                lg: 'h-10 px-2.5 min-w-10',
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
    React.ElementRef<typeof TogglePrimitive.Root>,
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
