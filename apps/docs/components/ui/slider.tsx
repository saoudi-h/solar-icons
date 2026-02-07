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
              bg-foreground/20 relative h-0.5 w-full grow overflow-hidden
              rounded-full
            `}>
            <SliderPrimitive.Range className="bg-foreground absolute h-full" />
        </SliderPrimitive.Track>
        <SliderPrimitive.Thumb
            className={`
              border-foreground/50 bg-background block size-4 rounded-full
              border shadow-sm transition-all
              focus-visible:ring-ring focus-visible:ring-1
              focus-visible:outline-hidden
              hover:size-5 hover:shadow-md
              disabled:pointer-events-none disabled:opacity-50
            `}
        />
    </SliderPrimitive.Root>
))
Slider.displayName = SliderPrimitive.Root.displayName

export { Slider }
