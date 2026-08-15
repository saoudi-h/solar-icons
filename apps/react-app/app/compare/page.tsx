'use client'

import { Icon as IconifyIcon } from '@iconify/react'
import * as Solar from '@solar-icons/react'
import Link from 'next/link'
import rejectedCandidates from './rejected-candidates.json'
import verifiedMatches from './verified-matches.json'
import {
    createElement,
    useDeferredValue,
    useEffect,
    useMemo,
    useState,
    useSyncExternalStore,
} from 'react'
import type { ComponentType } from 'react'
import {
    ICONIFY_API,
    SOLAR_ICONS,
    SOLAR_STYLES,
    SOURCE_DEFINITIONS,
    candidatesFor,
    collectionSnapshot,
    prepareCollection,
    type Candidate,
    type CollectionSnapshot,
    type PreparedCollection,
    type SolarIconRecord,
    type SolarStyle,
    type SourceDefinition,
    type SourceId,
    type IconifyCollectionResponse,
} from './data'

type CollectionState =
    | { status: 'loading' }
    | { status: 'ready'; snapshot: CollectionSnapshot }
    | { status: 'error'; message: string }

type ReviewDecision = 'confirmed' | 'related' | 'rejected'
type ReviewFilter = 'all' | 'unreviewed' | ReviewDecision
type WorkspaceView = 'single' | 'batch'
type VerifiedDecision = 'equivalent' | 'variant' | 'related' | 'no-match'

interface VerifiedMatch {
    solar: string
    source: SourceId
    reference: string | null
    decision: VerifiedDecision
    note: string
}

interface RejectedCandidate {
    solar: string
    source: SourceId
    reference: string
    reason: string
}

const VERIFIED_MATCHES = verifiedMatches.matches as VerifiedMatch[]
const REJECTED_CANDIDATES = rejectedCandidates.entries as RejectedCandidate[]
const REJECTED_BY_KEY = new Map(
    REJECTED_CANDIDATES.map(entry => [candidateKey(entry.solar, entry.source, entry.reference), entry] as const)
)
const VERIFIED_BY_KEY = new Map(
    VERIFIED_MATCHES
        .filter(match => match.reference !== null)
        .map(match => [candidateKey(match.solar, match.source, match.reference as string), match] as const)
)

function verifiedSlot(solar: string, source: SourceId): VerifiedMatch | undefined {
    return VERIFIED_MATCHES.find(match => match.solar === solar && match.source === source)
}

type CandidateWithSource = Candidate & {
    key: string
    source: SourceDefinition
    decision?: ReviewDecision
    verified?: VerifiedMatch
}

type SolarIconProps = {
    size?: number
    color?: string
    strokeWidth?: number
    secondaryColor?: string
    secondaryOpacity?: number
}

const SolarComponents = Solar as unknown as Record<
    string,
    ComponentType<SolarIconProps> | undefined
>

const INITIAL_COLLECTION_STATE = SOURCE_DEFINITIONS.reduce(
    (result, source) => {
        result[source.id] = { status: 'loading' }
        return result
    },
    {} as Record<SourceId, CollectionState>
)

const COLLECTION_CACHE_PREFIX = 'solar-icon-compare:collection:v3:'
const REVIEW_STORAGE_KEY = 'solar-icon-compare:visual-review:v1'
const REVIEW_EVENT = 'solar-icon-compare:visual-review-change'

const REVIEW_LABELS: Record<ReviewFilter, string> = {
    all: 'All icons',
    unreviewed: 'Needs visual review',
    confirmed: 'Confirmed equivalent',
    related: 'Related concept',
    rejected: 'Rejected match',
}

const initialSolarName = SOLAR_ICONS.find(icon => icon.name === 'bell')?.name ?? SOLAR_ICONS[0].name

const reviewStore = {
    getSnapshot: () => {
        if (typeof window === 'undefined') return ''
        return window.localStorage.getItem(REVIEW_STORAGE_KEY) ?? ''
    },
    getServerSnapshot: () => '',
    subscribe: (listener: () => void) => {
        if (typeof window === 'undefined') return () => undefined
        window.addEventListener('storage', listener)
        window.addEventListener(REVIEW_EVENT, listener)
        return () => {
            window.removeEventListener('storage', listener)
            window.removeEventListener(REVIEW_EVENT, listener)
        }
    },
    set: (value: Record<string, ReviewDecision>) => {
        if (typeof window === 'undefined') return
        window.localStorage.setItem(REVIEW_STORAGE_KEY, JSON.stringify(value))
        window.dispatchEvent(new Event(REVIEW_EVENT))
    },
}

function parseReview(value: string): Record<string, ReviewDecision> {
    try {
        const parsed = JSON.parse(value || '{}') as unknown
        if (!parsed || typeof parsed !== 'object' || Array.isArray(parsed)) return {}

        return Object.fromEntries(
            Object.entries(parsed).filter(([, decision]) => (
                decision === 'confirmed' || decision === 'related' || decision === 'rejected'
            ))
        ) as Record<string, ReviewDecision>
    } catch {
        return {}
    }
}

function candidateKey(iconName: string, sourceId: SourceId, sourceName: string): string {
    return `${iconName}::${sourceId}::${sourceName}`
}

function formatNumber(value: number): string {
    return new Intl.NumberFormat('en-US').format(value)
}

function displayCategory(category: string | undefined): string | undefined {
    if (!category || category === 'uncategorized') return undefined
    return category.replaceAll('-', ' ')
}

function SolarGlyph({ icon, style, size = 32, color = '#171714' }: { icon: SolarIconRecord; style: SolarStyle; size?: number; color?: string }) {
    const componentName = icon.name
        .split('-')
        .map(part => part.charAt(0).toUpperCase() + part.slice(1))
        .join('')
    const Component = SolarComponents[`${componentName}${style}Icon`]

    return Component
        ? createElement(Component, { size, color })
        : <span className="text-xs text-neutral-400">?</span>
}

function SolarPreview({ icon, style, size = 180 }: { icon: SolarIconRecord; style: SolarStyle; size?: number }) {
    return <SolarGlyph icon={icon} style={style} size={size} color="#171714" />
}

function SourcePreview({ source, name, size = 44 }: { source: SourceDefinition; name: string; size?: number }) {
    return (
        <IconifyIcon
            icon={`${source.prefix}:${name}`}
            width={size}
            height={size}
            aria-hidden="true"
        />
    )
}

function SourceStatus({ source, state }: { source: SourceDefinition; state: CollectionState }) {
    const status = state.status === 'ready'
        ? `${formatNumber(state.snapshot.total)} names`
        : state.status === 'error'
            ? 'Unavailable'
            : 'Loading'

    return (
        <a
            href={source.url}
            target="_blank"
            rel="noreferrer"
            className="
              group flex items-center gap-2 text-xs text-neutral-400
              transition-colors
              hover:text-neutral-200
            "
        >
            <span className={`
              size-1.5 rounded-full
              ${state.status === 'ready' ? `bg-emerald-400` : state.status === 'error' ? `
                bg-rose-400
              ` : `animate-pulse bg-amber-300`}
            `} />
            <span className="
              font-medium text-neutral-300
              group-hover:text-white
            ">{source.label}</span>
            <span>{status}</span>
        </a>
    )
}

function CandidateCard({
    candidate,
    icon,
    style,
    selected,
    onSelect,
}: {
    candidate: CandidateWithSource
    icon: SolarIconRecord
    style: SolarStyle
    selected: boolean
    onSelect: () => void
}) {
    return (
        <button
            type="button"
            onClick={onSelect}
            aria-pressed={selected}
            className={`
              group w-full rounded-2xl border p-3 text-left transition-colors
              active:scale-[0.99]
              ${selected ? `border-amber-300 bg-amber-300 text-neutral-950` : `
                border-neutral-800 bg-neutral-950/70 text-neutral-200
                hover:border-neutral-600
              `}
            `}
        >
            <div className="flex items-start justify-between gap-3">
                <div className={`
                  flex size-12 items-center justify-center rounded-xl
                  ${selected ? `bg-neutral-950 text-white` : `
                    bg-[#f2f0e8] text-neutral-950
                  `}
                `}>
                    <SourcePreview source={candidate.source} name={candidate.sourceName} size={34} />
                </div>
                <span className={`
                  text-[10px] font-semibold tracking-[0.12em] uppercase
                  ${selected ? `text-neutral-800` : `text-amber-300`}
                `}>{candidate.label}</span>
            </div>
            <div className="mt-3 min-w-0">
                <code className="block truncate text-sm">{candidate.sourceName}</code>
                <div className={`
                  mt-1 truncate text-[11px]
                  ${selected ? `text-neutral-700` : `text-neutral-400`}
                `}>
                    {candidate.label}{displayCategory(candidate.sourceCategory) ? ` · ${displayCategory(candidate.sourceCategory)}` : ''}
                </div>
            </div>
            {candidate.verified && <div className={`
              mt-3 rounded-lg px-2 py-1.5 text-[10px] font-medium
              ${selected ? `bg-neutral-950/10 text-neutral-800` : `
                border border-emerald-900/70 text-emerald-300
              `}
            `}>Reviewed: {candidate.verified.decision}</div>}
            <div className={`
              mt-3 text-[10px]
              ${selected ? 'text-neutral-700' : `text-neutral-400`}
            `}>
                Compare visually · {icon.displayName} / {style}
            </div>
        </button>
    )
}

function RenderedComparison({ icon, style, candidate }: { icon: SolarIconRecord; style: SolarStyle; candidate: CandidateWithSource | undefined }) {
    return (
        <div className="
          rounded-2xl border border-neutral-800 bg-[#f2f0e8] p-3
          text-neutral-950
        ">
            <div className="
              flex items-center justify-between border-b border-neutral-300 px-2
              pb-3 text-[10px] font-semibold tracking-[0.14em] text-neutral-600
              uppercase
            ">
                <span>Rendered comparison</span>
                <span>Qualitative review</span>
            </div>
            <div className="
              mt-3 grid min-h-[280px] gap-3
              sm:grid-cols-2
            ">
                <div className="
                  flex flex-col rounded-xl border border-neutral-300 bg-white
                  p-4
                ">
                    <div className="
                      flex items-center justify-between text-[10px]
                      font-semibold tracking-[0.12em] text-neutral-600 uppercase
                    "><span>Solar</span><span>{style}</span></div>
                    <div className="
                      flex flex-1 items-center justify-center py-7
                    "><div className="
                      size-40
                      sm:size-48
                    "><SolarPreview icon={icon} style={style} /></div></div>
                    <code className="truncate text-xs text-neutral-600">{icon.name}</code>
                </div>
                <div className="
                  flex flex-col rounded-xl border border-neutral-300 bg-white
                  p-4
                ">
                    <div className="
                      flex items-center justify-between text-[10px]
                      font-semibold tracking-[0.12em] text-neutral-600 uppercase
                    "><span>{candidate?.source.label ?? 'Reference'}</span><span>{candidate?.label ?? 'No lead'}</span></div>
                    <div className="
                      flex flex-1 items-center justify-center py-7
                    ">{candidate ? <SourcePreview source={candidate.source} name={candidate.sourceName} size={156} /> : <span className="
                      text-sm text-neutral-400
                    ">No semantic lead yet</span>}</div>
                    <code className="truncate text-xs text-neutral-600">{candidate?.sourceName ?? 'Select a candidate below'}</code>
                </div>
            </div>
            <p className="
              mt-3 border-t border-neutral-300 px-2 pt-3 text-[11px]/5
              text-neutral-600
            ">The displayed candidate is a lead, not a verdict. Classify the concept and its specificity, not just the silhouette.</p>
        </div>
    )
}

function DecisionButton({
    label,
    active,
    tone,
    onClick,
}: {
    label: string
    active: boolean
    tone: 'green' | 'blue' | 'red'
    onClick: () => void
}) {
    const colors = {
        green: active ? 'border-emerald-300 bg-emerald-300 text-neutral-950' : 'border-emerald-900 text-emerald-300 hover:border-emerald-500',
        blue: active ? 'border-sky-300 bg-sky-300 text-neutral-950' : 'border-sky-900 text-sky-300 hover:border-sky-500',
        red: active ? 'border-rose-300 bg-rose-300 text-neutral-950' : 'border-rose-900 text-rose-300 hover:border-rose-500',
    }[tone]

    return (
        <button type="button" onClick={onClick} className={`
          min-h-10 rounded-xl border px-3 text-xs font-medium transition-colors
          active:scale-[0.98]
          ${colors}
        `}>
            {label}
        </button>
    )
}

function BatchReview({
    icons,
    style,
    preparedCollections,
    onOpenIcon,
}: {
    icons: SolarIconRecord[]
    style: SolarStyle
    preparedCollections: Partial<Record<SourceId, PreparedCollection>>
    onOpenIcon: (icon: SolarIconRecord) => void
}) {
    const [visibleCount, setVisibleCount] = useState(12)
    const visibleIcons = icons.slice(0, visibleCount)

    return (
        <section className="
          mt-6 rounded-2xl border border-neutral-800 bg-neutral-950/50 p-3
          sm:p-5
        ">
            <div className="
              flex flex-col gap-3 border-b border-neutral-800 pb-4
              sm:flex-row sm:items-end sm:justify-between
            ">
                <div>
                    <div className="
                      text-[10px] font-semibold tracking-[0.16em] text-amber-300
                      uppercase
                    ">Contact sheet review</div>
                    <h2 className="
                      mt-2 text-2xl font-semibold tracking-[-0.03em] text-white
                    ">Compare a group, not a queue</h2>
                    <p className="mt-2 max-w-2xl text-xs/5 text-neutral-400">Each row is a visual review unit. Retrieval leads are intentionally broad; the verdict comes from comparing the rendered concept and its specificity, not from the retrieval signal.</p>
                </div>
                <div className="text-xs text-neutral-400">Showing {formatNumber(visibleIcons.length)} of {formatNumber(icons.length)} filtered icons</div>
            </div>

            <div className="
              mt-5 overflow-x-auto rounded-xl border border-neutral-800
            ">
                <div className="min-w-[1050px]">
                    <div className="
                      grid grid-cols-[220px_repeat(5,minmax(150px,1fr))]
                      border-b border-neutral-800 bg-neutral-900/80 px-2 py-3
                    ">
                        <div className="
                          px-2 text-[10px] font-semibold tracking-[0.14em]
                          text-amber-300 uppercase
                        ">Solar concept</div>
                        {SOURCE_DEFINITIONS.map(source => <div key={source.id} className="
                          px-2 text-[10px] font-semibold tracking-[0.12em]
                          text-neutral-300 uppercase
                        ">{source.label}</div>)}
                    </div>
                    {visibleIcons.map(icon => (
                        <div key={icon.name} className="
                          grid grid-cols-[220px_repeat(5,minmax(150px,1fr))]
                          border-b border-neutral-800/80 p-2
                          last:border-b-0
                          hover:bg-neutral-900/40
                        ">
                            <button type="button" onClick={() => onOpenIcon(icon)} className="
                              flex min-w-0 items-center gap-3 rounded-xl p-2
                              text-left transition-colors
                              hover:bg-neutral-800/70
                            ">
                                <span className="
                                  flex size-10 shrink-0 items-center
                                  justify-center rounded-lg bg-[#f2f0e8]
                                  text-neutral-950
                                "><SolarGlyph icon={icon} style={style} size={28} /></span>
                                <span className="min-w-0"><span className="
                                  block truncate text-xs font-medium
                                  text-neutral-100
                                ">{icon.displayName}</span><span className="
                                  mt-1 block truncate text-[10px]
                                  text-neutral-400
                                ">{icon.category}</span></span>
                            </button>
                            {SOURCE_DEFINITIONS.map(source => {
                                const collection = preparedCollections[source.id]
                                const verified = verifiedSlot(icon.name, source.id)
                                const leads = collection
                                    ? candidatesFor(icon, collection, 2).filter(lead => !REJECTED_BY_KEY.has(candidateKey(icon.name, source.id, lead.sourceName)))
                                    : []

                                return (
                                    <div key={source.id} className="min-w-0 p-2">
                                        {verified?.decision === 'no-match' ? <span className="
                                          block rounded-lg border
                                          border-rose-900/70 bg-rose-950/20 px-2
                                          py-4 text-center text-[10px]
                                          text-rose-200
                                        ">No verified match</span> : verified?.reference ? <button type="button" onClick={() => onOpenIcon(icon)} title={`${source.label}: ${verified.reference}`} className="
                                          min-w-0 rounded-lg border
                                          border-emerald-900/70
                                          bg-emerald-950/20 p-2 text-left
                                          transition-colors
                                          hover:border-emerald-300/70
                                        "><span className="
                                          flex size-9 items-center
                                          justify-center rounded-md bg-[#f2f0e8]
                                          text-neutral-950
                                        "><SourcePreview source={source} name={verified.reference} size={26} /></span><code className="
                                          mt-2 block truncate text-[10px]
                                          text-emerald-100
                                        ">{verified.reference}</code><span className="
                                          mt-1 block truncate text-[9px]
                                          text-emerald-200/80
                                        ">Verified {verified.decision}</span></button> : leads.length > 0 ? <div className="
                                          grid grid-cols-2 gap-1.5
                                        ">{leads.map(lead => <button key={lead.sourceName} type="button" onClick={() => onOpenIcon(icon)} title={`${source.label}: ${lead.sourceName}`} className="
                                          min-w-0 rounded-lg border
                                          border-neutral-800 bg-neutral-950 p-2
                                          text-left transition-colors
                                          hover:border-amber-300/60
                                        "><span className="
                                          flex size-9 items-center
                                          justify-center rounded-md bg-[#f2f0e8]
                                          text-neutral-950
                                        "><SourcePreview source={source} name={lead.sourceName} size={26} /></span><code className="
                                          mt-2 block truncate text-[10px]
                                          text-neutral-200
                                        ">{lead.sourceName}</code><span className="
                                          mt-1 block truncate text-[9px]
                                          text-neutral-400
                                        ">{lead.label}</span></button>)}</div> : <span className="
                                          block rounded-lg border border-dashed
                                          border-neutral-800 px-2 py-4
                                          text-center text-[10px]
                                          text-neutral-400
                                        ">No lead</span>}
                                    </div>
                                )
                            })}
                        </div>
                    ))}
                </div>
            </div>

            <div className="mt-4 flex items-center justify-between gap-3">
                <p className="text-[11px] text-neutral-400">Leads are not verdicts. The goal of this sheet is to let the visual reviewer reject wrong concepts quickly.</p>
                {visibleCount < icons.length && <button type="button" onClick={() => setVisibleCount(value => Math.min(value + 12, icons.length))} className="
                  min-h-10 shrink-0 rounded-xl border border-neutral-700 px-3
                  text-xs font-medium text-neutral-200 transition-colors
                  hover:border-amber-300 hover:text-amber-300
                ">Load next group</button>}
            </div>
        </section>
    )
}

async function loadCollection(source: SourceDefinition): Promise<CollectionSnapshot> {
    const cacheKey = `${COLLECTION_CACHE_PREFIX}${source.id}`

    try {
        const cached = window.localStorage.getItem(cacheKey)
        if (cached) return JSON.parse(cached) as CollectionSnapshot
    } catch {
        // Cache failures should not block the research tool.
    }

    const response = await fetch(`${ICONIFY_API}/collection?prefix=${source.prefix}`)
    if (!response.ok) throw new Error(`Iconify returned ${response.status}`)

    const snapshot = collectionSnapshot(await response.json() as IconifyCollectionResponse)

    try {
        window.localStorage.setItem(cacheKey, JSON.stringify(snapshot))
    } catch {
        // Caching is an optimization only.
    }

    return snapshot
}

export default function ComparePage() {
    const [style, setStyle] = useState<SolarStyle>('Linear')
    const [view, setView] = useState<WorkspaceView>('single')
    const [searchQuery, setSearchQuery] = useState('')
    const [selectedSolarName, setSelectedSolarName] = useState(initialSolarName)
    const [selectedCandidateKey, setSelectedCandidateKey] = useState('')
    const [reviewFilter, setReviewFilter] = useState<ReviewFilter>('all')
    const [collectionStates, setCollectionStates] = useState<Record<SourceId, CollectionState>>(INITIAL_COLLECTION_STATE)
    const reviewSnapshot = useSyncExternalStore(
        reviewStore.subscribe,
        reviewStore.getSnapshot,
        reviewStore.getServerSnapshot
    )
    const deferredSearch = useDeferredValue(searchQuery)
    const reviews = useMemo(() => parseReview(reviewSnapshot), [reviewSnapshot])

    useEffect(() => {
        let active = true

        for (const source of SOURCE_DEFINITIONS) {
            loadCollection(source)
                .then(snapshot => {
                    if (!active) return
                    setCollectionStates(current => ({ ...current, [source.id]: { status: 'ready', snapshot } }))
                })
                .catch(error => {
                    if (!active) return
                    setCollectionStates(current => ({
                        ...current,
                        [source.id]: {
                            status: 'error',
                            message: error instanceof Error ? error.message : 'Unable to load',
                        },
                    }))
                })
        }

        return () => {
            active = false
        }
    }, [])

    const filteredSolar = useMemo(() => {
        const query = deferredSearch.trim().toLowerCase()

        return SOLAR_ICONS.filter(icon => {
            if (query && !icon.searchText.includes(query)) return false
            if (reviewFilter === 'all') return true

            const decisions = Object.entries(reviews)
                .filter(([key]) => key.startsWith(`${icon.name}::`))
                .map(([, decision]) => decision)

            if (reviewFilter === 'unreviewed') return decisions.length === 0
            return decisions.includes(reviewFilter)
        })
    }, [deferredSearch, reviewFilter, reviews])

    const activeSolar = useMemo(
        () => filteredSolar.find(icon => icon.name === selectedSolarName) ?? filteredSolar.at(0) ?? null,
        [filteredSolar, selectedSolarName]
    )

    const preparedCollections = useMemo(() => {
        const result: Partial<Record<SourceId, PreparedCollection>> = {}

        for (const source of SOURCE_DEFINITIONS) {
            const state = collectionStates[source.id]
            if (state.status === 'ready') result[source.id] = prepareCollection(state.snapshot)
        }

        return result
    }, [collectionStates])

    const candidateGroups = useMemo(() => {
        if (!activeSolar) return []

        return SOURCE_DEFINITIONS.map(source => {
            const collection = preparedCollections[source.id]
            const verified = verifiedSlot(activeSolar.name, source.id)
            const candidates = verified?.decision === 'no-match'
                ? []
                : collection
                    ? candidatesFor(activeSolar, collection).filter(candidate => !REJECTED_BY_KEY.has(candidateKey(activeSolar.name, source.id, candidate.sourceName)))
                    : []

            return {
                source,
                candidates: candidates.map(candidate => ({
                    ...candidate,
                    source,
                    key: candidateKey(activeSolar.name, source.id, candidate.sourceName),
                    decision: reviews[candidateKey(activeSolar.name, source.id, candidate.sourceName)],
                    verified: VERIFIED_BY_KEY.get(candidateKey(activeSolar.name, source.id, candidate.sourceName)),
                })),
            }
        })
    }, [activeSolar, preparedCollections, reviews])

    const candidates = useMemo(
        () => candidateGroups.flatMap(group => group.candidates),
        [candidateGroups]
    )

    const selectedCandidate = candidates.find(candidate => candidate.key === selectedCandidateKey) ?? candidates.at(0)
    const readySources = SOURCE_DEFINITIONS.filter(source => collectionStates[source.id].status === 'ready').length
    const reviewCount = Object.keys(reviews).length

    function chooseSolar(icon: SolarIconRecord) {
        setSelectedSolarName(icon.name)
        setSelectedCandidateKey('')
    }

    function setDecision(decision: ReviewDecision) {
        if (!selectedCandidate || !activeSolar) return
        reviewStore.set({ ...reviews, [selectedCandidate.key]: decision })
    }

    function exportReview() {
        const blob = new Blob([JSON.stringify(reviews, null, 2)], { type: 'application/json' })
        const href = URL.createObjectURL(blob)
        const anchor = document.createElement('a')
        anchor.href = href
        anchor.download = 'solar-visual-review.json'
        anchor.click()
        URL.revokeObjectURL(href)
    }

    return (
        <main className="min-h-screen bg-[#111110] text-[#e9e7df]">
            <div className="
              mx-auto max-w-[1680px] px-4 py-5
              sm:px-7
              lg:px-10 lg:py-8
            ">
                <header className="
                  flex flex-col gap-6 border-b border-neutral-800 pb-6
                  lg:flex-row lg:items-end lg:justify-between
                ">
                    <div>
                        <Link href="/" className="
                          text-xs font-semibold tracking-[0.18em] text-amber-300
                          uppercase transition-colors
                          hover:text-white
                        ">
                            ← React lab
                        </Link>
                        <div className="mt-5 flex items-end gap-3">
                            <h1 className="
                              text-4xl font-semibold tracking-[-0.04em]
                              text-white
                              sm:text-6xl
                            ">Parity desk</h1>
                            <span className="
                              mb-2 rounded-full border border-amber-300/30 px-2
                              py-1 text-[10px] font-semibold tracking-[0.14em]
                              text-amber-300 uppercase
                            ">Research</span>
                        </div>
                        <p className="mt-3 max-w-2xl text-sm/6 text-neutral-400">
                            Find visual equivalents across five reference sets. Names create a shortlist; only a rendered side-by-side review can establish an equivalence.
                        </p>
                    </div>
                    <div className="
                      flex flex-col gap-3 text-xs text-neutral-400
                      lg:items-end
                    ">
                        <div className="flex items-center gap-3">
                            <span><span className="text-white">{formatNumber(readySources)}</span>/5 sources ready</span>
                            <span className="size-1 rounded-full bg-neutral-700" />
                            <span><span className="text-white">{formatNumber(reviewCount)}</span> visual decisions</span>
                            <span><span className="text-white">{formatNumber(VERIFIED_MATCHES.length)}</span> verified maps</span>
                            <button type="button" onClick={exportReview} className="
                              text-amber-300 underline decoration-amber-300/30
                              underline-offset-4 transition-colors
                              hover:text-white
                            ">Export JSON</button>
                        </div>
                        <div className="
                          flex flex-wrap gap-x-4 gap-y-2
                          lg:justify-end
                        ">
                            {SOURCE_DEFINITIONS.map(source => <SourceStatus key={source.id} source={source} state={collectionStates[source.id]} />)}
                        </div>
                        <div className="
                          flex gap-2
                          lg:justify-end
                        ">
                            <button type="button" aria-pressed={view === 'single'} onClick={() => setView('single')} className={`
                              min-h-9 rounded-lg border px-3 text-xs
                              transition-colors
                              ${view === 'single' ? `
                                border-amber-300 bg-amber-300 text-neutral-950
                              ` : `
                                border-neutral-700 text-neutral-400
                                hover:border-neutral-400 hover:text-white
                              `}
                            `}>Single detail</button>
                            <button type="button" aria-pressed={view === 'batch'} onClick={() => setView('batch')} className={`
                              min-h-9 rounded-lg border px-3 text-xs
                              transition-colors
                              ${view === 'batch' ? `
                                border-amber-300 bg-amber-300 text-neutral-950
                              ` : `
                                border-neutral-700 text-neutral-400
                                hover:border-neutral-400 hover:text-white
                              `}
                            `}>Contact sheet</button>
                        </div>
                    </div>
                </header>

                {view === 'batch' && <BatchReview icons={filteredSolar} style={style} preparedCollections={preparedCollections} onOpenIcon={icon => { setSelectedSolarName(icon.name); setSelectedCandidateKey(''); setView('single') }} />}

                {view === 'single' && <div className="
                  mt-6 grid gap-5
                  lg:grid-cols-[286px_minmax(0,1fr)]
                ">
                    <aside className="
                      min-w-0 rounded-2xl border border-neutral-800
                      bg-neutral-950/45 p-3
                      lg:sticky lg:top-5 lg:h-[calc(100vh-40px)]
                    ">
                        <div className="
                          flex items-center justify-between px-2 py-1
                        ">
                            <div>
                                <div className="
                                  text-[10px] font-semibold tracking-[0.16em]
                                  text-neutral-400 uppercase
                                ">Solar inventory</div>
                                <div className="mt-1 text-xs text-neutral-400">{formatNumber(filteredSolar.length)} visible of {formatNumber(SOLAR_ICONS.length)}</div>
                            </div>
                              <span className="text-[10px] text-neutral-400">No pages</span>
                        </div>

                        <div className="mt-4 space-y-2">
                            <label className="sr-only" htmlFor="solar-search">Search Solar icons</label>
                            <input
                                id="solar-search"
                                type="search"
                                value={searchQuery}
                                onChange={event => setSearchQuery(event.currentTarget.value)}
                                placeholder="Search icon, tag, category"
                                className="
                                  min-h-11 w-full rounded-xl border
                                  border-neutral-800 bg-[#151514] px-3 text-sm
                                  text-white outline-none
                                  placeholder:text-neutral-700
                                  focus:border-amber-300/70
                                "
                            />
                            <select
                                aria-label="Review filter"
                                value={reviewFilter}
                                onChange={event => setReviewFilter(event.currentTarget.value as ReviewFilter)}
                                className="
                                  min-h-10 w-full rounded-xl border
                                  border-neutral-800 bg-[#151514] px-3 text-xs
                                  text-neutral-400 outline-none
                                  focus:border-amber-300/70
                                "
                            >
                                {(Object.keys(REVIEW_LABELS) as ReviewFilter[]).map(filter => <option key={filter} value={filter}>{REVIEW_LABELS[filter]}</option>)}
                            </select>
                        </div>

                        <div className="
                          mt-4 h-[calc(100%-142px)] space-y-0.5 overflow-y-auto
                          pr-1
                        ">
                            {filteredSolar.map(icon => (
                                <button
                                    type="button"
                                    key={icon.name}
                                    onClick={() => chooseSolar(icon)}
                                    aria-current={activeSolar?.name === icon.name}
                                    className={`
                                      flex min-h-12 w-full items-center gap-3
                                      rounded-xl px-2.5 text-left
                                      transition-colors
                                      active:scale-[0.99]
                                      ${activeSolar?.name === icon.name ? `
                                        bg-amber-300 text-neutral-950
                                      ` : `
                                        text-neutral-400
                                        hover:bg-neutral-900 hover:text-white
                                      `}
                                    `}
                                >
                                    <span className={`
                                      flex size-8 shrink-0 items-center
                                      justify-center rounded-lg
                                      ${activeSolar?.name === icon.name ? `
                                        bg-neutral-950 text-amber-300
                                      ` : `bg-neutral-900 text-neutral-300`}
                                    `}>
                                        <SolarGlyph icon={icon} style={style} size={22} color="currentColor" />
                                    </span>
                                    <span className="min-w-0">
                                        <span className="
                                          block truncate text-xs font-medium
                                        ">{icon.displayName}</span>
                                        <span className={`
                                          block truncate text-[10px]
                                          ${activeSolar?.name === icon.name ? `
                                            text-neutral-700
                                          ` : `text-neutral-400`}
                                        `}>{icon.category}</span>
                                    </span>
                                </button>
                            ))}
                            {filteredSolar.length === 0 && <div className="
                              px-2 py-8 text-center text-xs text-neutral-400
                            ">No Solar icon matches.</div>}
                        </div>
                    </aside>

                    <section className="min-w-0">
                        {activeSolar ? (
                            <>
                                <div className="
                                  flex flex-col gap-4 border-b
                                  border-neutral-800 pb-5
                                  sm:flex-row sm:items-end sm:justify-between
                                ">
                                    <div>
                                        <div className="
                                          text-[10px] font-semibold
                                          tracking-[0.16em] text-amber-300
                                          uppercase
                                        ">Selected Solar icon</div>
                                        <div className="
                                          mt-2 flex flex-wrap items-baseline
                                          gap-x-3 gap-y-1
                                        ">
                                            <h2 className="
                                              text-3xl font-semibold
                                              tracking-[-0.03em] text-white
                                            ">{activeSolar.displayName}</h2>
                                            <code className="
                                              text-xs text-neutral-400
                                            ">{activeSolar.name}</code>
                                        </div>
                                        <div className="
                                          mt-2 flex flex-wrap gap-1.5
                                        ">
                                            <span className="
                                              rounded-full bg-neutral-900 px-2
                                              py-1 text-[10px] text-neutral-400
                                            ">{activeSolar.category}</span>
                                            {activeSolar.tags.slice(0, 5).map(tag => <span key={tag} className="
                                              rounded-full border
                                              border-neutral-800 px-2 py-1
                                              text-[10px] text-neutral-400
                                            ">{tag}</span>)}
                                        </div>
                                    </div>
                                    <label className="
                                      flex items-center gap-2 text-xs
                                      text-neutral-400
                                    ">
                                        <span>Solar style</span>
                                        <select value={style} onChange={event => setStyle(event.currentTarget.value as SolarStyle)} className="
                                          min-h-10 rounded-xl border
                                          border-neutral-800 bg-neutral-950 px-3
                                          text-xs text-neutral-300 outline-none
                                          focus:border-amber-300/70
                                        ">
                                            {SOLAR_STYLES.map(value => <option key={value} value={value}>{value}</option>)}
                                        </select>
                                    </label>
                                </div>

                                <div className="
                                  mt-5 grid gap-5
                                  xl:grid-cols-[minmax(0,1fr)_340px]
                                ">
                                    <div className="min-w-0">
                                        <RenderedComparison icon={activeSolar} style={style} candidate={selectedCandidate} />

                                        <div className="
                                          mt-6 flex items-end justify-between
                                          border-b border-neutral-800 pb-3
                                        ">
                                            <div>
                                                <div className="
                                                  text-[10px] font-semibold
                                                  tracking-[0.16em]
                                                  text-neutral-400 uppercase
                                                ">Candidate leads</div>
                                                <p className="
                                                  mt-1 text-xs text-neutral-400
                                                ">Retrieval leads only. A lead is not a verdict; inspect the concept and specificity in the rendered comparison.</p>
                                            </div>
                                            <span className="
                                              text-xs text-neutral-400
                                              tabular-nums
                                            ">{formatNumber(candidates.length)} leads</span>
                                        </div>

                                        <div className="mt-4 space-y-6">
                                            {candidateGroups.map(group => (
                                                <section key={group.source.id}>
                                                    <div className="
                                                      mb-2 flex items-center
                                                      justify-between
                                                    ">
                                                        <a href={group.source.url} target="_blank" rel="noreferrer" className="
                                                          text-xs font-semibold
                                                          text-neutral-300
                                                          transition-colors
                                                          hover:text-amber-300
                                                        ">{group.source.label} ↗</a>
                                                        <span className="
                                                          text-[10px]
                                                          text-neutral-400
                                                        ">{group.candidates.length ? 'retrieval leads' : 'no retrieval lead'}</span>
                                                    </div>
                                                    {group.candidates.length > 0 ? (
                                                        <div className="
                                                          grid gap-2
                                                          sm:grid-cols-2
                                                        ">
                                                            {group.candidates.map(candidate => <CandidateCard key={candidate.key} candidate={candidate} icon={activeSolar} style={style} selected={selectedCandidate?.key === candidate.key} onSelect={() => setSelectedCandidateKey(candidate.key)} />)}
                                                        </div>
                                                    ) : (
                                                        <div className="
                                                          rounded-xl border
                                                          border-dashed
                                                          border-neutral-800
                                                          px-3 py-5 text-xs
                                                          text-neutral-400
                                                        ">No retrieval lead was found.</div>
                                                    )}
                                                </section>
                                            ))}
                                        </div>
                                    </div>

                                    <aside className="
                                      h-fit rounded-2xl border
                                      border-neutral-800 bg-neutral-950/55 p-4
                                      xl:sticky xl:top-5
                                    ">
                                        <div className="
                                          text-[10px] font-semibold
                                          tracking-[0.16em] text-neutral-400
                                          uppercase
                                        ">Review decision</div>
                                        {selectedCandidate ? (
                                            <>
                                                <div className="
                                                  mt-4 flex items-center gap-3
                                                ">
                                                    <div className="
                                                      flex size-12 items-center
                                                      justify-center rounded-xl
                                                      bg-[#f2f0e8]
                                                      text-neutral-950
                                                    "><SourcePreview source={selectedCandidate.source} name={selectedCandidate.sourceName} size={34} /></div>
                                                    <div className="min-w-0"><div className="
                                                      text-sm font-medium
                                                      text-white
                                                    ">{selectedCandidate.sourceName}</div><div className="
                                                      mt-1 text-xs
                                                      text-neutral-400
                                                    ">{selectedCandidate.source.label} · {selectedCandidate.label}</div></div>
                                                </div>
                                                <div className="
                                                  mt-5 space-y-2 border-y
                                                  border-neutral-800 py-4
                                                ">
                                                    <div className="
                                                      flex items-center
                                                      justify-between pt-1
                                                      text-[11px]
                                                    "><span className="
                                                      text-neutral-400
                                                    ">Direct same name</span><span className={selectedCandidate.evidence.directName ? `
                                                      text-amber-300
                                                    ` : `text-neutral-700`}>{selectedCandidate.evidence.directName ? 'yes' : 'no'}</span></div>
                                                    <div className="
                                                      text-[11px]
                                                      text-neutral-400
                                                    ">Name terms: <span className="
                                                      text-neutral-200
                                                    ">{selectedCandidate.evidence.nameHits.join(', ') || 'none'}</span></div>
                                                    <div className="
                                                      text-[11px]
                                                      text-neutral-400
                                                    ">Context terms: <span className="
                                                      text-neutral-200
                                                    ">{selectedCandidate.evidence.contextHits.slice(0, 6).join(', ') || 'none'}</span></div>
                                                </div>
                                                {selectedCandidate.verified && <div className="
                                                  mt-4 rounded-xl border
                                                  border-emerald-900/70
                                                  bg-emerald-950/30 p-3 text-xs
                                                  text-emerald-200
                                                "><div className="
                                                  font-semibold
                                                  tracking-[0.12em] uppercase
                                                ">Verified visual map: {selectedCandidate.verified.decision}</div><p className="
                                                  mt-2 leading-5
                                                  text-emerald-200/80
                                                ">{selectedCandidate.verified.note}</p></div>}
                                                <div className="
                                                  mt-4 text-xs/5
                                                  text-neutral-400
                                                ">This lead explains why the candidate is here. The decision must account for the icon’s exact concept and specificity.</div>
                                                <div className="mt-4 grid gap-2">
                                                    <DecisionButton label="Confirm equivalent" tone="green" active={selectedCandidate.decision === 'confirmed'} onClick={() => setDecision('confirmed')} />
                                                    <DecisionButton label="Related concept" tone="blue" active={selectedCandidate.decision === 'related'} onClick={() => setDecision('related')} />
                                                    <DecisionButton label="Reject this lead" tone="red" active={selectedCandidate.decision === 'rejected'} onClick={() => setDecision('rejected')} />
                                                </div>
                                                <a href={`${selectedCandidate.source.iconifyUrl}${encodeURIComponent(selectedCandidate.sourceName)}`} target="_blank" rel="noreferrer" className="
                                                  mt-4 block text-center text-xs
                                                  text-neutral-400 underline
                                                  decoration-neutral-800
                                                  underline-offset-4
                                                  transition-colors
                                                  hover:text-white
                                                ">Open original source page ↗</a>
                                            </>
                                        ) : (
                                            <div className="
                                              mt-5 rounded-xl border
                                              border-dashed border-neutral-800
                                              p-5 text-xs/5 text-neutral-400
                                            ">Select a candidate to inspect it beside the Solar artwork.</div>
                                        )}
                                    </aside>
                                </div>
                            </>
                        ) : (
                            <div className="
                              flex min-h-[520px] items-center justify-center
                              rounded-2xl border border-dashed
                              border-neutral-800 text-sm text-neutral-400
                            ">Search for a Solar icon to begin.</div>
                        )}
                    </section>
                </div>}
            </div>
        </main>
    )
}
