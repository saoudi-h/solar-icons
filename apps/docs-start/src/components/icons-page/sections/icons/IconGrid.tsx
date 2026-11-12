'use client'
import { CATEGORIES } from '@solar-icons/core/runtime'
import { useSolar } from '@solar-icons/react/lib/SolarProvider'
import { useAtom, useAtomValue, useSetAtom } from 'jotai'
import React, {
    useCallback,
    useEffect,
    useMemo,
    useRef,
    useState,
    type HTMLAttributes,
} from 'react'
import type {
    GridImperativeAPI,
    GridProps,
    ListImperativeAPI,
    ListProps,
    RowRendererParams,
} from 'react-virtualized'
import { Grid, List } from 'react-virtualized'
import type { IconData } from '~generated/descriptions'

import { Button } from '~/components/ui/button'
import { Link } from '~/components/ui/link'
import { projectLinks } from '~/lib/project-links'
import { cn } from '~/lib/utils'

import {
    activeCategoryAtom,
    categoryNavigationAtom,
    DEFAULT_VALUES,
    displayedIconsAtom,
    filteredIconsAtom,
    useCategoryURL,
    useOriginFilter,
    useSearchKeyword,
    useSelectedIcon,
    getCellSize,
    GRID_NAME_HEIGHT,
    useShowcaseReady,
    useShowNamesURL,
    useViewModeURL,
} from './context'
import { IconCard } from './IconCard'
import { searchIcons } from './utils'

export const INITIAL_GRID_HEIGHT = 1024

const MIN_GRID_HEIGHT = 120
const SCROLLER_PROPS: HTMLAttributes<HTMLDivElement> & { 'data-icon-scroller': boolean } = {
    'data-icon-scroller': true,
}
const SECTION_HEADER = 48
const GAP = 8
// The `gap-3` between the grid row and the sheet under it.
const ROW_TO_SHEET_GAP = 12

type GridRow =
    | { kind: 'header'; category: string; count: number }
    | { kind: 'icons'; category: string; icons: IconData[] }

interface IconGridVirtualizedProps {
    /** Called with the grid height whenever it is measured again. */
    onHeightChange?: (height: number) => void
    /** Height of the details sheet under the grid; 0 without a sheet. */
    detailHeight?: number
}

export const IconGridVirtualized: React.FC<IconGridVirtualizedProps> = ({
    onHeightChange,
    detailHeight = 0,
}) => {
    const gridRef = useRef<GridImperativeAPI>(null)
    const listRef = useRef<ListImperativeAPI>(null)
    const wrapperRef = useRef<HTMLDivElement>(null)
    const [keyword] = useSearchKeyword()
    const [origin] = useOriginFilter()
    const [, setDisplayedIcons] = useAtom<IconData[]>(displayedIconsAtom)
    const setFilteredIcons = useSetAtom(filteredIconsAtom)
    const filteredIcons = useMemo(
        () => searchIcons({ keyword, categories: [], origin }),
        [keyword, origin]
    )
    const [viewMode, setViewMode] = useViewModeURL()
    const [urlCategory] = useCategoryURL()
    const activeCategory = useAtomValue(activeCategoryAtom)
    const categoryNavigation = useAtomValue(categoryNavigationAtom)
    const selectedIcon = useSelectedIcon()
    const ready = useShowcaseReady()
    const setActiveCategory = useSetAtom(activeCategoryAtom)
    // A viewport-like height on the server, refined by `measure` on mount.
    const [width, setWidth] = useState(1024)
    const [height, setHeight] = useState(INITIAL_GRID_HEIGHT)

    // Read by the resize listener without re-subscribing it.
    const detailHeightRef = useRef(detailHeight)
    useEffect(() => {
        detailHeightRef.current = detailHeight
    }, [detailHeight])

    useEffect(() => {
        setFilteredIcons(filteredIcons)
        setDisplayedIcons(filteredIcons)
    }, [filteredIcons, setFilteredIcons, setDisplayedIcons])

    // The single source of truth for the grid's height: what is left of the
    // viewport under the grid, minus the paddings of the frame around it and
    // the sheet when one is open. Called on mount, on resize and when the
    // sheet changes height.
    const measure = useCallback(() => {
        const el = wrapperRef.current
        if (!el) return
        const rect = el.getBoundingClientRect()
        setWidth(el.offsetWidth)
        const paddingBelow = ['section', 'main'].reduce((total, selector) => {
            const ancestor = el.closest(selector)
            return total + (ancestor ? parseFloat(getComputedStyle(ancestor).paddingBottom) : 0)
        }, 0)
        const sheet = detailHeightRef.current
        const h =
            window.innerHeight - rect.top - paddingBelow - (sheet ? sheet + ROW_TO_SHEET_GAP : 0)
        const nextHeight = Math.max(MIN_GRID_HEIGHT, Math.floor(h))
        setHeight(nextHeight)
        onHeightChange?.(nextHeight)
    }, [onHeightChange])

    useEffect(() => {
        measure()
        const observer = new ResizeObserver(measure)
        if (wrapperRef.current) observer.observe(wrapperRef.current)
        window.addEventListener('resize', measure)
        return () => {
            observer.disconnect()
            window.removeEventListener('resize', measure)
        }
    }, [measure])

    // Re-measure on the next frame, once the sheet's new height is laid out.
    useEffect(() => {
        const rafId = requestAnimationFrame(measure)
        return () => cancelAnimationFrame(rafId)
    }, [detailHeight, measure])

    // The cell follows the icon size. Columns share the full width, so the
    // grid never leaves a ragged gutter on the right.
    const { size: solarSize } = useSolar()
    const [showNames] = useShowNamesURL()
    // Names need room to stay readable, so a named cell is also wider.
    const baseCell =
        getCellSize(Number(solarSize ?? DEFAULT_VALUES.size)) + (showNames ? GRID_NAME_HEIGHT : 0)
    const columnCount = Math.max(1, Math.floor(width / baseCell))
    const cellWidth = Math.floor(width / columnCount)
    const cellHeight = baseCell

    const rows = useMemo<GridRow[]>(() => {
        if (viewMode !== 'grouped') return []
        const byCategory = new Map<string, IconData[]>()
        for (const icon of filteredIcons) {
            const list = byCategory.get(icon.category)
            if (list) list.push(icon)
            else byCategory.set(icon.category, [icon])
        }
        const out: GridRow[] = []
        for (const category of CATEGORIES as string[]) {
            const icons = byCategory.get(category)
            if (!icons || icons.length === 0) continue
            out.push({ kind: 'header', category, count: icons.length })
            for (let i = 0; i < icons.length; i += columnCount) {
                out.push({
                    kind: 'icons',
                    category,
                    icons: icons.slice(i, i + columnCount),
                })
            }
        }
        return out
    }, [filteredIcons, columnCount, viewMode])

    const categoryToRowIndex = useMemo(() => {
        const map = new Map<string, number>()
        rows.forEach((row, index) => {
            if (row.kind === 'header') map.set(row.category, index)
        })
        return map
    }, [rows])

    const rowPositions = useMemo(() => {
        const positions: number[] = []
        let acc = 0
        for (const row of rows) {
            positions.push(acc)
            acc += row.kind === 'header' ? SECTION_HEADER : cellHeight
        }
        return positions
    }, [rows, cellHeight])

    // Capture the icon that was in the URL on first render (the
    // 'shared link' case). The scroll-to-icon useEffect below only
    // triggers when the *current* selected icon matches this
    // initial value — meaning the user opened a link to that
    // specific icon, not that they clicked it themselves (in which
    // case it's already on screen). `useState` with an initializer
    // runs exactly once on the first render and never updates.
    const [initialIconName, setInitialIconName] = useState<string | null>(null)
    const initialSelectionCaptured = useRef(false)
    useEffect(() => {
        if (!ready || initialSelectionCaptured.current) return
        initialSelectionCaptured.current = true
        setInitialIconName(selectedIcon?.fullName ?? null)
    }, [ready, selectedIcon])
    const hasMountedRef = useRef(false)

    // Deep link (`?category=arrows`): the targeted category becomes the
    // active one and the grid opens in grouped mode, the only mode
    // where a category is a section. The effect re-runs only when the
    // URL category changes, so switching the view mode afterwards is
    // not overridden.
    const lastUrlCategoryRef = useRef<string | null>(null)
    // Set while a deep-link scroll is still owed to the visitor. The
    // reset-to-top effect reads it before scheduling its own scroll, so
    // the deep link is not undone by the first layout pass.
    const pendingCategoryRef = useRef<string | null>(null)

    useEffect(() => {
        if (urlCategory === lastUrlCategoryRef.current) return
        lastUrlCategoryRef.current = urlCategory
        if (!urlCategory) return
        pendingCategoryRef.current = urlCategory
        setActiveCategory(urlCategory)
        setViewMode('grouped')
    }, [urlCategory, setActiveCategory, setViewMode])

    useEffect(() => {
        if (viewMode !== 'grouped') return
        if (!selectedIcon) return
        // Only scroll when the current icon is the same as the
        // initial one (i.e. the page was opened with that icon in
        // the URL). User clicks on other icons won't trigger a
        // scroll — they're already looking at them.
        if (selectedIcon.fullName !== initialIconName) return
        setActiveCategory(selectedIcon.category)
    }, [selectedIcon, setActiveCategory, viewMode, initialIconName])

    useEffect(() => {
        if (viewMode !== 'grouped') return
        if (!activeCategory) return
        const idx = categoryToRowIndex.get(activeCategory)
        if (idx === undefined) return
        const scrollTop = rowPositions[idx] ?? 0

        // Defer to the next frame so the List has finished its first
        // render with the correct row positions before we scroll. The
        // `scrollToRow` helper is unreliable on first mount: it computes
        // the scroll position from internal state that may be stale or
        // wrong. `scrollToPosition` with our manually-computed cumulative
        // positions always lands the header at the very top.
        const rafId = requestAnimationFrame(() => {
            listRef.current?.scrollToPosition({ scrollTop })
            pendingCategoryRef.current = null
        })
        return () => cancelAnimationFrame(rafId)
    }, [activeCategory, categoryNavigation, categoryToRowIndex, rowPositions, viewMode])

    useEffect(() => {
        if (viewMode === 'grouped') {
            // The `List` from `react-virtualized` caches row heights and
            // rendered cells. When `filteredIcons` changes (e.g. after a
            // search-then-Reset sequence), the `rows` array is recomputed
            // but the `List`'s internal positions are stale — it
            // re-renders the new row content at the OLD positions, which
            // is why icons appear to overlap after a Reset. Forcing a
            // `recomputeRowHeights()` invalidates the height cache and
            // makes the next render use the new positions. Deferred to
            // the next frame so the `rows` memo has been applied first.
            //
            // Skip on the initial mount: the scroll-to-icon useEffect
            // already handles the initial scroll (to the icon's
            // section). Otherwise we'd briefly flash to position 0
            // before scrolling to the section.
            if (!hasMountedRef.current) {
                hasMountedRef.current = true
                return
            }
            // Read the pending deep link before scheduling the scroll: a
            // deep link that lands on a category must not be undone by
            // the reset-to-top pass below.
            const keepCategoryPosition = pendingCategoryRef.current !== null
            const rafId = requestAnimationFrame(() => {
                listRef.current?.recomputeRowHeights()
                if (!keepCategoryPosition) listRef.current?.scrollToPosition({ scrollTop: 0 })
            })
            return () => cancelAnimationFrame(rafId)
        } else {
            gridRef.current?.scrollToPosition({ scrollTop: 0, scrollLeft: 0 })
        }
    }, [filteredIcons, viewMode])

    // Cell sizes are cached by both virtualizers: a new size invalidates them.
    useEffect(() => {
        listRef.current?.recomputeRowHeights()
        gridRef.current?.recomputeGridSize()
    }, [cellHeight, cellWidth, columnCount])

    if (filteredIcons.length === 0) {
        return (
            <div
                ref={wrapperRef}
                style={{ width: '100%', height }}
                className="flex flex-col items-center justify-center gap-4 px-4 text-center">
                <h2 className="font-heading text-xl">No icons found</h2>
                <p className="max-w-sm text-sm/relaxed text-muted-foreground">
                    Try another search or request an icon for your use case. No drawing is required.
                </p>
                <Button asChild className="rounded-full">
                    <Link href={projectLinks.requestIcon}>Request an icon</Link>
                </Button>
            </div>
        )
    }

    if (viewMode === 'grouped') {
        return (
            <div ref={wrapperRef} style={{ width: '100%', height }}>
                <List
                    aria-label="Icons"
                    role="grid"
                    containerProps={SCROLLER_PROPS}
                    ref={listRef}
                    className="*:relative"
                    width={width}
                    height={height}
                    rowCount={rows.length}
                    rowHeight={({ index }: { index: number }) =>
                        rows[index]?.kind === 'header' ? SECTION_HEADER : cellHeight
                    }
                    rowRenderer={({ index, key, style }: RowRendererParams) => {
                        const row = rows[index]
                        if (!row) return null
                        if (row.kind === 'header') {
                            return (
                                <div
                                    key={key}
                                    data-cat-section={row.category}
                                    style={{
                                        ...style,
                                        height: SECTION_HEADER - GAP,
                                        paddingTop: GAP,
                                    }}
                                    className={cn(
                                        `
                                          flex items-end gap-2 px-2 pb-2 text-xs font-semibold
                                          tracking-widest
                                        `,
                                        activeCategory === row.category
                                            ? 'text-foreground'
                                            : 'text-muted-foreground'
                                    )}>
                                    <span className="uppercase">
                                        {row.category.replace(/-/g, ' ')}
                                    </span>
                                    <span
                                        className="
                                          font-mono text-xs font-normal text-muted-foreground/70
                                          tabular-nums
                                        ">
                                        {row.count}
                                    </span>
                                </div>
                            )
                        }
                        return (
                            <div
                                key={key}
                                style={{
                                    ...style,
                                    display: 'grid',
                                    gridTemplateColumns: `repeat(${columnCount}, ${cellWidth}px)`,
                                    height: cellHeight,
                                }}
                                data-grid-row={row.category}>
                                {row.icons.map(icon => (
                                    <div
                                        key={icon.name}
                                        style={{ width: cellWidth, height: cellHeight }}>
                                        <IconCard {...icon} showName={showNames} />
                                    </div>
                                ))}
                            </div>
                        )
                    }}
                    overscanRowCount={2}
                />
            </div>
        )
    }

    const rowCount = Math.ceil(filteredIcons.length / columnCount)
    const cellRenderer: GridProps['cellRenderer'] = ({ key, columnIndex, rowIndex, style }) => {
        const index = rowIndex * columnCount + columnIndex
        const icon = filteredIcons[index]
        if (!icon) return null
        return (
            <div key={key} style={style} className="hover:z-10 focus-within:z-10">
                <IconCard {...icon} showName={showNames} />
            </div>
        )
    }

    return (
        <div ref={wrapperRef} style={{ width: '100%', height }}>
            <Grid
                aria-label="Icons"
                role="grid"
                containerProps={SCROLLER_PROPS}
                ref={gridRef}
                className="*:relative"
                cellRenderer={cellRenderer}
                columnCount={columnCount}
                columnWidth={cellWidth}
                height={height}
                rowCount={rowCount}
                rowHeight={cellHeight}
                width={width}
                overscanRowCount={0}
            />
        </div>
    )
}

// Re-export the List type so consumers (e.g. sidebar scroll helpers) can
// type their refs against the same instance.
export type { List }
export type IconGridList = ListImperativeAPI
export type IconGridListProps = ListProps
