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
import type { IconWeight } from '@solar-icons/react-reactive'
import { Settings, useSolar } from '@solar-icons/react-reactive'
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
import { CATEGORIES as allCategories, STYLES as styles } from '@solar-icons/core'
import { Dialog, MinimalisticMagnifier, Restart } from '@solar-icons/react-reactive/ssr'
import { motion } from 'framer-motion'
import { useAtom } from 'jotai'
import { useEffect, useRef, useState } from 'react'
import { DEFAULT_VALUES, filteredCountAtom, useSearchCategories, useSearchKeyword } from './context'
import type { CategoryOption } from './utils'

const categoryOptions = allCategories.map(c => ({ value: c, label: c }))

export const FilterBarContent: React.FC = () => {
    const [filteredCount] = useAtom(filteredCountAtom)
    const [keyword, setKeyword] = useSearchKeyword()
    const [categories, setCategories] = useSearchCategories()

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

    const { value, setValue } = useSolar()

    const setWeight = (weight: IconWeight) => {
        setValue({
            ...value,
            weight,
        })
    }

    const setColor = (color: string) => {
        setValue({
            ...value,
            color,
        })
    }

    const setSize = (size: number) => {
        setValue({
            ...value,
            size,
        })
    }

    const onCategoryChange = (categories: Option[]) => {
        setCategories(categories as CategoryOption[])
    }

    const reset = () => {
        setValue(DEFAULT_VALUES)
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
                <Select value={value.weight || 'Linear'} onValueChange={setWeight}>
                    <SelectTrigger
                        className={`
                          h-10 w-48 rounded-lg border-none! bg-default-200
                          shadow-none!
                        `}>
                        <SelectValue placeholder="Select a weight" />
                    </SelectTrigger>
                    <SelectContent>
                        {styles.map(weight => (
                            <SelectItem key={weight} value={weight}>
                                <div
                                    className={`
                                      flex flex-row items-center justify-center
                                      gap-2
                                    `}>
                                    <Dialog
                                        className="mr-2 size-6"
                                        weight={weight}
                                        size={16}
                                        color={value.color || '#000000'}
                                    />
                                    {weight}
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
                        value={[parseInt((value.size || 24) + '')]}
                        onValueChange={value => setSize(value[0] || 24)}
                        min={16}
                        max={64}
                        step={1}
                    />
                    <span className="ml-2 text-xs font-light">{value.size}px</span>
                </div>

                {/* Color picker */}
                <ColorPicker
                    color={value.color || '#000000'}
                    setColor={setColor}
                    className="h-10 w-48"
                />

                {/* Search bar */}
                <div className="relative flex h-10 w-48">
                    <MinimalisticMagnifier
                        className={`
                          absolute top-1/2 left-2.5 size-4 -translate-y-1/2
                          text-muted-foreground
                        `}
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
                    <Restart className="size-4" mirrored />
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
                    <Settings className="size-8" weight="Linear" color="" />
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
