'use client'
import { Dispatch, SetStateAction, useState } from 'react'
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
import { Restart } from '@solar-icons/react/ssr'
import { styles } from '@/core/generated/utils'
import { Button } from '@/components/ui/button'
import { useTheme } from 'next-themes'
import { useScroll } from 'framer-motion'
import { cn } from '@/lib/utils'
import CategorySelector from './CategorySelector'
import { keywordAtom } from '.'
import { useAtom } from 'jotai'

interface FilterBarProps {
    isDark: boolean
    setIsDark: (isDark: boolean) => void
}

export const FilterBar: React.FC<FilterBarProps> = ({ isDark, setIsDark }) => {
    const [keyword, setKeyword] = useAtom(keywordAtom)
    const [isSticky, setIsSticky] = useState(false)
    const { scrollY } = useScroll()
    const { value, setValue } = useSolar()
    const { resolvedTheme } = useTheme()

    scrollY.on('change', () => {
        setIsSticky(scrollY.get() > 56)
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

    const reset = () => {
        setValue({
            color: resolvedTheme === 'dark' ? '#ffffff' : '#000000',
            size: 24,
            weight: 'Linear',
        })
    }

    return (
        <>
            <div
                className={cn(
                    isSticky
                        ? 'sticky bg-background/70 top-14 backdrop-blur-md shadow-sm border-border rounded-none'
                        : 'bg-background rounded-xl',
                    'flex flex-wrap items-center gap-2  p-2  w-full border-border shadow-sm z-20'
                )}>
                <ColorPicker
                    color={value.color || '#000000'}
                    setColor={setColor}
                    isDark={isDark}
                    setIsDark={setIsDark}
                />

                {/* Slider pour la taille */}
                <div className="flex items-center w-48 bg-accent/30 h-10 rounded-lg p-4">
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

                {/* Style selector */}
                <Select value={value.weight || 'Linear'} onValueChange={setWeight}>
                    <SelectTrigger className="w-36 bg-accent/30 h-10 rounded-lg !border-none">
                        <SelectValue placeholder="Select a weight" />
                    </SelectTrigger>
                    <SelectContent>
                        {styles.map(weight => (
                            <SelectItem key={weight} value={weight}>
                                {weight}
                            </SelectItem>
                        ))}
                    </SelectContent>
                </Select>

                {/* Category selector */}
                <CategorySelector />

                {/* Search bar */}
                <Input
                    type="text"
                    placeholder="Search..."
                    value={keyword}
                    onChange={e => setKeyword(e.target.value)}
                    className="w-full max-w-sm h-10 bg-accent/30 rounded-lg !border-none"
                />

                {/* Reset button */}
                <Button
                    onClick={reset}
                    size="icon"
                    colors="accent"
                    className="size-10 rounded-lg !border-none bg-accent/30 text-foreground">
                    <Restart className="w-4 h-4" mirrored />
                </Button>
            </div>
        </>
    )
}
