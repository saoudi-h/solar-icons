import { useEffect, useMemo, useRef, useState, type CSSProperties, type KeyboardEvent, type UIEvent } from 'react'
import type { IconMetadata } from '../data'
import type { EnsureOptions } from '../packs'
import { SolarSvg } from './SolarSvg'

const MIN_CELL_WIDTH = 56
const CELL_HEIGHT = 56
const BUFFER_ROWS = 3

type IconBrowserProps = {
    icons: IconMetadata[]
    styleName: string
    styleLabel: string
    strokeWidth?: number
    selectionMode: boolean
    selected: Set<string>
    onIcon: (name: string) => void
    getSvg: (name: string, style: string) => string | null
    ensurePacks: (
        style: string,
        names: readonly string[],
        options?: EnsureOptions
    ) => void
    unavailableMessage: string | null
}

export function IconBrowser({
    icons,
    styleName,
    styleLabel,
    strokeWidth,
    selectionMode,
    selected,
    onIcon,
    getSvg,
    ensurePacks,
    unavailableMessage,
}: IconBrowserProps) {
    const browserRef = useRef<HTMLElement>(null)
    const [scrollTop, setScrollTop] = useState(0)
    const [viewportHeight, setViewportHeight] = useState(450)
    const [columns, setColumns] = useState(5)
    const scrollFrame = useRef<number | null>(null)
    const batchRef = useRef(0)
    const debounceRef = useRef<number | null>(null)
    const lastStyle = useRef(styleName)

    useEffect(() => {
        const browser = browserRef.current
        if (!browser) return
        const update = () => {
            setViewportHeight(browser.clientHeight)
            setColumns(Math.max(4, Math.floor(browser.clientWidth / MIN_CELL_WIDTH)))
        }
        update()
        const observer = new ResizeObserver(update)
        observer.observe(browser)
        return () => observer.disconnect()
    }, [])

    useEffect(() => {
        if (browserRef.current) browserRef.current.scrollTop = 0
        setScrollTop(0)
    }, [icons, styleName])

    const windowState = useMemo(() => {
        const totalRows = Math.ceil(icons.length / columns)
        const startRow = Math.max(0, Math.floor(scrollTop / CELL_HEIGHT) - BUFFER_ROWS)
        const visibleRows = Math.ceil(viewportHeight / CELL_HEIGHT) + BUFFER_ROWS * 2
        const endRow = Math.min(totalRows, startRow + visibleRows)
        return {
            totalRows,
            startRow,
            startIndex: startRow * columns,
            endIndex: Math.min(icons.length, endRow * columns),
        }
    }, [columns, icons.length, scrollTop, viewportHeight])

    useEffect(() => {
        // Scroll fires per frame: wait for the viewport to settle before
        // requesting, otherwise every frame spawns its own batch. A style
        // switch fires immediately: the user explicitly asked for it.
        const fire = () => {
            batchRef.current += 1
            ensurePacks(
                styleName,
                icons.slice(windowState.startIndex, windowState.endIndex).map(icon => icon.name),
                { batchId: batchRef.current }
            )
        }
        if (lastStyle.current !== styleName) {
            lastStyle.current = styleName
            if (debounceRef.current) {
                clearTimeout(debounceRef.current)
                debounceRef.current = null
            }
            fire()
        } else {
            if (debounceRef.current) clearTimeout(debounceRef.current)
            debounceRef.current = window.setTimeout(fire, 250)
        }
        return () => {
            if (debounceRef.current) {
                clearTimeout(debounceRef.current)
                debounceRef.current = null
            }
        }
    }, [ensurePacks, icons, styleName, windowState.startIndex, windowState.endIndex])

    const handleScroll = (event: UIEvent<HTMLElement>) => {
        if (scrollFrame.current !== null) return
        const nextScrollTop = event.currentTarget.scrollTop
        scrollFrame.current = requestAnimationFrame(() => {
            scrollFrame.current = null
            setScrollTop(nextScrollTop)
        })
    }

    const focusIcon = (index: number) => {
        if (index < 0 || index >= icons.length) return
        const browser = browserRef.current
        if (!browser) return
        const top = Math.floor(index / columns) * CELL_HEIGHT
        if (top < browser.scrollTop) browser.scrollTop = top
        if (top + CELL_HEIGHT > browser.scrollTop + browser.clientHeight) {
            browser.scrollTop = top - browser.clientHeight + CELL_HEIGHT
        }
        setScrollTop(browser.scrollTop)
        requestAnimationFrame(() => {
            browser.querySelector<HTMLElement>(`[data-index="${index}"]`)?.focus()
        })
    }

    const handleKeyDown = (event: KeyboardEvent<HTMLButtonElement>, index: number) => {
        const delta = {
            ArrowRight: 1,
            ArrowLeft: -1,
            ArrowDown: columns,
            ArrowUp: -columns,
        }[event.key]
        if (delta === undefined) return
        event.preventDefault()
        focusIcon(index + delta)
    }

    if (icons.length === 0) {
        return (
            <section ref={browserRef} className="browser" aria-label="Icon browser">
                <div className="grid-message">No icons match this search.</div>
            </section>
        )
    }

    if (unavailableMessage) {
        return (
            <section ref={browserRef} className="browser" aria-label="Icon browser">
                <div className="grid-message">{unavailableMessage}</div>
            </section>
        )
    }

    return (
        <section ref={browserRef} className="browser" aria-label="Icon browser" onScroll={handleScroll}>
            <div className="grid-spacer" style={{ height: windowState.totalRows * CELL_HEIGHT }}>
                <div
                    className="grid-window"
                    style={{
                        top: windowState.startRow * CELL_HEIGHT,
                        gridTemplateColumns: `repeat(${columns}, minmax(0, 1fr))`,
                    }}
                >
                    {icons.slice(windowState.startIndex, windowState.endIndex).map((icon, offset) => {
                        const index = windowState.startIndex + offset
                        const isSelected = selected.has(icon.name)
                        const svg = getSvg(icon.name, styleName)
                        const action = selectionMode ? 'Select' : 'Insert'
                        return (
                            <button
                                type="button"
                                className="icon-cell"
                                key={icon.name}
                                title={
                                    svg
                                        ? `${action} ${icon.name.replaceAll('-', ' ')}`
                                        : 'Loading icon…'
                                }
                                aria-label={`${action} ${icon.name.replaceAll('-', ' ')}, ${styleLabel}`}
                                aria-pressed={isSelected}
                                data-index={index}
                                disabled={!svg}
                                onClick={() => onIcon(icon.name)}
                                onKeyDown={event => handleKeyDown(event, index)}
                            >
                                <SolarSvg
                                    className="icon-preview"
                                    svg={svg}
                                    style={
                                        strokeWidth === undefined
                                            ? undefined
                                            : ({ '--preview-stroke-width': strokeWidth } as CSSProperties)
                                    }
                                />
                                <span className="selection-mark" aria-hidden="true">✓</span>
                            </button>
                        )
                    })}
                </div>
            </div>
        </section>
    )
}
