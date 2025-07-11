'use client'

import * as SliderPrimitive from '@radix-ui/react-slider'
import * as React from 'react'

import { cn } from '@/lib/utils'

const Slider = React.forwardRef<
    React.ElementRef<typeof SliderPrimitive.Root>,
    React.ComponentPropsWithoutRef<typeof SliderPrimitive.Root>
>(({ className, ...props }, ref) => (
    <SliderPrimitive.Root
        ref={ref}
        className={cn('relative flex w-full touch-none items-center select-none', className)}
        {...props}>
        <SliderPrimitive.Track
            className={`
              relative h-0.5 w-full grow overflow-hidden rounded-full
              bg-foreground/20
            `}>
            <SliderPrimitive.Range className="absolute h-full bg-foreground" />
        </SliderPrimitive.Track>
        <SliderPrimitive.Thumb
            className={`
              block size-4 rounded-full border border-foreground/50
              bg-background shadow-sm transition-all
              hover:size-5 hover:shadow-md
              focus-visible:ring-1 focus-visible:ring-ring
              focus-visible:outline-hidden
              disabled:pointer-events-none disabled:opacity-50
            `}
        />
    </SliderPrimitive.Root>
))
Slider.displayName = SliderPrimitive.Root.displayName

export { Slider }
