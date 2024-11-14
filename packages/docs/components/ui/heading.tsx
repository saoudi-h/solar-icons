import * as React from 'react'
import { Slot } from '@radix-ui/react-slot'
import { cva, type VariantProps } from 'class-variance-authority'

import { cn } from '@/lib/utils'
import { motion } from 'framer-motion'

const headingVariants = cva('text-foreground font-heading', {
    variants: {
        variant: {
            default: '',
        },
        size: {
            h1: 'font-black text-[clamp(2.225rem,1.142rem+3.659vw,4rem)] leading-none',
            h2: 'font-black text-[clamp(1rem,0.9rem+1.75vw,1.75rem)] leading-none',
            h3: 'font-bold text-[clamp(0.9rem,0.8rem+1.5vw,1.5rem)] leading-tight',
            h4: 'font-bold text-[clamp(0.9rem,0.8rem+1.3vw,1.25rem)] leading-tight',
            h5: 'font-semibold text-[clamp(0.8rem,0.7rem+1.1vw,1.1rem)] leading-tight',
            h6: 'font-semibold text-[clamp(0.8rem,0.6rem+1vw,1rem)] leading-tight',
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

const MotionHeading = motion.create(Heading)

export { Heading, headingVariants, MotionHeading }
