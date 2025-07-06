import * as React from 'react'
import { Slot } from '@radix-ui/react-slot'
import { cva, type VariantProps } from 'class-variance-authority'
import { cn } from '@/lib/utils'

const buttonVariants = cva(
    'border-2 shadow-2xs inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium focus-visible:outline-hidden focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 [&_svg]:pointer-events-none [&_svg]:size-5 transition-all duration-200 ease-in active:scale-95 [&_svg]:shrink-0 items-center justify-center',
    {
        variants: {
            variant: {
                default: '',
                outline: 'bg-transparent!',
                ghost: 'bg-transparent! border-transparent!',
                link: 'bg-transparent! !hover:bg-transparent border-transparent! !hover:border-transparent',
            },
            size: {
                default: 'h-9 px-5 py-2',
                sm: 'h-8 rounded-md px-4 text-xs border',
                lg: 'h-10 rounded-md px-9',
                xl: 'h-12 rounded-md px-9',
                icon: 'h-9 w-9 border!',
            },
            colors: {
                default:
                    'bg-primary text-primary-foreground/80 border-primary hover:text-primary-foreground hover:bg-primary/80',
                secondary:
                    'text-secondary-foreground/80 hover:text-secondary-foreground bg-secondary border-secondary-foreground/60 hover:bg-secondary/80 hover:border-secondary-foreground/80',
                destructive:
                    'text-destructive-foreground bg-destructive border-destructive hover:bg-destructive/80 hover:border-destructive/80',
                warning:
                    'text-warning-foreground bg-warning border-warning hover:bg-warning/80 hover:border-warning/80',
                muted: 'text-muted-foreground bg-muted border-muted hover:bg-muted/80 hover:border-muted/80',
                accent: 'text-accent-foreground bg-accent border-accent hover:bg-accent/80 hover:border-accent/80',
            },
        },
        defaultVariants: {
            variant: 'default',
            size: 'default',
            colors: 'default',
        },
    }
)

export interface ButtonProps
    extends React.ButtonHTMLAttributes<HTMLButtonElement>,
        VariantProps<typeof buttonVariants> {
    asChild?: boolean
}

const Button = React.forwardRef<HTMLButtonElement, ButtonProps>(
    ({ className, variant, size, colors, asChild = false, ...props }, ref) => {
        const Comp = asChild ? Slot : 'button'
        return (
            <Comp
                className={cn(buttonVariants({ colors, variant, size, className }))}
                ref={ref}
                {...props}
            />
        )
    }
)
Button.displayName = 'Button'

export { Button, buttonVariants }
