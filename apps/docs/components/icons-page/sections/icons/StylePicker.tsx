'use client'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { cn } from '@/lib/utils'
import { STYLES, type Weight } from '@solar-icons/core/runtime'
import { DialogIcon } from '@solar-icons/react/dynamic/dialog'

interface StylePickerProps {
    value: Weight
    onChange: (value: Weight) => void
    className?: string
}

const STYLES_ORDER: Weight[] = ['Bold', 'BoldDuotone', 'Linear', 'LineDuotone', 'Broken', 'Outline']

export const StylePicker: React.FC<StylePickerProps> = ({ value, onChange, className }) => {
    const validStyles = STYLES_ORDER.filter(s => (STYLES as readonly string[]).includes(s))

    return (
        <div
            className={cn(
                `flex h-10 items-center gap-1 rounded-lg bg-default-200 p-1`,
                className
            )}
            role="radiogroup"
            aria-label="Style">
            {validStyles.map(style => {
                const isActive = style === value
                return (
                    <Tooltip key={style}>
                        <TooltipTrigger asChild>
                            <button
                                type="button"
                                role="radio"
                                aria-checked={isActive}
                                aria-label={style}
                                data-vaul-no-drag
                                onClick={() => onChange(style)}
                                className={cn(
                                    `
                                      flex size-8 items-center justify-center
                                      rounded-md transition-colors
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
                                <DialogIcon className="size-5" weight={style} size={20} isolated />
                            </button>
                        </TooltipTrigger>
                        <TooltipContent>
                            <p>{style}</p>
                        </TooltipContent>
                    </Tooltip>
                )
            })}
        </div>
    )
}
