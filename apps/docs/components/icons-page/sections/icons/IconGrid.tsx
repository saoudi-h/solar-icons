'use client'
import type { IconData } from '@/generated/descriptions'
import { cn } from '@/lib/utils'
import { CATEGORIES } from '@solar-icons/core/runtime'
import { useAtom, useAtomValue, useSetAtom } from 'jotai'
import React, { useCallback, useEffect, useMemo, useRef, useState } from 'react'
import type { GridProps, ListProps } from 'react-virtualized'
import { Grid, List } from 'react-virtualized'
import {
    activeCategoryAtom,
    displayedIconsAtom,
    filteredIconsAtom,
    useSearchKeyword,
    useSelectedIcon,
    useViewModeURL,
} from './context'
import { IconCard } from './IconCard'
import { searchIcons } from './utils'

const ICON_CELL = 120
const SECTION_HEADER = 56
const GAP = 8
// The `gap-4` (1rem) on the inner `<div>` of `IconShowcase`
// (`relative flex h-full flex-1 flex-col gap-4 rounded-xl p-4`)
// sits between the sidebar+grid row and the bottom `<IconDetail>`
// panel. It is *not* in the grid's `rect.top` (the gap is below
// the grid), so the original `window.innerHeight - rect.top - 56`
// measurement missed it by exactly 16px and the page gained a
// small vertical scroll whenever the panel opened. Subtracted
// here in the measure callback. See DOCS-UI-02 + the user's
// follow-up.
const ROW_TO_DETAIL_GAP = 16

type GridRow =
    | { kind: 'header'; category: string; count: number }
    | { kind: 'icons'; category: string; icons: IconData[] }

interface IconGridVirtualizedProps {
    /**
     * Called whenever the grid wrapper's measured height changes
     * (mount, resize, detail panel open/close). The height is
     * `window.innerHeight - <wrapper top> - 56 - detailHeight - ROW_TO_DETAIL_GAP` —
     * the same value the wrapper uses internally for its scroll
     * viewport, minus the floating detail panel's height (when
     * open) and minus the `gap-4` between the row and the
     * detail panel inside `IconShowcase` (so the page does not
     * gain a small vertical scroll when the panel opens). Lets
     * a sibling (the categories sidebar) match the grid height
     * exactly without a magic number. See DOCS-UI-02.
     */
    onHeightChange?: (height: number) => void
    /**
     * Pixel height of the bottom `<IconDetail>` panel, reported
     * by its `FloatingDrawer`'s `ResizeObserver`. Subtracted
     * from the grid's available height so the last row of icons
     * stays reachable inside the grid's native scroll even when
     * the detail panel is open. 0 when the panel is closed.
     */
    detailHeight?: number
}

export const IconGridVirtualized: React.FC<IconGridVirtualizedProps> = ({
    onHeightChange,
    detailHeight = 0,
}) => {
    const gridRef = useRef<Grid>(null)
    const listRef = useRef<List>(null)
    const wrapperRef = useRef<HTMLDivElement>(null)
    const [keyword] = useSearchKeyword()
    const [, setDisplayedIcons] = useAtom<IconData[]>(displayedIconsAtom)
    const [filteredIcons, setFilteredIcons] = useAtom<IconData[]>(filteredIconsAtom)
    const viewMode = useViewModeURL()[0]
    const activeCategory = useAtomValue(activeCategoryAtom)
    const selectedIcon = useSelectedIcon()
    const setActiveCategory = useSetAtom(activeCategoryAtom)
    // Default to a viewport-friendly height on the server so the
    // grid container doesn't render at 0px and cause a layout
    // shift when the client-side `useEffect` measures the real
    // viewport. The client `measure` callback refines the value on
    // mount to the actual
    // `window.innerHeight - top - 56 - detailHeight - ROW_TO_DETAIL_GAP`;
    // the residual shift is small (and zero on common viewports).
    const [width, setWidth] = useState(1024)
    const [height, setHeight] = useState(1024)

    // Mirror `detailHeight` into a ref so the resize listener
    // (registered once on mount) can read the latest value without
    // forcing a re-subscribe on every panel height change. The
    // `useEffect` on `[detailHeight, measure]` below handles the
    // actual re-measure by calling `measure` directly with the
    // current prop value.
    const detailHeightRef = useRef(detailHeight)
    useEffect(() => {
        detailHeightRef.current = detailHeight
    }, [detailHeight])

    useEffect(() => {
        const results = searchIcons({ keyword, categories: [] })
        setFilteredIcons(results)
        setDisplayedIcons(results)
    }, [keyword, setFilteredIcons, setDisplayedIcons])

    // The measure callback is the single source of truth for the
    // grid's height. Called on mount, on `window.resize`, and
    // imperatively from the `[detailHeight, measure]` effect below
    // when the floating detail panel opens / closes / animates.
    // The `56` is the Fumadocs header height (the user's manual
    // fix, tighter than the previous `- 20` padding guess). The
    // `detailHeight` offset is the live height of the bottom
    // detail panel — subtracting it from the available height
    // keeps the grid + categories sidebar fully scrollable when
    // the panel is open. The `ROW_TO_DETAIL_GAP` (16px) is the
    // `gap-4` between the row and the detail panel inside the
    // inner div of `IconShowcase` — the gap is below the grid
    // (not in `rect.top`), so the page gained a small vertical
    // scroll when the panel opened until it was subtracted here.
    const measure = useCallback(() => {
        const el = wrapperRef.current
        if (!el) return
        const rect = el.getBoundingClientRect()
        setWidth(el.offsetWidth)
        const h = window.innerHeight - rect.top - 56 - detailHeightRef.current - ROW_TO_DETAIL_GAP
        setHeight(h)
        onHeightChange?.(h)
    }, [onHeightChange])

    useEffect(() => {
        measure()
        window.addEventListener('resize', measure)
        return () => window.removeEventListener('resize', measure)
    }, [measure])

    // Re-measure whenever the detail panel's height changes
    // (open, close, animation, weight switch, resize, content
    // swap). Deferred to the next frame so the parent's state
    // update from the panel's `ResizeObserver` has settled into
    // the DOM, otherwise the grid's `rect.top` could be read on
    // the layout shift frame and report a stale value.
    useEffect(() => {
        const rafId = requestAnimationFrame(measure)
        return () => cancelAnimationFrame(rafId)
    }, [detailHeight, measure])

    const columnCount = Math.max(1, Math.floor(width / ICON_CELL))

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
            acc += row.kind === 'header' ? SECTION_HEADER : ICON_CELL
        }
        return positions
    }, [rows])

    // Capture the icon that was in the URL on first render (the
    // 'shared link' case). The scroll-to-icon useEffect below only
    // triggers when the *current* selected icon matches this
    // initial value — meaning the user opened a link to that
    // specific icon, not that they clicked it themselves (in which
    // case it's already on screen). `useState` with an initializer
    // runs exactly once on the first render and never updates.
    const [initialIconName] = useState<string | null>(() => selectedIcon?.fullName ?? null)
    const hasMountedRef = useRef(false)

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
            listRef.current?.scrollToPosition(scrollTop)
        })
        return () => cancelAnimationFrame(rafId)
    }, [activeCategory, categoryToRowIndex, rowPositions, viewMode])

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
            const rafId = requestAnimationFrame(() => {
                listRef.current?.recomputeRowHeights()
                listRef.current?.scrollToPosition(0)
            })
            return () => cancelAnimationFrame(rafId)
        } else {
            gridRef.current?.scrollToPosition({ scrollTop: 0, scrollLeft: 0 })
        }
    }, [filteredIcons, viewMode])

    if (viewMode === 'grouped') {
        return (
            <div ref={wrapperRef} style={{ width: '100%', height }}>
                <List
                    ref={listRef}
                    className="*:relative *:mx-auto"
                    width={width}
                    height={height}
                    rowCount={rows.length}
                    rowHeight={({ index }) =>
                        rows[index]?.kind === 'header' ? SECTION_HEADER : ICON_CELL
                    }
                    rowRenderer={({ index, key, style }) => {
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
                                          flex items-end gap-2 px-1 pb-2 text-sm
                                          font-semibold tracking-wide
                                        `,
                                        activeCategory === row.category
                                            ? 'text-foreground'
                                            : 'text-muted-foreground'
                                    )}>
                                    <span className="uppercase">{row.category}</span>
                                    <span
                                        className="
                                          font-mono text-xs font-normal
                                          text-muted-foreground/70 tabular-nums
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
                                    gridTemplateColumns: `repeat(${columnCount}, ${ICON_CELL}px)`,
                                    height: ICON_CELL,
                                    justifyContent: 'center',
                                }}
                                data-grid-row={row.category}>
                                {row.icons.map(icon => (
                                    <div
                                        key={icon.name}
                                        style={{ width: ICON_CELL, height: ICON_CELL }}>
                                        <IconCard {...icon} />
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
        return <IconCard key={key} {...{ ...icon, style }} />
    }

    return (
        <div ref={wrapperRef} style={{ width: '100%', height }}>
            <Grid
                ref={gridRef}
                className="*:relative *:mx-auto"
                cellRenderer={cellRenderer}
                columnCount={columnCount}
                columnWidth={ICON_CELL}
                height={height}
                rowCount={rowCount}
                rowHeight={ICON_CELL}
                width={width}
                overscanRowCount={0}
            />
        </div>
    )
}

// Re-export the List type so consumers (e.g. sidebar scroll helpers) can
// type their refs against the same instance.
export type { List }
export type IconGridList = List
export type IconGridListProps = ListProps
