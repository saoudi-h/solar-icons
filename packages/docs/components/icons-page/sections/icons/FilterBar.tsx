'use client'
import { useState } from 'react'
import { Input } from '@/components/ui/input'
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { Slider } from '@/components/ui/slider'
import { ColorPicker } from './ColorPicker'
import { IconWeight, useSolar } from '@solar-icons/react'

import { Restart, MinimalisticMagnifer, Dialog } from '@solar-icons/react/ssr'
import { categories, styles } from '@/core/generated/utils'
import { Button } from '@/components/ui/button'
import { useTheme } from 'next-themes'
import { useScroll } from 'framer-motion'
import { cn } from '@/lib/utils'
import {
    categoriesAtom,
    CategoryOption,
    displayedCountAtom,
    filteredCountAtom,
    keywordAtom,
} from '.'
import { useAtom } from 'jotai'
import MultipleSelector, { Option } from '@/components/ui/multi-selector'
import { useScreenReverse } from '@/lib/screens'
import NumberTicker from '@/components/ui/number-ticker'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'

interface FilterBarProps {
    isDark: boolean
    setIsDark: (isDark: boolean) => void
}

const categoryOptions = categories.map(c => ({ value: c, label: c }))

export const FilterBar: React.FC<FilterBarProps> = ({ isDark, setIsDark }) => {
    const [filteredCount] = useAtom(filteredCountAtom)
    const [displayedCount] = useAtom(displayedCountAtom)
    const [keyword, setKeyword] = useAtom(keywordAtom)
    const [categories, setCategories] = useAtom(categoriesAtom)
    const isMobile = useScreenReverse('sm')

    const [isSticky, setIsSticky] = useState(false)
    const { scrollY } = useScroll()
    const { value, setValue } = useSolar()
    const { resolvedTheme } = useTheme()

    scrollY.on('change', () => {
        if (isMobile) setIsSticky(false)
        else setIsSticky(scrollY.get() > 56)
    })

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
        setValue({
            color: resolvedTheme === 'dark' ? '#ffffff' : '#000000',
            size: 24,
            weight: 'Linear',
        })
    }

    return (
        <div
            className={cn(
                isSticky
                    ? 'sticky bg-default-300/50 top-14 backdrop-blur-md shadow-sm rounded-none'
                    : 'bg-default-200 dark:bg-zinc-950 rounded-xl',
                'flex flex-wrap justify-between gap-2 p-2 w-full shadow-sm z-20'
            )}>
            <div className="flex justify-start content-start flex-wrap flex-1 gap-2">
                {/* Style selector */}
                <Select value={value.weight || 'Linear'} onValueChange={setWeight}>
                    <SelectTrigger className="w-48 bg-default-100 h-10 rounded-lg !border-none !shadow-none">
                        <SelectValue placeholder="Select a weight" />
                    </SelectTrigger>
                    <SelectContent>
                        {styles.map(weight => (
                            <SelectItem key={weight} value={weight}>
                                <div className="flex flex-row gap-2 items-center justify-center">
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

                {/* Slider pour la taille */}
                <div className="flex items-center w-48 bg-default-100 h-10 rounded-lg p-4">
                    <Slider
                        className=""
                        value={[parseInt((value.size || 24) + '')]}
                        onValueChange={value => setSize(value[0] || 24)}
                        min={16}
                        max={64}
                        step={1}
                    />
                    <span className="ml-2 text-xs fon-light">{value.size}px</span>
                </div>

                {/* Color picker */}
                <ColorPicker
                    color={value.color || '#000000'}
                    setColor={setColor}
                    isDark={isDark}
                    setIsDark={setIsDark}
                    className="w-48 h-10"
                />

                {/* Search bar */}
                <div className="flex w-48 h-10 relative">
                    <MinimalisticMagnifer className="h-4 w-4 absolute left-2.5 top-1/2 -translate-y-1/2 text-muted-foreground" />
                    <Input
                        type="search"
                        placeholder="Search..."
                        value={keyword}
                        onChange={e => setKeyword(e.target.value)}
                        className="w-full border-0 h-10 bg-default-100 rounded-lg !border-none shadow-none placeholder:text-muted-foreground text-sm pl-10 focus-visible:ring-none focus-visible:ring-0"
                    />
                </div>

                {/* Reset button */}
                <Button
                    onClick={reset}
                    size="icon"
                    colors="accent"
                    className="size-10 rounded-lg !border-none bg-default-100 text-foreground">
                    <Restart className="w-4 h-4" mirrored />
                </Button>

                {/* Reset button */}
                <div className="h-10 rounded-lg !border-none bg-default-100 text-muted-foreground flex flex-row gap-1 items-center justify-center p-1 text-xs font-bold">
                    <div className=" bg-default-200 border-border rounded-md py-1 h-full flex items-center justify-center px-2">
                        <Tooltip>
                            <TooltipTrigger>
                                <NumberTicker value={displayedCount} />
                            </TooltipTrigger>
                            <TooltipContent>
                                <span className="font-extralight">
                                    {displayedCount} icons displayed
                                </span>
                            </TooltipContent>
                        </Tooltip>
                    </div>
                    <div className=" bg-default-200 border-border rounded-md py-1 h-full flex items-center justify-center px-2">
                        <Tooltip>
                            <TooltipTrigger>
                                <NumberTicker value={filteredCount} />
                            </TooltipTrigger>
                            <TooltipContent>
                                <span className="font-extralight">
                                    {filteredCount} icons founded
                                </span>
                            </TooltipContent>
                        </Tooltip>
                    </div>
                </div>
            </div>
            {/* alternative to react Select */}
            <MultipleSelector
                className="bg-default-100 min-h-10 rounded-lg !border-none !shadow-none"
                placeholder="Select categories"
                options={categoryOptions}
                onChange={onCategoryChange}
                value={categories}></MultipleSelector>
        </div>
    )
}
