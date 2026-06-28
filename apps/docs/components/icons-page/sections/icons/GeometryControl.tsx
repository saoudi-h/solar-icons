'use client'
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover'
import { Slider } from '@/components/ui/slider'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { cn } from '@/lib/utils'
import { useState } from 'react'

interface GeometryControlProps {
    label: string
    tooltip: string
    value: number
    onChange: (value: number) => void
    min: number
    max: number
    step: number
    defaultValue: number
    decimals?: number
    unit?: string
    disabled?: boolean
    className?: string
}

export const GeometryControl: React.FC<GeometryControlProps> = ({
    label,
    tooltip,
    value,
    onChange,
    min,
    max,
    step,
    defaultValue,
    decimals = 0,
    unit = 'px',
    disabled,
    className,
}) => {
    const [open, setOpen] = useState(false)

    const displayValue = value.toFixed(decimals)
    const isModified = value !== defaultValue

    const trigger = (
        <PopoverTrigger asChild>
            <button
                type="button"
                disabled={disabled}
                data-vaul-no-drag
                onClick={() => !disabled && setOpen(o => !o)}
                className={cn(
                    `
                      flex h-10 w-28 items-center justify-center gap-1.5
                      rounded-lg border-none bg-default-200 px-3 text-sm
                      shadow-none transition-colors
                    `,
                    !disabled && 'hover:bg-default-300',
                    `
                      focus-visible:ring-1 focus-visible:ring-ring
                      focus-visible:outline-hidden
                    `,
                    disabled && 'pointer-events-none opacity-30',
                    className
                )}
                aria-label={`${label}: ${displayValue}${unit}`}>
                <span className="text-xs font-medium text-muted-foreground">{label}</span>
                <span
                    className={cn(
                        'font-mono text-sm tabular-nums',
                        isModified ? 'text-foreground' : 'text-foreground/80'
                    )}>
                    {displayValue}
                    {unit}
                </span>
            </button>
        </PopoverTrigger>
    )

    return (
        <Popover open={open} onOpenChange={setOpen}>
            <Tooltip>
                <TooltipTrigger asChild>{trigger}</TooltipTrigger>
                <TooltipContent>
                    <p>{tooltip}</p>
                </TooltipContent>
            </Tooltip>
            <PopoverContent
                align="start"
                className="w-72 space-y-2 bg-default-200 p-3">
                <div className="flex items-center justify-between text-xs">
                    <span className="font-medium text-muted-foreground">{label}</span>
                    <span className="font-mono tabular-nums">
                        {displayValue}
                        {unit}
                    </span>
                </div>
                <Slider
                    value={[value]}
                    onValueChange={v => onChange(v[0] ?? defaultValue)}
                    min={min}
                    max={max}
                    step={step}
                />
                <div
                    className="
                      flex items-center justify-between text-[10px]
                      text-muted-foreground
                    ">
                    <span className="font-mono">
                        {min}
                        {unit}
                    </span>
                    <button
                        type="button"
                        onClick={() => onChange(defaultValue)}
                        className={cn(
                            'rounded-sm px-1.5 py-0.5 transition-colors',
                            'hover:bg-default-300 hover:text-foreground',
                            isModified
                                ? 'text-muted-foreground'
                                : `pointer-events-none opacity-0`
                        )}>
                        reset
                    </button>
                    <span className="font-mono">
                        {max}
                        {unit}
                    </span>
                </div>
            </PopoverContent>
        </Popover>
    )
}
