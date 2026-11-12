'use client'
import { STYLES, type Weight } from '@solar-icons/core/runtime'
import { DialogIcon } from '@solar-icons/react/dynamic/dialog'

import { Tooltip, TooltipContent, TooltipTrigger } from '~/components/ui/tooltip'
import { cn } from '~/lib/utils'

import { CONTROL_FOCUS, CONTROL_SURFACE } from './surface'

interface StylePickerProps {
    value: Weight
    onChange: (value: Weight) => void
    className?: string
}

const STYLES_ORDER: Weight[] = ['Bold', 'BoldDuotone', 'Linear', 'LineDuotone', 'Broken', 'Outline']

export const STYLE_LABELS: Record<Weight, string> = {
    Bold: 'Bold',
    BoldDuotone: 'Bold Duotone',
    Linear: 'Linear',
    LineDuotone: 'Line Duotone',
    Broken: 'Broken',
    Outline: 'Outline',
}

export const StylePicker: React.FC<StylePickerProps> = ({ value, onChange, className }) => {
    const validStyles = STYLES_ORDER.filter(s => (STYLES as readonly string[]).includes(s))

    return (
        <div
            className={cn(
                'flex h-10 shrink-0 items-center gap-0.5 rounded-lg p-1',
                CONTROL_SURFACE,
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
                                      flex size-8 items-center justify-center rounded-md
                                      transition-colors
                                    `,
                                    CONTROL_FOCUS,
                                    isActive
                                        ? 'bg-background text-foreground shadow-xs dark:bg-foreground/15'
                                        : `
                                          text-muted-foreground
                                          hover:bg-foreground/[0.06] hover:text-foreground
                                        `
                                )}>
                                <DialogIcon className="size-5" weight={style} size={24} isolated />
                            </button>
                        </TooltipTrigger>
                        <TooltipContent>
                            <p>{STYLE_LABELS[style]}</p>
                        </TooltipContent>
                    </Tooltip>
                )
            })}
        </div>
    )
}
