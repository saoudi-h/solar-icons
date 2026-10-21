import { useVirtualizer } from '@tanstack/react-virtual'
import { createFileRoute } from '@tanstack/react-router'
import Fuse from 'fuse.js'
import { useCallback, useEffect, useMemo, useRef, useState } from 'react'
import type { ComponentType } from 'react'

import { categories } from '../../../docs/generated/utils'
import type { IconData } from '../../../docs/generated/descriptions'
import { loadIconChunk } from '~/generated/icon-chunk-loaders'
import { seo } from '~/utils/seo'

const STYLE_OPTIONS = [
    { value: 'bold', label: 'Bold' },
    { value: 'bold-duotone', label: 'Bold Duotone' },
    { value: 'broken', label: 'Broken' },
    { value: 'linear', label: 'Linear' },
    { value: 'line-duotone', label: 'Line Duotone' },
    { value: 'outline', label: 'Outline' },
] as const

const STYLE_SLUGS = STYLE_OPTIONS.map(option => option.value)
type IconStyle = (typeof STYLE_OPTIONS)[number]['value']
type ViewMode = 'flat' | 'grouped'
type OriginFilter = 'all' | 'extended'

type IconSearch = {
    [key: string]: unknown
    icon?: string
    view?: ViewMode
    search?: string
    style?: IconStyle
    category?: (typeof categories)[number]
    origin?: OriginFilter
}

type IconComponent = ComponentType<any>
type IconNamespace = Record<string, IconComponent>
type ExplorerIcon = IconData & { chunk: number }

const EMPTY_SEARCH: IconSearch = {}

function isString(value: unknown): value is string {
    return typeof value === 'string'
}

function validateSearch(search: Record<string, unknown>): IconSearch {
    return {
        ...search,
        icon: isString(search.icon) ? search.icon : undefined,
        view: search.view === 'flat' || search.view === 'grouped' ? search.view : undefined,
        search: isString(search.search) ? search.search : undefined,
        style: STYLE_SLUGS.includes(search.style as IconStyle)
            ? (search.style as IconStyle)
            : undefined,
        category:
            isString(search.category) &&
            (categories as readonly string[]).includes(search.category)
                ? (search.category as (typeof categories)[number])
                : undefined,
        origin: search.origin === 'all' || search.origin === 'extended' ? search.origin : undefined,
    }
}

export const Route = createFileRoute('/icons')({
    validateSearch,
    head: () =>
        seo({
            title: 'Explore Solar Icons',
            description: 'Browse all 1,451 Solar Icons across six styles.',
            path: '/icons',
            image: '/og/icons/image.png',
        }),
    component: IconsPage,
})

type GridItem =
    | { key: string; kind: 'category'; category: string; count: number }
    | { key: string; kind: 'icons'; category: string; icons: ExplorerIcon[] }

function IconsPage() {
    const query = Route.useSearch()
    const navigate = Route.useNavigate()
    const [hydrated, setHydrated] = useState(false)
    const [catalog, setCatalog] = useState<ExplorerIcon[] | null>(null)
    const [catalogError, setCatalogError] = useState<string | null>(null)
    const [loadedChunks, setLoadedChunks] = useState<Record<string, IconNamespace>>({})
    const [chunkLoadError, setChunkLoadError] = useState(false)
    const [copyStatus, setCopyStatus] = useState('')
    const selectedIconRef = useRef<HTMLDivElement>(null)
    const gridScrollRef = useRef<HTMLDivElement>(null)
    const lastAppliedCategoryRef = useRef<string | undefined>(undefined)
    const loadedChunkKeysRef = useRef(new Set<string>())
    const [columnCount, setColumnCount] = useState(6)

    useEffect(() => setHydrated(true), [])

    useEffect(() => {
        if (!hydrated) return
        let active = true

        fetch('/data/icons.json')
            .then(response => {
                if (!response.ok) throw new Error(`Catalogue request failed (${response.status})`)
                return response.json() as Promise<ExplorerIcon[]>
            })
            .then(data => {
                if (active) setCatalog(data)
            })
            .catch(error => {
                if (active) setCatalogError(error instanceof Error ? error.message : 'Unknown error')
            })

        return () => {
            active = false
        }
    }, [hydrated])

    const search = hydrated ? query : EMPTY_SEARCH
    const style = search.style ?? 'bold-duotone'
    const view = search.view ?? 'flat'
    const keyword = search.search ?? ''
    const origin = search.origin ?? 'all'

    const updateSearch = useCallback(
        (patch: Partial<IconSearch>, replace = false) => {
            void navigate({
                search: previous => ({ ...previous, ...patch }) as IconSearch,
                replace,
                resetScroll: false,
            })
        },
        [navigate]
    )

    const filteredIcons = useMemo(() => {
        if (!catalog) return []
        const fromCatalog = origin === 'extended' ? catalog.filter(icon => icon.origin === 'extended') : catalog
        const terms = keyword.toLowerCase().trim().split(/\s+/).filter(Boolean)
        if (terms.length === 0) return fromCatalog

        const fuse = new Fuse(fromCatalog, {
            keys: ['name', 'tags', 'category', 'categoryTags'],
            threshold: 0.2,
            ignoreLocation: true,
        })
        const query = terms.length > 1 ? { $and: terms } : terms[0]
        return fuse.search(query as string).map(result => result.item)
    }, [catalog, keyword, origin])

    const countsByCategory = useMemo(() => {
        const counts = new Map<string, number>()
        for (const icon of filteredIcons) {
            counts.set(icon.category, (counts.get(icon.category) ?? 0) + 1)
        }
        return counts
    }, [filteredIcons])

    useEffect(() => {
        const element = gridScrollRef.current
        if (!element) return
        const observer = new ResizeObserver(() => {
            setColumnCount(Math.max(2, Math.floor((element.clientWidth + 12) / 132)))
        })
        observer.observe(element)
        return () => observer.disconnect()
    }, [hydrated])

    const items = useMemo<GridItem[]>(() => {
        const result: GridItem[] = []
        const appendRows = (category: string, icons: ExplorerIcon[]) => {
            for (let start = 0; start < icons.length; start += columnCount) {
                result.push({
                    key: `icons:${category}:${start}`,
                    kind: 'icons',
                    category,
                    icons: icons.slice(start, start + columnCount),
                })
            }
        }

        if (view === 'flat') {
            appendRows('all', filteredIcons)
            return result
        }

        const grouped = new Map<string, ExplorerIcon[]>()
        for (const icon of filteredIcons) {
            const current = grouped.get(icon.category)
            if (current) current.push(icon)
            else grouped.set(icon.category, [icon])
        }

        for (const category of categories) {
            const icons = grouped.get(category)
            if (!icons?.length) continue
            result.push({
                key: `category:${category}`,
                kind: 'category',
                category,
                count: icons.length,
            })
            appendRows(category, icons)
        }
        return result
    }, [columnCount, filteredIcons, view])

    const virtualizer = useVirtualizer({
        count: items.length,
        getScrollElement: () => gridScrollRef.current,
        estimateSize: index => (items[index]?.kind === 'category' ? 48 : 116),
        getItemKey: index => items[index]?.key ?? index,
        overscan: 5,
    })

    useEffect(() => {
        if (!hydrated || !catalog) return
        const category = query.category
        if (category !== lastAppliedCategoryRef.current) {
            lastAppliedCategoryRef.current = category
            if (!category) return
            if (view !== 'grouped') {
                updateSearch({ view: 'grouped' }, true)
                return
            }
        }
        if (!category || view !== 'grouped') return
        const rowIndex = items.findIndex(item => item.kind === 'category' && item.category === category)
        if (rowIndex >= 0) virtualizer.scrollToIndex(rowIndex, { align: 'start' })
    }, [catalog, hydrated, items, query.category, updateSearch, view, virtualizer])

    const selectedIcon = catalog?.find(icon => icon.name === search.icon)
    const visibleIcons = virtualizer.getVirtualItems().flatMap(virtualRow => {
        const item = items[virtualRow.index]
        return item?.kind === 'icons' ? item.icons : []
    })
    const chunkKeys = new Set<string>(
        visibleIcons.map(icon => `${icon.category}:${icon.chunk}`)
    )
    if (selectedIcon) chunkKeys.add(`${selectedIcon.category}:${selectedIcon.chunk}`)
    const chunkKeyList = [...chunkKeys]
    const chunkKeySignature = chunkKeyList.join('|')

    useEffect(() => {
        if (!hydrated) return
        for (const chunkKey of chunkKeyList) {
            const loadedKey = `${style}/${chunkKey}`
            if (loadedChunkKeysRef.current.has(loadedKey)) continue
            loadedChunkKeysRef.current.add(loadedKey)
            loadIconChunk(style, chunkKey).then(
                chunk => {
                    setLoadedChunks(previous => ({
                        ...previous,
                        [loadedKey]: chunk.icons as IconNamespace,
                    }))
                },
                () => {
                    loadedChunkKeysRef.current.delete(loadedKey)
                    setChunkLoadError(true)
                }
            )
        }
    }, [chunkKeySignature, hydrated, style])

    const selectedChunkKey = selectedIcon
        ? `${style}/${selectedIcon.category}:${selectedIcon.chunk}`
        : ''
    const SelectedIcon = selectedIcon
        ? loadedChunks[selectedChunkKey]?.[selectedIcon.name]
        : undefined

    const selectIcon = (icon: ExplorerIcon) => {
        setCopyStatus('')
        updateSearch({ icon: icon.name })
    }

    async function copySelectedSvg() {
        const svg = selectedIconRef.current?.querySelector('svg')
        if (!svg) {
            setCopyStatus('Icon is still loading.')
            return
        }

        try {
            await navigator.clipboard.writeText(svg.outerHTML)
            setCopyStatus('SVG copied')
        } catch {
            setCopyStatus('Clipboard access was denied')
        }
    }

    return (
        <main className="mx-auto flex min-h-screen w-full max-w-[1500px] flex-col gap-5 px-4 py-6 sm:px-6 lg:px-8">
            <header className="flex flex-wrap items-end justify-between gap-4">
                <div>
                    <p className="text-sm text-muted-foreground">Solar Icons</p>
                    <h1 className="text-3xl font-semibold tracking-tight sm:text-4xl">Icon explorer</h1>
                    <p className="mt-1 text-sm text-muted-foreground">
                        Search and browse the icon catalogue. Choose a style, then copy a ready-to-use SVG.
                    </p>
                </div>
                <a href="/" className="text-sm text-muted-foreground underline underline-offset-4">
                    Back to home
                </a>
            </header>

            <section aria-label="Icon filters" className="flex flex-col gap-3 rounded-2xl border border-border bg-background/90 p-3 shadow-sm sm:p-4">
                <div className="flex flex-wrap items-center gap-2">
                    <label className="min-w-[220px] flex-1">
                        <span className="sr-only">Search icons</span>
                        <input
                            type="search"
                            value={keyword}
                            onChange={event =>
                                updateSearch({ search: event.currentTarget.value || undefined }, true)
                            }
                            placeholder="Search by name, tag, or category…"
                            aria-label="Search icons"
                            className="h-10 w-full rounded-lg border border-border bg-background px-3 text-sm outline-none focus-visible:ring-2 focus-visible:ring-blue-500"
                        />
                    </label>
                    <div role="group" aria-label="View mode" className="flex rounded-lg bg-muted p-1">
                        {(['flat', 'grouped'] as const).map(option => (
                            <button
                                key={option}
                                type="button"
                                aria-pressed={view === option}
                                onClick={() => updateSearch({ view: option })}
                                className={`rounded-md px-3 py-2 text-xs font-medium capitalize transition-colors ${view === option ? 'bg-background text-foreground shadow-sm' : 'text-muted-foreground hover:text-foreground'}`}>
                                {option}
                            </button>
                        ))}
                    </div>
                    <button
                        type="button"
                        aria-pressed={origin === 'extended'}
                        onClick={() => updateSearch({ origin: origin === 'extended' ? undefined : 'extended' })}
                        className={`h-10 rounded-lg border px-3 text-xs font-medium transition-colors ${origin === 'extended' ? 'border-blue-500/50 bg-blue-500/10 text-foreground' : 'border-border text-muted-foreground hover:bg-muted'}`}>
                        Extended only
                    </button>
                </div>

                <div role="group" aria-label="Icon style" className="flex flex-wrap gap-1.5">
                    {STYLE_OPTIONS.map(option => (
                        <button
                            key={option.value}
                            type="button"
                            aria-pressed={style === option.value}
                            onClick={() => updateSearch({ style: option.value })}
                            className={`rounded-md border px-2.5 py-1.5 text-xs transition-colors ${style === option.value ? 'border-foreground/30 bg-foreground text-background' : 'border-border bg-background text-muted-foreground hover:bg-muted hover:text-foreground'}`}>
                            {option.label}
                        </button>
                    ))}
                </div>
            </section>

            <div className="grid min-h-0 flex-1 gap-4 md:grid-cols-[190px_minmax(0,1fr)]">
                <aside className="hidden min-h-0 md:block">
                    <div className="h-[min(66vh,690px)] overflow-y-auto rounded-xl border border-border p-2">
                        <p className="px-2 py-2 text-xs font-semibold uppercase tracking-wider text-muted-foreground">
                            Categories
                        </p>
                        <nav aria-label="Categories" className="flex flex-col gap-0.5">
                            {categories.map(category => {
                                const count = countsByCategory.get(category) ?? 0
                                if (count === 0) return null
                                return (
                                    <button
                                        key={category}
                                        type="button"
                                        aria-current={search.category === category ? 'true' : undefined}
                                        onClick={() => updateSearch({ category, view: 'grouped' })}
                                        className={`flex items-center justify-between gap-2 rounded-md px-2 py-1.5 text-left text-xs capitalize transition-colors ${search.category === category ? 'bg-muted font-medium text-foreground' : 'text-muted-foreground hover:bg-muted hover:text-foreground'}`}>
                                        <span className="truncate">{category.replaceAll('-', ' ')}</span>
                                        <span className="font-mono text-[10px] tabular-nums">{count}</span>
                                    </button>
                                )
                            })}
                        </nav>
                    </div>
                </aside>

                <section aria-label="Icon results" className="min-w-0">
                    <div className="mb-2 flex items-center justify-between gap-3 text-xs text-muted-foreground">
                        <p aria-live="polite">
                            {catalog ? `${filteredIcons.length.toLocaleString()} icons` : 'Loading icon catalogue…'}
                        </p>
                        {catalogError ? <p role="alert">Could not load icons: {catalogError}</p> : null}
                        {chunkLoadError ? <p role="alert">Could not load some icons.</p> : null}
                    </div>

                    <div
                        ref={gridScrollRef}
                        data-testid="icon-grid"
                        className="h-[min(66vh,690px)] min-h-80 overflow-y-auto rounded-xl border border-border bg-muted/20 p-2 sm:p-3">
                        {catalog && filteredIcons.length === 0 ? (
                            <p className="px-4 py-12 text-center text-sm text-muted-foreground">
                                No icons match this search.
                            </p>
                        ) : (
                            <div className="relative w-full" style={{ height: virtualizer.getTotalSize() }}>
                                {virtualizer.getVirtualItems().map(virtualRow => {
                                    const item = items[virtualRow.index]
                                    if (!item) return null

                                    return (
                                        <div
                                            key={virtualRow.key}
                                            data-index={virtualRow.index}
                                            ref={virtualizer.measureElement}
                                            className="absolute left-0 top-0 w-full"
                                            style={{ transform: `translateY(${virtualRow.start}px)` }}>
                                            {item.kind === 'category' ? (
                                                <h2
                                                    id={`category-${item.category}`}
                                                    data-category={item.category}
                                                    className="flex h-12 items-center justify-between border-b border-border px-2 text-sm font-semibold capitalize">
                                                    <span>{item.category.replaceAll('-', ' ')}</span>
                                                    <span className="font-mono text-xs text-muted-foreground">{item.count}</span>
                                                </h2>
                                            ) : (
                                                <div
                                                    className="grid min-h-[116px] gap-1.5"
                                                    style={{ gridTemplateColumns: `repeat(${columnCount}, minmax(0, 1fr))` }}>
                                                    {item.icons.map(icon => {
                                                        const loadedKey = `${style}/${icon.category}:${icon.chunk}`
                                                        const Icon = loadedChunks[loadedKey]?.[icon.name] as
                                                            | IconComponent
                                                            | undefined
                                                        const selected = search.icon === icon.name
                                                        return (
                                                            <button
                                                                key={icon.name}
                                                                type="button"
                                                                aria-label={`Select ${icon.name} icon`}
                                                                aria-pressed={selected}
                                                                onClick={() => selectIcon(icon)}
                                                                className={`group flex min-w-0 flex-col items-center justify-center gap-2 rounded-lg px-1 py-3 transition-colors hover:bg-muted ${selected ? 'bg-blue-500/10 ring-1 ring-blue-500/40' : ''}`}>
                                                                <span className="flex size-10 items-center justify-center">
                                                                    {Icon ? (
                                                                        <Icon className="size-8" aria-hidden="true" />
                                                                    ) : (
                                                                        <span className="size-7 animate-pulse rounded-md bg-muted" />
                                                                    )}
                                                                </span>
                                                                <span className="w-full truncate text-center text-[11px] text-muted-foreground group-hover:text-foreground">
                                                                    {icon.name}
                                                                </span>
                                                            </button>
                                                        )
                                                    })}
                                                </div>
                                            )}
                                        </div>
                                    )
                                })}
                            </div>
                        )}
                    </div>
                </section>
            </div>

            {selectedIcon ? (
                <section
                    aria-label="Selected icon details"
                    className="flex flex-wrap items-center justify-between gap-4 rounded-xl border border-border bg-background p-4 shadow-sm">
                    <div className="flex items-center gap-4">
                        <div
                            ref={selectedIconRef}
                            data-selected-icon
                            className="flex size-14 items-center justify-center rounded-lg bg-muted">
                            {SelectedIcon ? (
                                <SelectedIcon className="size-9" aria-hidden="true" />
                            ) : (
                                <span className="size-8 animate-pulse rounded-md bg-background" />
                            )}
                        </div>
                        <div>
                            <h2 className="font-semibold">{selectedIcon.name}</h2>
                            <p className="text-xs text-muted-foreground">
                                {selectedIcon.category} · {style}
                            </p>
                        </div>
                    </div>
                    <div className="flex items-center gap-3">
                        <button
                            type="button"
                            disabled={!SelectedIcon}
                            onClick={() => void copySelectedSvg()}
                            className="rounded-md bg-foreground px-3 py-2 text-xs font-medium text-background hover:opacity-85 disabled:cursor-not-allowed disabled:opacity-50">
                            Copy SVG
                        </button>
                        <button
                            type="button"
                            onClick={() => updateSearch({ icon: undefined })}
                            aria-label="Close selected icon"
                            className="rounded-md border border-border px-3 py-2 text-xs text-muted-foreground hover:bg-muted">
                            Close
                        </button>
                        <span role="status" aria-live="polite" className="sr-only">
                            {copyStatus}
                        </span>
                    </div>
                </section>
            ) : null}
        </main>
    )
}
