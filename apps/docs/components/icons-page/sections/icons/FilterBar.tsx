'use client'
import { Button } from '@/components/ui/button'
import {
    Drawer,
    DrawerContent,
    DrawerHeader,
    DrawerTitle,
    DrawerTrigger,
} from '@/components/ui/drawer'
import type { Option } from '@/components/ui/multi-selector'
import MultipleSelector from '@/components/ui/multi-selector'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { useScreen } from '@/lib/screens'
import { CATEGORIES as allCategories } from '@solar-icons/core/runtime'
import { useSolar } from '@solar-icons/react'
import { RestartIcon } from '@solar-icons/react/linear/restart'
import { SettingsIcon } from '@solar-icons/react/linear/settings'
import { motion } from 'framer-motion'
import { useAtom } from 'jotai'
import { useEffect, useRef, useState } from 'react'
import { ColorPicker } from './ColorPicker'
import { ColorPickerSimple } from './ColorPickerSimple'
import { Divider } from './Divider'
import { GeometryControl } from './GeometryControl'
import { SearchInput } from './SearchInput'
import { StylePicker } from './StylePicker'
import { ViewModeToggle } from './ViewModeToggle'
import {
    DEFAULT_VALUES,
    filteredCountAtom,
    useSearchCategories,
    useSearchKeyword,
    weightAtom,
} from './context'
import type { CategoryOption } from './utils'

const categoryOptions = allCategories.map(c => ({ value: c, label: c }))

export const FilterBarContent: React.FC = () => {
    const [filteredCount] = useAtom(filteredCountAtom)
    const [keyword, setKeyword] = useSearchKeyword()
    const [categories, setCategories] = useSearchCategories()
    const [weight, setWeight] = useAtom(weightAtom)

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

    const onCategoryChange = (next: Option[]) => {
        setCategories(next as CategoryOption[])
    }

    const reset = () => {
        setColor(DEFAULT_VALUES.color)
        setSize(DEFAULT_VALUES.size)
        setStrokeWidth(DEFAULT_VALUES.strokeWidth)
        setSecondaryColor(DEFAULT_VALUES.secondaryColor)
        setSecondaryOpacity(DEFAULT_VALUES.secondaryOpacity)
        setKeyword('')
        setInputValue('')
        if (debounceRef.current) clearTimeout(debounceRef.current)
        setCategories([])
    }

    return (
        <>
            <div
                className="
                  flex flex-1 flex-wrap content-start items-center justify-start
                  gap-2
                ">
                {/* Section A — Style */}
                <StylePicker value={weight} onChange={setWeight} />

                <Divider />

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
                    max={4}
                    step={0.1}
                    defaultValue={DEFAULT_VALUES.strokeWidth}
                    decimals={1}
                    disabled={!hasStroke}
                />

                <Divider />

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

                <Divider />

                {/* Section D — View */}
                <ViewModeToggle />

                {/* Section E — Search */}
                <SearchInput
                    value={inputValue}
                    onChange={handleSearchChange}
                    count={filteredCount}
                />

                {/* Section E — Reset */}
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
            <MultipleSelector
                className="
                  min-h-10 rounded-lg border-none! bg-default-200 shadow-none!
                "
                placeholder="Select categories"
                options={categoryOptions}
                onChange={onCategoryChange}
                value={categories}
            />
        </>
    )
}

export const FilterBar = () => {
    const isDesktop = useScreen('md')

    if (isDesktop) {
        return (
            <div
                className={`
                  z-20 flex w-full flex-wrap justify-between gap-2 rounded-xl
                  border border-border bg-default-50 p-2 shadow-xs
                  dark:bg-default-100
                `}>
                <FilterBarContent />
            </div>
        )
    }

    return (
        <Drawer direction="right" modal={true}>
            <DrawerTrigger>
                <motion.button
                    initial={{ x: 0 }}
                    whileTap={{ scale: 0.9 }}
                    whileHover={{ x: -10 }}
                    className={`
                      fixed top-80 right-[-20px] z-50 h-12 w-20 rounded-none
                      rounded-l-full border border-border bg-default-200 p-2
                      text-foreground/70 shadow-md transition-colors
                      hover:text-foreground
                    `}>
                    <SettingsIcon className="size-8" isolated />
                </motion.button>
                <span className="sr-only">Open settings</span>
            </DrawerTrigger>
            <DrawerContent
                className={`
                  fixed! inset-y-2! right-2! z-50 flex! w-48! overflow-hidden
                  rounded-xl border border-border bg-default-50/90 p-2 shadow-xs
                  backdrop-blur-sm outline-none!
                  dark:bg-default-100/80
                `}
                style={{ '--initial-transform': 'calc(100% + 8px)' } as React.CSSProperties}>
                <DrawerHeader>
                    <DrawerTitle>Icon Filters</DrawerTitle>
                </DrawerHeader>
                <div className="flex flex-col gap-2">
                    <FilterBarContent />
                </div>
            </DrawerContent>
        </Drawer>
    )
}
