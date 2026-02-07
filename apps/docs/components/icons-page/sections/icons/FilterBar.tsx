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
import type { IconWeight } from '@solar-icons/react'
import { Settings, useSolar } from '@solar-icons/react'
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
import NumberTicker from '@/components/ui/number-ticker'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { categories, styles } from '@/core/generated/utils'
import { useScreen } from '@/lib/screens'
import { Dialog, MinimalisticMagnifer, Restart } from '@solar-icons/react/ssr'
import { motion } from 'framer-motion'
import { useAtom } from 'jotai'
import { DEFAULT_VALUES, categoriesAtom, filteredCountAtom, keywordAtom } from './context'
import type { CategoryOption } from './utils'

const categoryOptions = categories.map(c => ({ value: c, label: c }))

export const FilterBarContent: React.FC = () => {
    const [filteredCount] = useAtom(filteredCountAtom)
    const [keyword, setKeyword] = useAtom(keywordAtom)
    const [categories, setCategories] = useAtom(categoriesAtom)

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
                          bg-default-200 h-10 w-48 rounded-lg border-none!
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
                      bg-default-200 flex h-10 w-48 items-center rounded-lg p-4
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
                    <MinimalisticMagnifer
                        className={`
                          text-muted-foreground absolute top-1/2 left-2.5 h-4
                          w-4 -translate-y-1/2
                        `}
                    />
                    <Input
                        type="search"
                        placeholder="Search..."
                        value={keyword}
                        onChange={e => setKeyword(e.target.value)}
                        className={`
                          bg-default-200 h-10 w-full rounded-lg border-0
                          border-none! pl-10 text-sm shadow-none
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
                      bg-default-200 text-foreground size-10 rounded-lg
                      border-none!
                    `}>
                    <Restart className="h-4 w-4" mirrored />
                </Button>

                {/* Reset button */}
                <div
                    className={`
                      bg-default-200 text-muted-foreground flex h-10 flex-row
                      items-center justify-center gap-1 rounded-lg border-none!
                      p-1 px-3 text-xs font-bold
                    `}>
                    <Tooltip>
                        <TooltipTrigger>
                            <NumberTicker value={filteredCount} />
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
                  bg-default-200 min-h-10 rounded-lg border-none! shadow-none!
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
                  border-border bg-default-50 z-20 flex w-full flex-wrap
                  justify-between gap-2 rounded-xl border p-2 shadow-xs
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
                      border-border bg-default-200 text-foreground/70 fixed
                      top-80 right-[-20px] z-50 h-12 w-20 rounded-none
                      rounded-l-full border p-2 shadow-md transition-colors
                      hover:text-foreground
                    `}>
                    <Settings className="size-8" weight="Linear" color="" />
                </motion.button>
                <span className="sr-only">Open settings</span>
            </DrawerTrigger>
            <DrawerContent
                className={`
                  border-border bg-default-50/90 !fixed !top-2 !right-2
                  !bottom-2 z-50 !flex !w-48 overflow-hidden rounded-xl border
                  p-2 shadow-xs backdrop-blur-sm !outline-none
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
