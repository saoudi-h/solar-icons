'use client'
import { useSolar } from '@solar-icons/react/lib/SolarProvider'
import { RestartIcon } from '@solar-icons/react/linear/restart'
import { Tuning2Icon } from '@solar-icons/react/linear/tuning-2'
import { useAtom, useSetAtom } from 'jotai'
import { useEffect, useRef, useState } from 'react'

import {
    Drawer,
    DrawerContent,
    DrawerHeader,
    DrawerTitle,
    DrawerTrigger,
} from '~/components/ui/drawer'
import { Popover, PopoverContent, PopoverTrigger } from '~/components/ui/popover'
import { Tooltip, TooltipContent, TooltipTrigger } from '~/components/ui/tooltip'
import { cn } from '~/lib/utils'

import { ColorSwatch } from './ColorSwatch'
import {
    activeCategoryAtom,
    DEFAULT_VALUES,
    filteredCountAtom,
    useOriginFilter,
    useSearchKeyword,
    useShowcaseReady,
    useStyleURL,
    useThemeDefaultColors,
} from './context'
import { GeometryControl } from './GeometryControl'
import { SearchInput } from './SearchInput'
import { StylePicker } from './StylePicker'
import { CONTROL_FOCUS, CONTROL_SURFACE, PANEL_SURFACE } from './surface'
import { ViewModeToggle } from './ViewModeToggle'

const ICON_BUTTON = cn(
    `
      flex size-10 shrink-0 items-center justify-center rounded-lg text-muted-foreground
      transition-colors
      hover:text-foreground
    `,
    CONTROL_SURFACE,
    CONTROL_FOCUS
)

/** Size, stroke, colours and duotone opacity of every icon on the page. */
const AppearanceControls: React.FC<{ className?: string; stretch?: boolean }> = ({
    className,
    stretch = false,
}) => {
    const [weight] = useStyleURL()
    const themeDefaults = useThemeDefaultColors()
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
    const color = solarColor ?? themeDefaults.color
    const size = Number(solarSize ?? DEFAULT_VALUES.size)
    const strokeWidth = Number(solarStrokeWidth ?? DEFAULT_VALUES.strokeWidth)
    const duotoneColor = secondaryColor ?? themeDefaults.secondaryColor
    const duotoneOpacity = Number(secondaryOpacity ?? DEFAULT_VALUES.secondaryOpacity)

    const isDuotone = weight.includes('Duotone')
    const hasStroke = weight === 'Linear' || weight === 'Broken' || weight === 'LineDuotone'
    // In a narrow column the sliders share the rows instead of keeping a fixed width.
    const slider = stretch ? 'min-w-0 flex-1 basis-[calc(50%-0.375rem)]' : undefined

    return (
        <div className={cn('flex items-center gap-1.5', stretch && 'flex-wrap', className)}>
            <GeometryControl
                label="Size"
                tooltip="Icon size, also the density of the grid"
                value={size}
                onChange={setSize}
                min={16}
                max={64}
                step={1}
                defaultValue={DEFAULT_VALUES.size}
                className={slider}
            />
            <GeometryControl
                label="Stroke"
                tooltip="Stroke width (line styles)"
                value={strokeWidth}
                onChange={setStrokeWidth}
                min={0.5}
                max={3}
                step={0.1}
                defaultValue={DEFAULT_VALUES.strokeWidth}
                decimals={1}
                unit=""
                disabled={!hasStroke}
                className={slider}
            />
            <ColorSwatch label="Primary color" color={color} setColor={setColor} />
            <ColorSwatch
                label="Duotone color"
                color={duotoneColor}
                setColor={setSecondaryColor}
                disabled={!isDuotone}
            />
            <GeometryControl
                label="Opacity"
                tooltip="Opacity of the duotone shape"
                value={duotoneOpacity}
                onChange={setSecondaryOpacity}
                min={0}
                max={1}
                step={0.05}
                defaultValue={DEFAULT_VALUES.secondaryOpacity}
                decimals={2}
                unit=""
                disabled={!isDuotone}
                className={slider}
            />
        </div>
    )
}

/**
 * One row, in the order of the task: find an icon, pick its style, tune its
 * appearance, choose how the grid is laid out.
 *
 * The same row serves every width. Controls that do not fit move behind one
 * button: a popover from `md`, the drawer below, where the categories join
 * them. Search never leaves the bar.
 */
export const FilterBar: React.FC<{ drawerExtras?: React.ReactNode }> = ({ drawerExtras }) => {
    const ready = useShowcaseReady()
    const [filteredCount] = useAtom(filteredCountAtom)
    const [keyword, setKeyword] = useSearchKeyword()
    const [, setOrigin] = useOriginFilter()
    const [weight, setWeight] = useStyleURL()
    const setActiveCategory = useSetAtom(activeCategoryAtom)
    const themeDefaults = useThemeDefaultColors()
    const { setColor, setSize, setSecondaryColor, setSecondaryOpacity, setStrokeWidth } = useSolar()

    const [inputValue, setInputValue] = useState(keyword)
    const debounceRef = useRef<ReturnType<typeof setTimeout> | null>(null)

    useEffect(() => {
        setInputValue(keyword)
    }, [keyword])

    const handleSearchChange = (value: string) => {
        setInputValue(value)
        if (debounceRef.current) clearTimeout(debounceRef.current)
        debounceRef.current = setTimeout(() => {
            setKeyword(value)
        }, 100)
    }

    useEffect(() => {
        return () => {
            if (debounceRef.current) clearTimeout(debounceRef.current)
        }
    }, [])

    const reset = () => {
        // Reset to the current theme's curated defaults (known values, so
        // a later theme toggle re-applies the other theme's set).
        setColor(themeDefaults.color)
        setSize(DEFAULT_VALUES.size)
        setStrokeWidth(DEFAULT_VALUES.strokeWidth)
        setSecondaryColor(themeDefaults.secondaryColor)
        setSecondaryOpacity(DEFAULT_VALUES.secondaryOpacity)
        setKeyword('')
        setOrigin('all')
        setInputValue('')
        setActiveCategory(null)
        if (debounceRef.current) clearTimeout(debounceRef.current)
    }

    const resetButton = (
        <Tooltip>
            <TooltipTrigger asChild>
                <button
                    type="button"
                    onClick={reset}
                    aria-label="Reset filters"
                    data-vaul-no-drag
                    className={ICON_BUTTON}>
                    <RestartIcon className="size-4 scale-x-[-1]" isolated />
                </button>
            </TooltipTrigger>
            <TooltipContent>
                <p>Reset search and appearance</p>
            </TooltipContent>
        </Tooltip>
    )

    return (
        <div
            className={cn(
                'z-20 flex w-full items-center gap-1.5 rounded-2xl p-1.5',
                PANEL_SURFACE
            )}>
            <SearchInput
                disabled={!ready}
                value={inputValue}
                onChange={handleSearchChange}
                count={filteredCount}
                className="flex-1"
            />

            <StylePicker value={weight} onChange={setWeight} className="max-md:hidden" />

            <AppearanceControls className="max-xl:hidden" />

            {/* md to xl: the appearance controls behind one button. */}
            <Popover>
                <Tooltip>
                    <TooltipTrigger asChild>
                        <PopoverTrigger asChild>
                            <button
                                type="button"
                                aria-label="Appearance"
                                className={cn(ICON_BUTTON, 'max-md:hidden xl:hidden')}>
                                <Tuning2Icon className="size-4" isolated />
                            </button>
                        </PopoverTrigger>
                    </TooltipTrigger>
                    <TooltipContent>
                        <p>Size, stroke and colors</p>
                    </TooltipContent>
                </Tooltip>
                <PopoverContent
                    align="end"
                    sideOffset={10}
                    onOpenAutoFocus={event => event.preventDefault()}
                    className="
                      w-auto rounded-xl border-none bg-popover p-2 shadow-lg ring-1
                      ring-foreground/10
                    ">
                    <AppearanceControls />
                </PopoverContent>
            </Popover>

            <ViewModeToggle className="max-md:hidden" />
            <div className="max-md:hidden">{resetButton}</div>

            {/* Below md: every control and the categories in one drawer. */}
            <Drawer direction="right" modal={true}>
                <DrawerTrigger asChild>
                    <button
                        type="button"
                        aria-label="Filters and appearance"
                        className={cn(ICON_BUTTON, 'md:hidden')}>
                        <Tuning2Icon className="size-4" isolated />
                    </button>
                </DrawerTrigger>
                {/* The panel floats below the site header pill (top-20 = 72px
                    reserved header + 8px gap), with overlay and content above
                    the header (z-60) so the two never overlap. */}
                <DrawerContent
                    overlayClassName="z-70!"
                    className={cn(
                        `
                          fixed! top-20! right-2! bottom-2! z-80! flex! w-76! overflow-y-auto
                          rounded-2xl border-none! p-3 outline-none!
                        `,
                        PANEL_SURFACE
                    )}
                    style={{ '--initial-transform': 'calc(100% + 8px)' } as React.CSSProperties}>
                    <DrawerHeader className="px-1 pt-1 pb-3">
                        <DrawerTitle>Filters and appearance</DrawerTitle>
                    </DrawerHeader>
                    <div className="flex flex-col gap-2">
                        <StylePicker
                            value={weight}
                            onChange={setWeight}
                            className="justify-between"
                        />
                        <AppearanceControls stretch />
                        <div className="flex items-center gap-1.5">
                            <ViewModeToggle />
                            {resetButton}
                        </div>
                        {drawerExtras}
                    </div>
                </DrawerContent>
            </Drawer>
        </div>
    )
}
