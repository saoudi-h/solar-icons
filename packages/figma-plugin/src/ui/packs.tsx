import {
    createContext,
    useCallback,
    useContext,
    useEffect,
    useMemo,
    useRef,
    useState,
    type ReactNode,
} from 'react'

import type { MainMessage } from '../shared/messages'
import { EMBEDDED_STYLE, expandBody, PACK_STYLES } from '../shared/packs'

export type PackStore = Record<string, Record<string, string>>

/** Styles fetched from the CDN: everything but the embedded one. */
const RUNTIME_STYLES = PACK_STYLES.filter(style => style !== EMBEDDED_STYLE)

export type EnsureOptions = { batchId?: number; background?: boolean }

type PacksContextValue = {
    /** Complete SVG for one icon, or null while its chunk loads. */
    getSvg: (name: string, style: string) => string | null
    /** True when at least one icon of this style is available. */
    hasStyle: (style: string) => boolean
    /** Request the chunks covering these icons in this style. */
    ensurePacks: (
        style: string,
        names: readonly string[],
        options?: EnsureOptions
    ) => void
    /** In-flight chunk count, for status and skeleton display. */
    pendingChunks: number
    /** Styles with in-flight chunks, for status display. */
    pendingStyles: readonly string[]
    /** Style whose last fetch failed, if any. */
    failedStyle: string | null
    /** True when the last failure was a connectivity error. */
    failedOffline: boolean
    /** Persistent cache census, refreshed on demand. */
    storage: { chunks: number; bytes: number } | null
    /** Ask the sandbox for a fresh persistent cache census. */
    refreshStorage: () => void
    /** Share of the non-embedded styles already downloaded, 0 to 1. */
    downloadProgress: number
    /** True once every non-embedded icon arrived this session. */
    downloadComplete: boolean
}

const PacksContext = createContext<PacksContextValue | null>(null)

export function usePacks(): PacksContextValue {
    const context = useContext(PacksContext)
    if (!context) throw new Error('usePacks must be used inside a PackProvider')
    return context
}

function postMessage(message: object): void {
    parent.postMessage({ pluginMessage: message }, '*')
}

export function PackProvider({
    version,
    embeddedStyles,
    categoryOf,
    children,
}: {
    version: string
    embeddedStyles: Record<string, Record<string, Record<string, string>>>
    categoryOf: (name: string) => string | undefined
    children: ReactNode
}) {
    const [packs, setPacks] = useState<PackStore>(() => {
        const flat: PackStore = {}
        for (const [style, categories] of Object.entries(embeddedStyles)) {
            flat[style] = Object.values(categories).reduce(
                (all, category) => ({ ...all, ...category }),
                {}
            )
        }
        return flat
    })
    const [pending, setPending] = useState<ReadonlySet<string>>(() => new Set())
    const [failedStyle, setFailedStyle] = useState<string | null>(null)
    const [failedOffline, setFailedOffline] = useState(false)
    const [storage, setStorage] = useState<{ chunks: number; bytes: number } | null>(null)
    const requestId = useRef(0)
    const backgroundId = useRef(0)
    const inFlight = useRef(new Set<string>())
    // Chunks shipped in the bundle never need a download:
    // they count as loaded from the first render.
    const loadedKeys = useRef(
        new Set(
            Object.entries(embeddedStyles).flatMap(([style, categories]) =>
                Object.keys(categories).map(category => `${style}/${category}`)
            )
        )
    )
    const backgroundIds = useRef(new Set<number>())
    const requestStyles = useRef(new Map<number, string>())

    useEffect(() => {
        postMessage({ type: 'init-packs', version })
    }, [version])

    const forgetPending = useCallback((keys: readonly string[]) => {
        setPending(current => {
            if (keys.every(key => !current.has(key))) return current
            const next = new Set(current)
            for (const key of keys) {
                next.delete(key)
                inFlight.current.delete(key)
            }
            return next
        })
    }, [])

    useEffect(() => {
        const handleMessage = (event: MessageEvent<{ pluginMessage?: MainMessage }>) => {
            const message = event.data.pluginMessage
            if (!message) return
            if (message.type === 'chunks-ready') {
                requestStyles.current.delete(message.requestId)
                backgroundIds.current.delete(message.requestId)
                for (const chunk of message.chunks) {
                    loadedKeys.current.add(`${chunk.style}/${chunk.category}`)
                }
                setPacks(current => {
                    const next = { ...current }
                    for (const chunk of message.chunks) {
                        const stylePacks = next[chunk.style]
                        if (stylePacks === undefined) {
                            next[chunk.style] = { ...chunk.icons }
                        } else {
                            next[chunk.style] = { ...stylePacks, ...chunk.icons }
                        }
                    }
                    return next
                })
                const arrived = message.chunks[0]?.style
                if (arrived) setFailedStyle(current => (current === arrived ? null : current))
                setFailedOffline(false)
                forgetPending(message.chunks.map(chunk => `${chunk.style}/${chunk.category}`))
                console.log(
                    `[packs-ui] applied #${message.requestId}:`,
                    message.chunks
                        .map(chunk => `${chunk.style}/${chunk.category}=${Object.keys(chunk.icons).length}`)
                        .join(', ')
                )
            }
            if (message.type === 'chunks-dropped') {
                requestStyles.current.delete(message.requestId)
                forgetPending(message.keys)
            }
            if (message.type === 'chunks-failed') {
                const style = requestStyles.current.get(message.requestId)
                requestStyles.current.delete(message.requestId)
                const wasBackground = backgroundIds.current.delete(message.requestId)
                if (wasBackground) {
                    // Background fills fail quietly: the affected
                    // chunks stay pending until the next request.
                    if (style) {
                        forgetPending(
                            [...inFlight.current].filter(key =>
                                key.startsWith(`${style}/`)
                            )
                        )
                    }
                    return
                }
                // Pack requests fail whole, never partially.
                setPending(current => {
                    for (const key of current) inFlight.current.delete(key)
                    return new Set<string>()
                })
                if (style && style !== EMBEDDED_STYLE) setFailedStyle(style)
                setFailedOffline(message.offline)
            }
            if (message.type === 'storage-stats') {
                setStorage({ chunks: message.chunks, bytes: message.bytes })
            }
        }
        window.addEventListener('message', handleMessage)
        return () => window.removeEventListener('message', handleMessage)
    }, [forgetPending])

    const requestChunks = useCallback(
        (
            style: string,
            groups: { category: string; names: string[] }[],
            options?: EnsureOptions
        ) => {
            // The store is flat per style, so loaded chunks are
            // tracked by key, not by probing category names.
            const missing = groups.filter(group => {
                const key = `${style}/${group.category}`
                return !loadedKeys.current.has(key) && !inFlight.current.has(key)
            })
            if (missing.length === 0) return
            const background = options?.background === true
            // Background fills get a negative id space so they
            // never collide with interactive batch ids.
            let id: number
            if (options?.batchId !== undefined) {
                id = options.batchId
            } else if (background) {
                backgroundId.current += 1
                id = -backgroundId.current
            } else {
                requestId.current += 1
                id = requestId.current
            }
            if (!requestStyles.current.has(id)) requestStyles.current.set(id, style)
            if (background) backgroundIds.current.add(id)
            const keys = missing.map(group => `${style}/${group.category}`)
            for (const key of keys) inFlight.current.add(key)
            setPending(current => new Set([...current, ...keys]))
            postMessage({
                type: 'fetch-chunks',
                requestId: id,
                background,
                chunks: missing.map(group => ({
                    style,
                    category: group.category,
                    names: group.names,
                })),
            })
        },
        []
    )

    const ensurePacks = useCallback(
        (style: string, names: readonly string[], options?: EnsureOptions) => {
            if (style === EMBEDDED_STYLE) return
            const byCategory = new Map<string, string[]>()
            for (const name of names) {
                const category = categoryOf(name)
                if (!category) continue
                const group = byCategory.get(category)
                if (group) group.push(name)
                else byCategory.set(category, [name])
            }
            requestChunks(
                style,
                [...byCategory.entries()].map(([category, groupNames]) => ({
                    category,
                    names: groupNames,
                })),
                options
            )
        },
        [categoryOf, requestChunks]
    )

    const refreshStorage = useCallback(() => {
        postMessage({ type: 'get-storage-stats' })
    }, [])

    const getSvg = useCallback(
        (name: string, style: string): string | null => {
            const body = packs[style]?.[name]
            return body === undefined ? null : expandBody(body)
        },
        [packs]
    )

    const hasStyle = useCallback(
        (style: string): boolean => Object.keys(packs[style] ?? {}).length > 0,
        [packs]
    )

    const pendingStyles = useMemo(() => {
        const styles = new Set<string>()
        for (const key of pending) styles.add(key.split('/')[0])
        return [...styles]
    }, [pending])

    const totalIcons = useMemo(() => {
        const linearCategories: Record<string, Record<string, string>> =
            embeddedStyles[EMBEDDED_STYLE] ?? {}
        return Object.values(linearCategories).reduce(
            (sum, category) => sum + Object.keys(category).length,
            0
        )
    }, [embeddedStyles])
    const downloadProgress = useMemo(() => {
        const total = RUNTIME_STYLES.length * totalIcons
        if (total === 0) return 1
        const received = RUNTIME_STYLES.reduce(
            (sum, style) => sum + Object.keys(packs[style] ?? {}).length,
            0
        )
        return Math.min(1, received / total)
    }, [packs, totalIcons])

    const value = useMemo<PacksContextValue>(
        () => ({
            getSvg,
            hasStyle,
            ensurePacks,
            pendingChunks: pending.size,
            pendingStyles,
            failedStyle,
            failedOffline,
            storage,
            refreshStorage,
            downloadProgress,
            downloadComplete: downloadProgress >= 1,
        }),
        [
            downloadProgress,
            ensurePacks,
            failedOffline,
            failedStyle,
            getSvg,
            hasStyle,
            pending.size,
            pendingStyles,
            refreshStorage,
            storage,
        ]
    )

    return <PacksContext.Provider value={value}>{children}</PacksContext.Provider>
}
