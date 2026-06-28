'use client'
import type { IconData } from '@/generated/descriptions'
import { cn } from '@/lib/utils'
import { CATEGORIES } from '@solar-icons/core/runtime'
import { useAtom, useAtomValue } from 'jotai'
import React, { useEffect, useMemo, useRef, useState } from 'react'
import type { GridProps, ListProps } from 'react-virtualized'
import { Grid, List } from 'react-virtualized'
import {
    activeCategoryAtom,
    displayedIconsAtom,
    filteredIconsAtom,
    useSearchKeyword,
    useViewModeURL,
} from './context'
import { IconCard } from './IconCard'
import { searchIcons } from './utils'

const ICON_CELL = 120
const SECTION_HEADER = 56
const GAP = 8

type GridRow =
    | { kind: 'header'; category: string; count: number }
    | { kind: 'icons'; category: string; icons: IconData[] }

export const IconGridVirtualized: React.FC = () => {
    const gridRef = useRef<Grid>(null)
    const listRef = useRef<List>(null)
    const wrapperRef = useRef<HTMLDivElement>(null)
    const [keyword] = useSearchKeyword()
    const [, setDisplayedIcons] = useAtom<IconData[]>(displayedIconsAtom)
    const [filteredIcons, setFilteredIcons] = useAtom<IconData[]>(filteredIconsAtom)
    const viewMode = useViewModeURL()[0]
    const activeCategory = useAtomValue(activeCategoryAtom)
    const [width, setWidth] = useState(0)
    const [height, setHeight] = useState(0)

    useEffect(() => {
        const results = searchIcons({ keyword, categories: [] })
        setFilteredIcons(results)
        setDisplayedIcons(results)
    }, [keyword, setFilteredIcons, setDisplayedIcons])

    useEffect(() => {
        const el = wrapperRef.current
        if (!el) return
        const handleResize = () => {
            setWidth(el.offsetWidth)
            setHeight(window.innerHeight - el.getBoundingClientRect().top - 20)
        }
        handleResize()
        window.addEventListener('resize', handleResize)
        return () => window.removeEventListener('resize', handleResize)
    }, [])

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
