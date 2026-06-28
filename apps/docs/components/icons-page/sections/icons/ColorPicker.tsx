'use client'
import { CopyButton } from '@/components/ui/copy-button'
import { Input } from '@/components/ui/input'
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { cn } from '@/lib/utils'
import { useEffect, useState } from 'react'
import { HexColorPicker } from 'react-colorful'
import { getContrastingColor } from './color-utils'

interface ColorPickerProps {
    color: string
    setColor: (color: string) => void
    className?: string
    tooltip?: string
}

export const ColorPicker: React.FC<ColorPickerProps> = ({
    color,
    setColor,
    className,
    tooltip,
}) => {
    const [inputColor, setInputColor] = useState<string>(color)

    const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
        const value = e.target.value
        setInputColor(value)
        if (/^#[0-9A-F]{3}(?:[0-9A-F]{3})?$/i.test(value)) {
            setColor(value)
        }
    }

    useEffect(() => {
        if (color === inputColor) return
        const timer = setTimeout(() => {
            if (inputColor !== color) {
                setInputColor(color)
            }
        }, 10000)
        return () => clearTimeout(timer)
    }, [color, inputColor])

    const isDark = getContrastingColor(color)

    return (
        <Popover>
            <Tooltip>
                <TooltipTrigger asChild>
                    <PopoverTrigger asChild>
                        <button
                            type="button"
                            data-vaul-no-drag
                            className={cn(
                                `
                                  flex size-10 items-center justify-center
                                  rounded-lg border-none p-0 transition-opacity
                                `,
                                'hover:ring-2 hover:ring-foreground/20',
                                className
                            )}
                            style={{ backgroundColor: color }}
                            aria-label={tooltip ?? 'Color'}
                        />
                    </PopoverTrigger>
                </TooltipTrigger>
                {tooltip && (
                    <TooltipContent>
                        <p>{tooltip}</p>
                    </TooltipContent>
                )}
            </Tooltip>
            <PopoverContent className="w-72 space-y-3 bg-default-200 p-3">
                <div className="flex items-center gap-2">
                    <Input
                        type="text"
                        value={inputColor}
                        onChange={handleInputChange}
                        placeholder="#000000"
                        maxLength={7}
                        style={{
                            backgroundColor: color,
                            color: isDark ? '#ffffff' : '#000000',
                        }}
                        className="h-8 rounded-md text-center text-xs"
                    />
                    <CopyButton
                        value={color}
                        size="icon"
                        colors="accent"
                        variant="default"
                        className="size-8 rounded-md border-none"
                    />
                </div>
                <HexColorPicker
                    color={color}
                    onChange={setColor}
                    style={{ width: '100%', height: '150px' }}
                />
            </PopoverContent>
        </Popover>
    )
}
