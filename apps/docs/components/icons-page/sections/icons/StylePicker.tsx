'use client'
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { cn } from '@/lib/utils'
import { STYLES, type Weight } from '@solar-icons/core/runtime'
import { DialogIcon } from '@solar-icons/react/dynamic/dialog'
import { useState } from 'react'

interface StylePickerProps {
    value: Weight
    onChange: (value: Weight) => void
    className?: string
}

const STYLES_ORDER: Weight[] = ['Bold', 'BoldDuotone', 'Linear', 'LineDuotone', 'Broken', 'Outline']

export const StylePicker: React.FC<StylePickerProps> = ({ value, onChange, className }) => {
    const [open, setOpen] = useState(false)

    const validStyles = STYLES_ORDER.filter(s => (STYLES as readonly string[]).includes(s))

    return (
        <Popover open={open} onOpenChange={setOpen}>
            <Tooltip>
                <TooltipTrigger asChild>
                    <PopoverTrigger asChild>
                        <button
                            type="button"
                            data-vaul-no-drag
                            className={cn(
                                `
                                  flex h-10 w-48 items-center gap-2.5 rounded-lg
                                  border-none bg-default-200 px-3 text-sm
                                  shadow-none transition-colors
                                `,
                                'hover:bg-default-300',
                                `
                                  focus-visible:ring-1 focus-visible:ring-ring
                                  focus-visible:outline-hidden
                                `,
                                className
                            )}
                            aria-label={`Style: ${value}`}>
                            <DialogIcon
                                className="size-5 shrink-0"
                                weight={value}
                                size={20}
                                isolated
                            />
                            <span className="truncate font-medium">{value}</span>
                        </button>
                    </PopoverTrigger>
                </TooltipTrigger>
                <TooltipContent>
                    <p>Style</p>
                </TooltipContent>
            </Tooltip>
            <PopoverContent align="start" className="
              w-72 space-y-2 bg-default-200 p-2
            ">
                <div
                    className="
                      px-1 pt-1 text-[10px] font-medium tracking-wide
                      text-muted-foreground uppercase
                    ">
                    Style
                </div>
                <div className="grid grid-cols-3 gap-1">
                    {validStyles.map(style => {
                        const isActive = style === value
                        return (
                            <button
                                key={style}
                                type="button"
                                onClick={() => {
                                    onChange(style)
                                    setOpen(false)
                                }}
                                className={cn(
                                    `
                                      flex flex-col items-center gap-1.5
                                      rounded-md p-2 transition-colors
                                    `,
                                    `
                                      hover:bg-default-300
                                      focus-visible:ring-1
                                      focus-visible:ring-ring
                                      focus-visible:outline-hidden
                                    `,
                                    isActive &&
                                        `
                                          bg-default-300 ring-1
                                          ring-foreground/20
                                        `
                                )}>
                                <DialogIcon className="size-7" weight={style} size={28} isolated />
                                <span
                                    className={cn(
                                        'text-[10px]',
                                        isActive
                                            ? 'font-semibold'
                                            : `
                                              font-medium text-muted-foreground
                                            `
                                    )}>
                                    {style}
                                </span>
                            </button>
                        )
                    })}
                </div>
            </PopoverContent>
        </Popover>
    )
}
