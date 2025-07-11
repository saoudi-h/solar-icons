import { Slot } from '@radix-ui/react-slot'
import { cva, type VariantProps } from 'class-variance-authority'
import * as React from 'react'

import { cn } from '@/lib/utils'

const headingVariants = cva('font-heading text-foreground', {
    variants: {
        variant: {
            default: '',
        },
        size: {
            h1: `
              text-[clamp(2.225rem,1.142rem+3.659vw,4rem)] leading-none
              font-black
            `,
            h2: `
              text-[clamp(1rem,0.9rem+1.75vw,1.75rem)] leading-none font-black
            `,
            h3: `
              text-[clamp(0.9rem,0.8rem+1.5vw,1.5rem)] leading-tight font-bold
            `,
            h4: `
              text-[clamp(0.9rem,0.8rem+1.3vw,1.25rem)] leading-tight font-bold
            `,
            h5: `
              text-[clamp(0.8rem,0.7rem+1.1vw,1.1rem)] leading-tight
              font-semibold
            `,
            h6: `
              text-[clamp(0.8rem,0.6rem+1vw,1rem)] leading-tight font-semibold
            `,
        },
        justify: {
            default: 'text-left',
            center: 'text-center',
            right: 'text-right',
        },
    },
    defaultVariants: {
        variant: 'default',
        size: 'h3',
        justify: 'default',
    },
})

export interface HeadingProps
    extends React.HTMLAttributes<HTMLHeadingElement>,
        VariantProps<typeof headingVariants> {
    asChild?: boolean
}
const Heading = React.forwardRef<HTMLHeadingElement, HeadingProps>(
    ({ className, variant, size, justify, asChild = false, ...props }, ref) => {
        const Comp = asChild ? Slot : size || 'h3'
        return (
            <Comp
                className={cn(headingVariants({ variant, size, justify, className }))}
                ref={ref}
                {...props}
            />
        )
    }
)
Heading.displayName = 'Heading'

export { Heading, headingVariants }
