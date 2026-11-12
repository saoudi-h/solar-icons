'use client'

import type { Weight } from '@solar-icons/core/runtime'
import type { FC } from 'react'

import { Tooltip, TooltipContent, TooltipTrigger } from '~/components/ui/tooltip'
import { iconWeights } from '~/lib/resolveIconUtils'
import { cn } from '~/lib/utils'

import { useSelectedIcon, useShowcaseReady, useStyleURL } from '../context'
import { useIconPreview } from '../icon-registry'
import { STYLE_LABELS } from '../StylePicker'

/** The six styles of the selected icon, side by side. */
export const IconVariants: FC<{ square?: boolean }> = ({ square = false }) => {
    const selectedIcon = useSelectedIcon()
    const [currentWeight, setWeight] = useStyleURL()

    if (!selectedIcon) return null

    return (
        <div className="grid grid-cols-6 gap-1">
            {iconWeights.map(weight => (
                <Variant
                    key={weight}
                    name={selectedIcon.name}
                    weight={weight}
                    square={square}
                    isCurrent={weight === currentWeight}
                    onSelect={setWeight}
                />
            ))}
        </div>
    )
}

interface VariantProps {
    name: string
    weight: Weight
    isCurrent: boolean
    /** Square cells in the narrow side column, short ones in the wide sheet. */
    square: boolean
    onSelect: (weight: Weight) => void
}

/** One style of the selected icon. Clicking it makes it the current style. */
const Variant: FC<VariantProps> = ({ name, weight, isCurrent, square, onSelect }) => {
    // All six styles use generated SVG data and the same provider-aware renderer.
    const ready = useShowcaseReady()
    const { Icon, error, retry } = useIconPreview(name, weight)

    return (
        <Tooltip>
            <TooltipTrigger asChild>
                <button
                    type="button"
                    aria-pressed={isCurrent}
                    disabled={!ready}
                    aria-label={`${STYLE_LABELS[weight]} variant`}
                    onClick={() => {
                        if (error) retry()
                        onSelect(weight)
                    }}
                    className={cn(
                        `
                          flex cursor-pointer items-center justify-center rounded-lg
                          transition-colors
                          focus-visible:ring-2 focus-visible:ring-primary
                          focus-visible:outline-none
                        `,
                        square ? 'aspect-square' : 'h-12',
                        isCurrent
                            ? 'bg-primary/15 ring-1 ring-primary/70 ring-inset'
                            : 'bg-foreground/[0.05] hover:bg-foreground/[0.1]'
                    )}>
                    {Icon ? (
                        <Icon size={26} />
                    ) : (
                        <span aria-hidden="true" className="text-[10px] text-muted-foreground">
                            {error ? 'Retry' : null}
                        </span>
                    )}
                </button>
            </TooltipTrigger>
            <TooltipContent>
                <p>{STYLE_LABELS[weight]}</p>
            </TooltipContent>
        </Tooltip>
    )
}
