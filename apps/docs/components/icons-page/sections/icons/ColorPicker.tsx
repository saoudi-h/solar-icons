'use client'
import { forcedThemeAtom } from '@/atom/forcedThemeAtom'
import { CopyButton } from '@/components/ui/copy-button'
import { Input } from '@/components/ui/input'
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover'
import { Toggle } from '@/components/ui/toggle'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { cn } from '@/lib/utils'
import { LinkIcon } from '@solar-icons/react/linear/link'
import { LinkBrokenIcon } from '@solar-icons/react/linear/link-broken'
import { AnimatePresence, motion } from 'framer-motion'
import { useAtom } from 'jotai'
import { atomWithStorage } from 'jotai/utils'
import { useEffect, useState } from 'react'
import { HexColorPicker } from 'react-colorful'
import { getContrastingColor } from './color-utils'
import { colorIconDark } from './context'

const variants = {
    initial: { x: 30 },
    animate: { x: 0 },
    exit: { x: -30 },
    transition: { duration: 0.2, ease: 'linear' },
}

interface ColorPickerProps {
    color: string
    setColor: (color: string) => void
    className?: string
    tooltip?: string
}

const synchedThemeStorageAtom = atomWithStorage('synched', true)

export const ColorPicker: React.FC<ColorPickerProps> = ({
    color,
    setColor,
    className,
    tooltip,
}) => {
    const [isDark, setIsDark] = useAtom(colorIconDark)
    const [synched, setSynched] = useAtom(synchedThemeStorageAtom)
    const [forcedTheme, setForcedTheme] = useAtom(forcedThemeAtom)
    const [inputColor, setInputColor] = useState<string>(color)

    const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
        const value = e.target.value
        setInputColor(value)
        if (/^#[0-9A-F]{3}(?:[0-9A-F]{3})?$/i.test(value)) {
            setColor(value)
        }
    }

    useEffect(() => {
        if (!synched) {
            setForcedTheme(undefined)
        } else if (isDark && (forcedTheme === 'dark' || forcedTheme === undefined)) {
            setForcedTheme('light')
        } else if (!isDark && (forcedTheme === 'light' || forcedTheme === undefined)) {
            setForcedTheme('dark')
        }
    }, [isDark, forcedTheme, synched])

    useEffect(() => {
        if (color === inputColor) return
        const timer = setTimeout(() => {
            if (inputColor !== color) {
                setInputColor(color)
            }
        }, 10000)
        return () => clearTimeout(timer)
    }, [color, inputColor])

    useEffect(() => {
        if (color) {
            setIsDark(getContrastingColor(color))
        }
    }, [color])

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
                <div
                    className={cn(
                        `
                          flex items-center justify-between rounded-md
                          bg-default-100 px-3 py-2
                        `
                    )}>
                    <div className="flex flex-col">
                        <span className="text-xs font-medium">Sync theme</span>
                        <span className="text-[10px] text-muted-foreground">
                            {synched ? 'Contrast forced' : 'Free choice'}
                        </span>
                    </div>
                    <Toggle
                        variant="default"
                        colors="accent"
                        pressed={synched}
                        onPressedChange={setSynched}
                        className={cn(
                            `
                              relative size-7 overflow-hidden rounded-md
                              border-none bg-default-300 p-0
                            `
                        )}>
                        <AnimatePresence>
                            {synched ? (
                                <motion.div
                                    variants={variants}
                                    initial="initial"
                                    animate="animate"
                                    exit="exit"
                                    key="link-broken"
                                    className="
                                      absolute inset-0 flex size-full
                                      items-center justify-center
                                    ">
                                    <LinkBrokenIcon className="size-3.5" isolated />
                                </motion.div>
                            ) : (
                                <motion.div
                                    variants={variants}
                                    initial="initial"
                                    animate="animate"
                                    exit="exit"
                                    key="link"
                                    className="
                                      absolute inset-0 flex size-full
                                      items-center justify-center
                                    ">
                                    <LinkIcon className="size-3.5" isolated />
                                </motion.div>
                            )}
                        </AnimatePresence>
                    </Toggle>
                </div>
            </PopoverContent>
        </Popover>
    )
}
