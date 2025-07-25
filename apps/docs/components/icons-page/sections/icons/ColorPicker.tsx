'use client'
import { forcedThemeAtom } from '@/atom/forcedThemeAtom'
import { Button } from '@/components/ui/button'
import { CopyButton } from '@/components/ui/copy-button'
import { Input } from '@/components/ui/input'
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover'
import { Toggle } from '@/components/ui/toggle'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { cn } from '@/lib/utils'
import { Link, LinkBroken } from '@solar-icons/react/ssr'
import { AnimatePresence, motion } from 'framer-motion'
import { useAtom } from 'jotai'
import { atomWithStorage } from 'jotai/utils'
import { useEffect, useState } from 'react'
import { HexColorPicker } from 'react-colorful'
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
}

const synchedThemeStorageAtom = atomWithStorage('synched', true)

export const ColorPicker: React.FC<ColorPickerProps> = ({ color, setColor, className }) => {
    const [isDark, setIsDark] = useAtom(colorIconDark)
    const [synched, setSynched] = useAtom(synchedThemeStorageAtom)
    const [forcedTheme, setForcedTheme] = useAtom(forcedThemeAtom)
    const [inputColor, setInputColor] = useState<string>(color)
    const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
        const value = e.target.value
        setInputColor(value)
        // Capturing group number 1 is defined but never used 
        // regexp/no-unused-capturing
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
    }, [inputColor])

    useEffect(() => {
        if (color) {
            setIsDark(getContrastingColor(color))
        }
    }, [color])

    return (
        <div className={cn('flex items-center', className)}>
            <Tooltip>
                <TooltipTrigger asChild>
                    <Toggle
                        variant="default"
                        colors="accent"
                        className={`
                          relative size-10 overflow-hidden rounded-l-lg
                          rounded-r-none border-none bg-default-200
                        `}
                        pressed={synched}
                        onPressedChange={setSynched}>
                        <AnimatePresence>
                            {synched ? (
                                <motion.div
                                    variants={variants}
                                    initial="initial"
                                    animate="animate"
                                    exit="exit"
                                    key="link-boken"
                                    className={`
                                      absolute inset-0 flex size-full
                                      items-center justify-center
                                    `}>
                                    <LinkBroken size={24} />
                                </motion.div>
                            ) : (
                                <motion.div
                                    variants={variants}
                                    initial="initial"
                                    animate="animate"
                                    exit="exit"
                                    key="link"
                                    className={`
                                      absolute inset-0 flex size-full
                                      items-center justify-center
                                    `}>
                                    <Link size={24} />
                                </motion.div>
                            )}
                        </AnimatePresence>
                    </Toggle>
                </TooltipTrigger>
                <TooltipContent>
                    <p>Sync Theme</p>
                </TooltipContent>
            </Tooltip>

            <Popover>
                <PopoverTrigger asChild>
                    <div
                        className={`
                          flex flex-1 flex-row flex-nowrap items-center
                          justify-center gap-0
                        `}>
                        <Button
                            asChild
                            variant="default"
                            colors="secondary"
                            className="w-full border-none! bg-default-200 p-0!">
                            <Input
                                style={{
                                    backgroundColor: color,
                                    color: isDark ? '#ffffff' : '#000000',
                                }}
                                type="text"
                                value={inputColor}
                                onChange={handleChange}
                                placeholder="#000000"
                                maxLength={7}
                                className={`
                                  h-10 w-full rounded-none text-center
                                `}
                            />
                        </Button>
                    </div>
                </PopoverTrigger>
                <PopoverContent className="w-full bg-default-200 p-0">
                    <HexColorPicker color={color} onChange={setColor} />
                </PopoverContent>
            </Popover>
            <CopyButton
                value={color}
                className={`
                  h-10 rounded-l-none rounded-r-lg border-none bg-default-200
                `}
                colors="accent"
                variant="default"></CopyButton>
        </div>
    )
}

function getContrastingColor(hexColor: string): boolean {
    const color = hexColor.replace('#', '')
    const r = parseInt(color.substring(0, 2), 16)
    const g = parseInt(color.substring(2, 4), 16)
    const b = parseInt(color.substring(4, 6), 16)

    const brightness = 0.299 * r + 0.587 * g + 0.114 * b
    return brightness < 150
}
