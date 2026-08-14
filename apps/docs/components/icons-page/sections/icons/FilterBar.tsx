'use client'
import { Button } from '@/components/ui/button'
import {
    Drawer,
    DrawerContent,
    DrawerHeader,
    DrawerTitle,
    DrawerTrigger,
} from '@/components/ui/drawer'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { cn } from '@/lib/utils'
import { useSolar } from '@solar-icons/react'
import { RestartIcon } from '@solar-icons/react/linear/restart'
import { SettingsIcon } from '@solar-icons/react/linear/settings'
import { useAtom, useSetAtom } from 'jotai'
import { motion } from 'motion/react'
import { useEffect, useRef, useState } from 'react'
import { ColorPicker } from './ColorPicker'
import { ColorPickerSimple } from './ColorPickerSimple'
import { GeometryControl } from './GeometryControl'
import { SearchInput } from './SearchInput'
import { StylePicker } from './StylePicker'
import { ViewModeToggle } from './ViewModeToggle'
import {
    activeCategoryAtom,
    DEFAULT_VALUES,
    extendedOnlyAtom,
    filteredCountAtom,
    useSearchKeyword,
    useStyleURL,
} from './context'

export const FilterBarContent: React.FC = () => {
    const [filteredCount] = useAtom(filteredCountAtom)
    const [keyword, setKeyword] = useSearchKeyword()
    const [weight, setWeight] = useStyleURL()
    const [extendedOnly, setExtendedOnly] = useAtom(extendedOnlyAtom)
    const setActiveCategory = useSetAtom(activeCategoryAtom)

    const [inputValue, setInputValue] = useState(keyword)
    const debounceRef = useRef<ReturnType<typeof setTimeout> | null>(null)

    const handleSearchChange = (value: string) => {
        setInputValue(value)
        if (debounceRef.current) clearTimeout(debounceRef.current)
        debounceRef.current = setTimeout(() => {
            setKeyword(value)
        }, 300)
    }

    useEffect(() => {
        return () => {
            if (debounceRef.current) clearTimeout(debounceRef.current)
        }
    }, [])

    const {
        color: solarColor,
        size: solarSize,
        setColor,
        setSize,
        secondaryColor,
        setSecondaryColor,
        secondaryOpacity,
        setSecondaryOpacity,
        strokeWidth: solarStrokeWidth,
        setStrokeWidth,
    } = useSolar()
    const color = solarColor ?? DEFAULT_VALUES.color
    const size = Number(solarSize ?? DEFAULT_VALUES.size)
    const strokeWidth = Number(solarStrokeWidth ?? DEFAULT_VALUES.strokeWidth)
    const duotoneColor = secondaryColor ?? DEFAULT_VALUES.secondaryColor
    const duotoneOpacity = Number(secondaryOpacity ?? DEFAULT_VALUES.secondaryOpacity)

    const isDuotone = weight.includes('Duotone')
    const hasStroke = weight === 'Linear' || weight === 'Broken' || weight === 'LineDuotone'

    const reset = () => {
        setColor(DEFAULT_VALUES.color)
        setSize(DEFAULT_VALUES.size)
        setStrokeWidth(DEFAULT_VALUES.strokeWidth)
        setSecondaryColor(DEFAULT_VALUES.secondaryColor)
        setSecondaryOpacity(DEFAULT_VALUES.secondaryOpacity)
        setKeyword('')
        setInputValue('')
        setActiveCategory(null)
        setExtendedOnly(false)
        if (debounceRef.current) clearTimeout(debounceRef.current)
    }

    return (
        <div
            className="
              flex flex-1 flex-wrap content-start items-center justify-start
              gap-2
            ">
            {/* Section A — Style */}
            <StylePicker value={weight} onChange={setWeight} />

            {/* Section B — Geometry */}
            <GeometryControl
                label="Size"
                tooltip="Icon size"
                value={size}
                onChange={setSize}
                min={16}
                max={64}
                step={1}
                defaultValue={DEFAULT_VALUES.size}
            />
            <GeometryControl
                label="Stroke"
                tooltip="Stroke width"
                value={strokeWidth}
                onChange={setStrokeWidth}
                min={0.5}
                max={3}
                step={0.1}
                defaultValue={DEFAULT_VALUES.strokeWidth}
                decimals={1}
                disabled={!hasStroke}
            />

            {/* Section C — Color */}
            <ColorPicker color={color} setColor={setColor} tooltip="Primary color" />
            <ColorPickerSimple
                color={duotoneColor}
                setColor={setSecondaryColor}
                opacity={duotoneOpacity}
                setOpacity={setSecondaryOpacity}
                tooltip="Duotone color"
                disabled={!isDuotone}
            />

            {/* Section D — View */}
            <ViewModeToggle />

            {/* Section D2 — Extended only filter */}
            <Tooltip>
                <TooltipTrigger asChild>
                    <button
                        type="button"
                        aria-pressed={extendedOnly}
                        onClick={() => setExtendedOnly(value => !value)}
                        className={cn(
                            `
                              flex h-10 items-center gap-1.5 rounded-lg px-3
                              text-xs font-medium transition-colors
                              focus-visible:ring-1 focus-visible:ring-ring
                              focus-visible:outline-hidden
                            `,
                            extendedOnly
                                ? `
                                  bg-primary/10 text-foreground ring-1
                                  ring-primary/40
                                `
                                : `
                                  bg-default-200 text-muted-foreground
                                  hover:bg-default-300
                                `
                        )}>
                        <span
                            aria-hidden="true"
                            className={cn(
                                'size-2 rounded-full',
                                extendedOnly ? 'bg-green-500' : 'bg-default-400'
                            )}
                        />
                        Extended
                    </button>
                </TooltipTrigger>
                <TooltipContent>
                    <p>Show only icons added beyond the original 480 Design set</p>
                </TooltipContent>
            </Tooltip>

            {/* Section E — Search (pushed to the right) */}
            <SearchInput
                value={inputValue}
                onChange={handleSearchChange}
                count={filteredCount}
                className="ml-auto"
            />

            {/* Section F — Reset */}
            <Tooltip>
                <TooltipTrigger asChild>
                    <Button
                        onClick={reset}
                        size="icon"
                        colors="accent"
                        className="
                          size-10 rounded-lg border-none! bg-default-200
                          text-foreground
                        "
                        aria-label="Reset filters">
                        <RestartIcon className="size-4 scale-x-[-1]" isolated />
                    </Button>
                </TooltipTrigger>
                <TooltipContent>
                    <p>Reset filters</p>
                </TooltipContent>
            </Tooltip>
        </div>
    )
}

/**
 * Both variants are in the DOM; CSS picks the visible one
 * (`hidden md:flex` for the desktop bar, `md:hidden` for the
 * mobile drawer + trigger). No JS to read the viewport, no flash
 * on the first render, no hydration mismatch — the server and
 * the first client render produce the same markup.
 */
export const FilterBar: React.FC<{ drawerExtras?: React.ReactNode }> = ({ drawerExtras }) => {
    return (
        <>
            <div
                className="
                  z-20 hidden w-full flex-wrap items-center gap-2 rounded-xl
                  border border-border bg-default-50 p-2 shadow-xs
                  md:flex
                  dark:bg-default-100
                ">
                <FilterBarContent />
            </div>

            <div className="md:hidden">
                <Drawer direction="right" modal={true}>
                    <DrawerTrigger asChild>
                        <motion.button
                            initial={{ x: 0 }}
                            whileTap={{ scale: 0.9 }}
                            whileHover={{ x: -10 }}
                            className="
                              fixed top-80 right-[-20px] z-50 h-12 w-20
                              rounded-none rounded-l-full border border-border
                              bg-default-200 p-2 text-foreground/70 shadow-md
                              transition-colors
                              hover:text-foreground
                            ">
                            <SettingsIcon className="size-8" isolated />
                            <span className="sr-only">Open settings</span>
                        </motion.button>
                    </DrawerTrigger>
                    <DrawerContent
                        className="
                          fixed! inset-y-2! right-2! z-50 flex! w-72!
                          overflow-y-auto rounded-xl border border-border
                          bg-default-50/90 p-2 shadow-xs backdrop-blur-sm
                          outline-none!
                          dark:bg-default-100/80
                        "
                        style={
                            { '--initial-transform': 'calc(100% + 8px)' } as React.CSSProperties
                        }>
                        <DrawerHeader>
                            <DrawerTitle>Icon Filters</DrawerTitle>
                        </DrawerHeader>
                        <div className="flex flex-col gap-2">
                            <FilterBarContent />
                            {drawerExtras}
                        </div>
                    </DrawerContent>
                </Drawer>
            </div>
        </>
    )
}
