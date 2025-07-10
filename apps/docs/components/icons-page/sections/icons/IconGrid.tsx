'use client'
import React, { useEffect, useRef, useState } from 'react'
import { IconCard } from './IconCard'
import { searchIcons } from './utils'
import { useAtom } from 'jotai'
import { Grid } from 'react-virtualized'
import { IconData } from '@/core/generated/descriptions'
import { categoriesAtom, displayedIconsAtom, filteredIconsAtom, keywordAtom } from './context'

export const IconGridVirtualized: React.FC = () => {
    const gridRef = useRef<Grid>(null)
    const gridWrapperRef = useRef<HTMLDivElement>(null)
    const [keyword] = useAtom(keywordAtom)
    const [categories] = useAtom(categoriesAtom)
    const [, setDisplayedIcons] = useAtom<IconData[]>(displayedIconsAtom)
    const [filteredIcons, setFilteredIcons] = useAtom<IconData[]>(filteredIconsAtom)
    const [gridWidth, setGridWidth] = useState(0)
    const [gridHeight, setGridHeight] = useState(0)

    useEffect(() => {
        const results = searchIcons({ keyword, categories })
        setFilteredIcons(results)
        setDisplayedIcons(results)
    }, [keyword, categories, setFilteredIcons, setDisplayedIcons])

    useEffect(() => {
        gridRef?.current?.scrollToPosition({ scrollTop: 0, scrollLeft: 0 })
    }, [filteredIcons])

    useEffect(() => {
        const handleResize = () => {
            if (gridWrapperRef.current) {
                setGridWidth(gridWrapperRef.current.offsetWidth)
                setGridHeight(
                    window.innerHeight - gridWrapperRef.current.getBoundingClientRect().top - 20
                )
            }
        }
        handleResize()
        window.addEventListener('resize', handleResize)
        return () => window.removeEventListener('resize', handleResize)
    }, [])

    const columnWidth = 120
    const rowHeight = 120
    const columnCount = Math.floor(gridWidth / columnWidth) || 1
    const rowCount = Math.ceil(filteredIcons.length / columnCount)

    const cellRenderer: React.FC<{
        key: string
        columnIndex: number
        rowIndex: number
        style: React.CSSProperties
    }> = ({ key, columnIndex, rowIndex, style }) => {
        const index = rowIndex * columnCount + columnIndex
        const icon = filteredIcons[index]
        if (!icon) return null

        return <IconCard key={key} {...{ ...icon, style }} />
    }

    return (
        <div ref={gridWrapperRef} style={{ width: '100%', height: gridHeight }} className="test">
            <Grid
                ref={gridRef}
                className="*:relative *:mx-auto"
                cellRenderer={cellRenderer}
                columnCount={columnCount}
                columnWidth={columnWidth}
                height={gridHeight}
                rowCount={rowCount}
                rowHeight={rowHeight}
                width={gridWidth}
                overscanRowCount={0}
            />
        </div>
    )
}
