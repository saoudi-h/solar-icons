'use client'
import { Input } from '@/components/ui/input'
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { Slider } from '@/components/ui/slider'
import { useSolar } from '@solar-icons/react'
import { SettingsIcon } from '@solar-icons/react/linear/settings'
import { ColorPicker } from './ColorPicker'

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
import NumberFlow from '@number-flow/react'
import { CATEGORIES as allCategories, STYLES as styles } from '@solar-icons/core/runtime'
import { DialogIcon } from '@solar-icons/react/dynamic/dialog'
import { MinimalisticMagnifierIcon } from '@solar-icons/react/linear/minimalistic-magnifier'
import { RestartIcon } from '@solar-icons/react/linear/restart'
import { motion } from 'framer-motion'
import { useAtom } from 'jotai'
import { useEffect, useRef, useState } from 'react'
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

    const { color: solarColor, size: solarSize, setColor, setSize } = useSolar()
    const color = solarColor ?? DEFAULT_VALUES.color
    const size = solarSize ?? DEFAULT_VALUES.size

    const onCategoryChange = (categories: Option[]) => {
        setCategories(categories as CategoryOption[])
    }

    const reset = () => {
        setColor(DEFAULT_VALUES.color)
        setSize(DEFAULT_VALUES.size)
        setKeyword('')
        setInputValue('')
        if (debounceRef.current) clearTimeout(debounceRef.current)
        setCategories([])
    }

    return (
        <>
            <div
                className={`
                  flex flex-1 flex-wrap content-start justify-start gap-2
                `}>
                {/* Style selector */}
                <Select value={weight} onValueChange={v => setWeight(v as typeof weight)}>
                    <SelectTrigger
                        className={`
                          h-10 w-48 rounded-lg border-none! bg-default-200
                          shadow-none!
                        `}>
                        <SelectValue placeholder="Select a weight" />
                    </SelectTrigger>
                    <SelectContent>
                        {styles.map(w => (
                            <SelectItem key={w} value={w}>
                                <div
                                    className={`
                                      flex flex-row items-center justify-center
                                      gap-2
                                    `}>
                                    <DialogIcon
                                        className="mr-2 size-6"
                                        weight={w}
                                        size={16}
                                        isolated
                                    />
                                    {w}
                                </div>
                            </SelectItem>
                        ))}
                    </SelectContent>
                </Select>

                {/* Slider size */}
                <div
                    data-vaul-no-drag
                    className={`
                      flex h-10 w-48 items-center rounded-lg bg-default-200 p-4
                    `}>
                    <Slider
                        className=""
                        value={[parseInt(String(size) || '24')]}
                        onValueChange={value => setSize(value[0] || 24)}
                        min={16}
                        max={64}
                        step={1}
                    />
                    <span className="ml-2 text-xs font-light">{size}px</span>
                </div>

                {/* Color picker */}
                <ColorPicker color={color} setColor={setColor} className="
                  h-10 w-48
                " />

                {/* Search bar */}
                <div className="relative flex h-10 w-48">
                    <MinimalisticMagnifierIcon
                        className={`
                          absolute top-1/2 left-2.5 size-4 -translate-y-1/2
                          text-muted-foreground
                        `}
                        isolated
                    />
                    <Input
                        type="search"
                        placeholder="Search..."
                        value={inputValue}
                        onChange={e => handleSearchChange(e.target.value)}
                        className={`
                          h-10 w-full rounded-lg border-0 border-none!
                          bg-default-200 pl-10 text-sm shadow-none
                          placeholder:text-muted-foreground
                        `}
                    />
                </div>

                {/* Reset button */}
                <Button
                    onClick={reset}
                    size="icon"
                    colors="accent"
                    className={`
                      size-10 rounded-lg border-none! bg-default-200
                      text-foreground
                    `}>
                    <RestartIcon className="size-4 scale-x-[-1]" isolated />
                </Button>

                {/* Reset button */}
                <div
                    className={`
                      flex h-10 flex-row items-center justify-center gap-1
                      rounded-lg border-none! bg-default-200 p-1 px-3 text-xs
                      font-bold text-muted-foreground
                    `}>
                    <Tooltip>
                        <TooltipTrigger>
                            <NumberFlow
                                className="text-foreground/70"
                                trend={-1}
                                value={filteredCount}
                                format={{ minimumIntegerDigits: 1 }}
                            />
                        </TooltipTrigger>
                        <TooltipContent>
                            <span className="font-extralight">{filteredCount} icons founded</span>
                        </TooltipContent>
                    </Tooltip>
                </div>
            </div>
            {/* alternative to react Select */}
            <MultipleSelector
                className={`
                  min-h-10 rounded-lg border-none! bg-default-200 shadow-none!
                `}
                placeholder="Select categories"
                options={categoryOptions}
                onChange={onCategoryChange}
                value={categories}></MultipleSelector>
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
