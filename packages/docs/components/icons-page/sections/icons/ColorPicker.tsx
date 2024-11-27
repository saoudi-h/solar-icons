'use client'
import { Button } from '@/components/ui/button'
import { CopyButton } from '@/components/ui/copy-button'
import { Input } from '@/components/ui/input'
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover'
import { Toggle } from '@/components/ui/toggle'
import { Link, LinkBroken } from '@solar-icons/react/ssr'
import { useEffect, useState } from 'react'
import { HexColorPicker } from 'react-colorful'
import { atomWithStorage } from 'jotai/utils'
import { useAtom } from 'jotai'
import { AnimatePresence, motion } from 'framer-motion'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { forcedThemeAtom } from '../../../../atom/forcedThemeAtom'

const MotionLinkBroken = motion.create(LinkBroken)
const MotionLink = motion.create(Link)
const variants = {
    initial: { x: 30 },
    animate: { x: 0 },
    exit: { x: -30 },
    transition: { duration: 0.2, ease: 'linear' },
}

interface ColorPickerProps {
    color: string
    setColor: (color: string) => void
    isDark: boolean
    setIsDark: (isDark: boolean) => void
}

const synchedThemeStorageAtom = atomWithStorage('synched', true)

export const ColorPicker: React.FC<ColorPickerProps> = ({ color, setColor, isDark, setIsDark }) => {
    const [synched, setSynched] = useAtom(synchedThemeStorageAtom)
    const [forcedTheme, setForcedTheme] = useAtom(forcedThemeAtom)
    const [inputColor, setInputColor] = useState<string>(color)
    const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
        const value = e.target.value
        setInputColor(value)
        if (/^#([0-9A-F]{3}){1,2}$/i.test(value)) {
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
        <div className="flex items-center">
            <Tooltip>
                <TooltipTrigger asChild>
                    <Toggle
                        className="relative rounded-l-lg size-10 rounded-r-none bg-accent/30 border-none overflow-hidden"
                        pressed={synched}
                        onPressedChange={setSynched}>
                        <AnimatePresence>
                            {synched ? (
                                <MotionLinkBroken
                                    key="link-boken"
                                    size={24}
                                    variants={variants}
                                    initial="initial"
                                    animate="animate"
                                    exit="exit"
                                    className="absolute inset-0 self-center justify-self-center"
                                />
                            ) : (
                                <MotionLink
                                    key="link"
                                    size={24}
                                    variants={variants}
                                    initial="initial"
                                    animate="animate"
                                    exit="exit"
                                    className="absolute inset-0 justify-self-center self-center"
                                />
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
                    <div className="flex flex-row flex-nowrap gap-0 items-center justify-center">
                        <Button
                            asChild
                            variant="outline"
                            colors="accent"
                            className="w-full !p-0 !border-none">
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
                                className="w-20 text-center rounded-l-lg h-10 rounded-none"
                            />
                        </Button>
                    </div>
                </PopoverTrigger>
                <PopoverContent className="w-full bg-accent/30 border-border/30 p-0">
                    <HexColorPicker color={color} onChange={setColor} />
                </PopoverContent>
            </Popover>
            <CopyButton
                value={color}
                className="rounded-r-lg rounded-l-none border-none bg-accent/30 h-10"
                colors="accent"
                variant="outline"></CopyButton>
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
