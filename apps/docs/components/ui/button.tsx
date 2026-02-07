import { cn } from '@/lib/utils'
import { Slot } from '@radix-ui/react-slot'
import { cva, type VariantProps } from 'class-variance-authority'
import * as React from 'react'

const buttonVariants = cva(
    `
      focus-visible:ring-ring focus-visible:ring-1 focus-visible:outline-hidden
      inline-flex w-fit items-center justify-center gap-2 rounded-md border-2
      text-sm font-medium whitespace-nowrap shadow-2xs transition-all
      duration-200 ease-in
      active:scale-95
      disabled:pointer-events-none disabled:opacity-50
      [&_svg]:pointer-events-none [&_svg]:size-5 [&_svg]:shrink-0
    `,
    {
        variants: {
            variant: {
                default: '',
                outline: 'bg-transparent!',
                ghost: 'border-transparent! bg-transparent! shadow-none',
                link: `
                  border-transparent! bg-transparent! underline-offset-4
                  hover:border-transparent! hover:bg-transparent!
                  hover:underline
                `,
            },
            size: {
                default: 'h-9 px-5 py-2',
                sm: 'h-8 rounded-md border px-4 text-xs',
                lg: 'h-10 rounded-md px-9',
                xl: 'h-12 rounded-md px-9',
                icon: 'h-9 w-9 border!',
            },
            colors: {
                default: `
                  border-primary bg-primary text-primary-foreground/80
                  hover:bg-primary/80 hover:text-primary-foreground
                `,
                secondary: `
                  border-secondary-foreground/60 bg-secondary
                  text-secondary-foreground/80
                  hover:border-secondary-foreground/80 hover:bg-secondary/80
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
        },
        defaultVariants: {
            variant: 'default',
            size: 'default',
            colors: 'default',
        },
        compoundVariants: [
            {
                variant: 'outline',
                colors: 'default',
                className: `
                  border-primary text-primary/80
                  hover:bg-primary/80 hover:text-primary
                `,
            },
            {
                variant: 'outline',
                colors: 'secondary',
                className: `
                  border-secondary text-secondary/80
                  hover:bg-secondary/80 hover:text-secondary
                `,
            },
            {
                variant: 'outline',
                colors: 'destructive',
                className: `
                  border-destructive text-destructive/80
                  hover:bg-destructive/80 hover:text-destructive
                `,
            },
            {
                variant: 'outline',
                colors: 'warning',
                className: `
                  border-warning text-warning/80
                  hover:bg-warning/80 hover:text-warning
                `,
            },
            {
                variant: 'outline',
                colors: 'muted',
                className: `
                  border-muted text-muted/80
                  hover:bg-muted/80 hover:text-muted
                `,
            },
            {
                variant: 'outline',
                colors: 'accent',
                className: `
                  border-accent text-accent/80
                  hover:bg-accent/80 hover:text-accent
                `,
            },
            {
                variant: 'ghost',
                colors: 'default',
                className: `
                  text-foreground/70
                  hover:bg-default-200/50! hover:text-foreground/100
                `,
            },
            {
                variant: 'link',
                colors: 'default',
                className: `
                  text-foreground/70
                  hover:text-foreground/100
                `,
            },
        ],
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
