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
import { ColorPicker } from './ColorPicker'
import { IconWeight, useSolar } from '@solar-icons/react'

import { Restart, MinimalisticMagnifer, Dialog } from '@solar-icons/react/ssr'
import { categories, styles } from '@/core/generated/utils'
import { Button } from '@/components/ui/button'
import { useTheme } from 'next-themes'
import { useAtom } from 'jotai'
import MultipleSelector, { Option } from '@/components/ui/multi-selector'
import NumberTicker from '@/components/ui/number-ticker'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { categoriesAtom, filteredCountAtom, keywordAtom } from './context'
import { CategoryOption } from './utils'

const categoryOptions = categories.map(c => ({ value: c, label: c }))

export const FilterBar: React.FC = () => {
    const [filteredCount] = useAtom(filteredCountAtom)
    const [keyword, setKeyword] = useAtom(keywordAtom)
    const [categories, setCategories] = useAtom(categoriesAtom)

    const { value, setValue } = useSolar()
    const { resolvedTheme } = useTheme()

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
        setKeyword('')
        setCategories([])
    }

    return (
        <div className="bg-default-300/50 rounded-xl flex flex-wrap justify-between gap-2 p-2 w-full shadow-sm z-20">
            <div className="flex content-start justify-start flex-wrap flex-1 gap-2">
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
                <div className="h-10 rounded-lg !border-none bg-default-100 text-muted-foreground flex flex-row gap-1 items-center justify-center p-1 text-xs font-bold px-3">
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
                className="bg-default-100 min-h-10 rounded-lg !border-none !shadow-none"
                placeholder="Select categories"
                options={categoryOptions}
                onChange={onCategoryChange}
                value={categories}></MultipleSelector>
        </div>
    )
}
