'use client'
import { useState } from 'react'

import { useMediaQuery } from '~/hooks/use-media-query'
import { cn } from '~/lib/utils'

import { CategoryNav } from './CategoryNav'
import { ShowcaseProvider } from './context'
import { FilterBar } from './FilterBar'
import { IconDetail } from './icon-detail'
import { IconGridVirtualized, INITIAL_GRID_HEIGHT } from './IconGrid'

/**
 * Three zones, each with one job: the bar finds and tunes, the grid shows,
 * the details hand the icon over.
 *
 * The grid measures the height left under the bar and reports it; the row
 * (categories, grid, details) takes exactly that height, so each of the
 * three scrolls on its own and the page itself never does. From `lg` the
 * details are a column beside the grid. Below, they are a sheet under it
 * and the grid gives up the sheet's height instead.
 */
export const IconShowcase: React.FC<{ className?: string }> = ({ className }) => {
    // Match the grid during SSR so the category list cannot stretch the row.
    const [gridHeight, setGridHeight] = useState(INITIAL_GRID_HEIGHT)
    const [sheetHeight, setSheetHeight] = useState(0)
    // Same unit as the `lg` breakpoint, so CSS and layout switch together.
    const hasRoomForColumn = useMediaQuery('(min-width: 64rem)')

    return (
        <ShowcaseProvider>
            <section
                className={cn(
                    'relative flex size-full flex-1 flex-col gap-3 p-3 md:p-4',
                    className
                )}>
                <FilterBar
                    drawerExtras={
                        <>
                            <div
                                className="
                                  mt-3 mb-1 px-1 text-[11px] font-semibold tracking-widest
                                  text-muted-foreground uppercase
                                ">
                                Categories
                            </div>
                            <CategoryNav />
                        </>
                    }
                />
                <div
                    className="flex min-h-0 gap-3"
                    style={{ height: gridHeight > 0 ? `${gridHeight}px` : undefined }}>
                    <aside
                        aria-label="Categories navigation"
                        className="hidden w-44 shrink-0 overflow-y-auto md:block">
                        <CategoryNav />
                    </aside>
                    <div className="min-w-0 flex-1">
                        <IconGridVirtualized
                            onHeightChange={setGridHeight}
                            detailHeight={hasRoomForColumn ? 0 : sheetHeight}
                        />
                    </div>
                    {hasRoomForColumn && <IconDetail placement="side" />}
                </div>
                {!hasRoomForColumn && (
                    <IconDetail placement="sheet" onHeightChange={setSheetHeight} />
                )}
            </section>
        </ShowcaseProvider>
    )
}

export default IconShowcase
