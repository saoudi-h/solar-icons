'use client'
import { useEffect, useRef, useState } from 'react'
import { HexColorPicker } from 'react-colorful'

import { CopyButton } from '~/components/ui/copy-button'
import { Input } from '~/components/ui/input'
import { Popover, PopoverContent, PopoverTrigger } from '~/components/ui/popover'
import { Tooltip, TooltipContent, TooltipTrigger } from '~/components/ui/tooltip'
import { cn } from '~/lib/utils'

import { CONTROL_FOCUS, CONTROL_SURFACE } from './surface'

interface ColorSwatchProps {
    /** Accessible name and tooltip, for example "Primary color". */
    label: string
    color: string
    setColor: (color: string) => void
    disabled?: boolean
    className?: string
}

const HEX = /^#[0-9A-F]{3}(?:[0-9A-F]{3})?$/i

/**
 * A colour as a swatch. The value, the picker and the copy action live in
 * the popover, so the toolbar spends 40px on a colour instead of 130.
 */
export const ColorSwatch: React.FC<ColorSwatchProps> = ({
    label,
    color,
    setColor,
    disabled,
    className,
}) => {
    const [inputColor, setInputColor] = useState(color)
    const editingRef = useRef(false)

    useEffect(() => {
        // Mirror external changes (picker drag, reset, theme defaults), except
        // while the visitor is typing.
        if (!editingRef.current) setInputColor(color)
    }, [color])

    return (
        <Popover>
            <Tooltip>
                <TooltipTrigger asChild>
                    <PopoverTrigger asChild>
                        <button
                            type="button"
                            disabled={disabled}
                            aria-label={`${label}: ${color}`}
                            data-vaul-no-drag
                            className={cn(
                                `
                                  flex size-10 shrink-0 items-center justify-center rounded-lg
                                  transition-opacity
                                  disabled:pointer-events-none disabled:opacity-30
                                `,
                                CONTROL_SURFACE,
                                CONTROL_FOCUS,
                                className
                            )}>
                            <span
                                aria-hidden="true"
                                className="size-5 rounded-full ring-1 ring-foreground/15 ring-inset"
                                style={{ backgroundColor: color }}
                            />
                        </button>
                    </PopoverTrigger>
                </TooltipTrigger>
                <TooltipContent>
                    <p>{label}</p>
                </TooltipContent>
            </Tooltip>
            <PopoverContent
                align="center"
                sideOffset={8}
                className="
                  flex w-60 flex-col gap-3 rounded-xl border-none bg-popover p-3 shadow-lg ring-1
                  ring-foreground/10
                ">
                <HexColorPicker
                    color={color}
                    onChange={setColor}
                    style={{ width: '100%', height: '150px' }}
                />
                <div className="flex items-center gap-2">
                    <Input
                        type="text"
                        value={inputColor}
                        aria-label={`${label} hex value`}
                        placeholder="#000000"
                        maxLength={7}
                        onChange={event => {
                            const value = event.target.value
                            setInputColor(value)
                            if (HEX.test(value)) setColor(value)
                        }}
                        onFocus={() => {
                            editingRef.current = true
                        }}
                        onBlur={() => {
                            editingRef.current = false
                            setInputColor(color)
                        }}
                        className="h-9 flex-1 rounded-lg font-mono text-xs"
                    />
                    <CopyButton
                        value={color}
                        size="icon"
                        variant="ghost"
                        aria-label={`Copy ${label.toLowerCase()}`}
                        className="size-9 shrink-0 rounded-lg"
                    />
                </div>
            </PopoverContent>
        </Popover>
    )
}
