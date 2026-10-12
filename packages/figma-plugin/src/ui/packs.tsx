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
import { EMBEDDED_STYLE, expandBody } from '../shared/packs'

export type CategoryBodies = Record<string, Record<string, string>>
export type PackStore = Record<string, CategoryBodies>

type PacksContextValue = {
    /** Complete SVG for one icon, or null while its chunk loads. */
    getSvg: (name: string, style: string) => string | null
    /** True when at least one category of this style is available. */
    hasStyle: (style: string) => boolean
    /** Request the chunks covering these icons in this style. */
    ensurePacks: (style: string, names: readonly string[], batchId?: number) => void
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
    embeddedLinear,
    categoryOf,
    children,
}: {
    version: string
    embeddedLinear: CategoryBodies
    categoryOf: (name: string) => string | undefined
    children: ReactNode
}): React.JSX.Element {
    const [packs, setPacks] = useState<PackStore>(() => ({ [EMBEDDED_STYLE]: embeddedLinear }))
    const [pending, setPending] = useState<ReadonlySet<string>>(() => new Set())
    const [failedStyle, setFailedStyle] = useState<string | null>(null)
    const [failedOffline, setFailedOffline] = useState(false)
    const [storage, setStorage] = useState<{ chunks: number; bytes: number } | null>(null)
    const requestId = useRef(0)
    const inFlight = useRef(new Set<string>())
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
                setPacks(current => {
                    const next = { ...current }
                    for (const chunk of message.chunks) {
                        const stylePacks = next[chunk.style] ?? {}
                        next[chunk.style] = { ...stylePacks, [chunk.category]: chunk.icons }
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
            batchId?: number
        ) => {
            const missing = groups.filter(
                group =>
                    packs[style]?.[group.category] === undefined &&
                    !inFlight.current.has(`${style}/${group.category}`)
            )
            if (missing.length === 0) return
            requestId.current += 1
            const id = batchId ?? requestId.current
            // Siblings share one batch id: keep the first style for error
            // attribution, every message carries its own chunks.
            if (!requestStyles.current.has(id)) requestStyles.current.set(id, style)
            const keys = missing.map(group => `${style}/${group.category}`)
            for (const key of keys) inFlight.current.add(key)
            setPending(current => new Set([...current, ...keys]))
            postMessage({
                type: 'fetch-chunks',
                requestId: id,
                chunks: missing.map(group => ({
                    style,
                    category: group.category,
                    names: group.names,
                })),
            })
        },
        [packs]
    )

    const ensurePacks = useCallback(
        (style: string, names: readonly string[], batchId?: number) => {
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
                batchId
            )
        },
        [categoryOf, requestChunks]
    )

    const refreshStorage = useCallback(() => {
        postMessage({ type: 'get-storage-stats' })
    }, [])

    const getSvg = useCallback(
        (name: string, style: string): string | null => {
            const body = packs[style]?.[categoryOf(name) ?? '']?.[name]
            return body === undefined ? null : expandBody(body)
        },
        [categoryOf, packs]
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
        }),
        [
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
