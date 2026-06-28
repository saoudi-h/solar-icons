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
        <div className={cn('flex h-10 w-32 items-center', className)}>
            <Popover>
                <Tooltip>
                    <TooltipTrigger asChild>
                        <PopoverTrigger asChild>
                            <Input
                                type="text"
                                value={inputColor}
                                onChange={handleInputChange}
                                placeholder="#000000"
                                maxLength={7}
                                data-vaul-no-drag
                                style={{
                                    backgroundColor: color,
                                    color: isDark ? '#ffffff' : '#000000',
                                }}
                                aria-label={tooltip ?? 'Color'}
                                className="
                                  h-10 w-full rounded-l-lg rounded-r-none
                                  border-none! text-center text-xs shadow-none!
                                "
                            />
                        </PopoverTrigger>
                    </TooltipTrigger>
                    {tooltip && (
                        <TooltipContent>
                            <p>{tooltip}</p>
                        </TooltipContent>
                    )}
                </Tooltip>
                <PopoverContent
                    align="start"
                    sideOffset={6}
                    className="
                      w-72 overflow-hidden border-none bg-transparent p-0
                      shadow-md
                    ">
                    <HexColorPicker
                        color={color}
                        onChange={setColor}
                        style={{ width: '100%', height: '160px' }}
                    />
                </PopoverContent>
            </Popover>
            <CopyButton
                value={color}
                size="icon"
                colors="accent"
                variant="default"
                className="
                  size-10 shrink-0 rounded-l-none rounded-r-lg border-none
                "
            />
        </div>
    )
}
