'use client'

import { Icon as IconifyIcon } from '@iconify/react'
import * as Solar from '@solar-icons/react'
import Link from 'next/link'
import { createElement, useMemo, useState } from 'react'
import type { ComponentType } from 'react'
import coverageReport from '../compare/lucide-coverage/coverage.json'
import { FORWARD_MAP } from '../compare/forward-map'
import { SOLAR_ICONS, SOLAR_STYLES, type SolarIconRecord, type SolarStyle } from '../compare/data'

type Filter = 'all' | 'gap' | 'fallback' | 'reverse-match' | 'covered'
type SolarIconProps = { size?: number; color?: string }
type CoverageRow = (typeof coverageReport.entries)[number]

const SolarComponents = Solar as unknown as Record<string, ComponentType<SolarIconProps> | undefined>
const SOLAR_BY_NAME = new Map(SOLAR_ICONS.map(icon => [icon.name, icon]))
const SOLAR_BY_ID = new Map(FORWARD_MAP.map(icon => [icon.solarId, SOLAR_BY_NAME.get(icon.solar)]))

function formatNumber(value: number): string { return new Intl.NumberFormat('fr-FR').format(value) }

function SolarGlyph({ icon, style, size = 32, color = 'currentColor' }: { icon?: SolarIconRecord; style: SolarStyle; size?: number; color?: string }) {
    if (!icon) return <span className="text-xs text-neutral-500">?</span>
    const componentName = icon.name.split('-').map(part => part.charAt(0).toUpperCase() + part.slice(1)).join('')
    const Component = SolarComponents[`${componentName}${style}Icon`]
    return Component ? createElement(Component, { size, color }) : <span className="text-xs text-neutral-500">?</span>
}

function LucideGlyph({ name, size = 150 }: { name: string; size?: number }) {
    return <IconifyIcon icon={`lucide:${name}`} width={size} height={size} aria-hidden="true" />
}

function filterLabel(filter: Filter): string {
    if (filter === 'gap') return 'GAPS À COMBLER'
    if (filter === 'fallback') return 'FALLBACKS CONTEXTUELS'
    if (filter === 'reverse-match') return 'TROUVÉS EN REVERSE'
    if (filter === 'covered') return 'DÉJÀ COUVERTS'
    return 'TOUS LES ICONES'
}

function rowMatchesFilter(row: CoverageRow, filter: Filter): boolean {
    if (filter === 'gap') return row.reverseTier === 'gap'
    if (filter === 'fallback') return row.reverseTier === 'fallback'
    if (filter === 'reverse-match') return row.semanticDecision === 'no-match' && row.reverseReview?.decision === 'equivalent'
    if (filter === 'covered') return row.semanticDecision === 'match'
    return true
}

export default function LucideGapPage() {
    const [query, setQuery] = useState('')
    const [filter, setFilter] = useState<Filter>('gap')
    const [style, setStyle] = useState<SolarStyle>('Linear')
    const [selectedId, setSelectedId] = useState(coverageReport.entries[0]?.id ?? '')
    const deferredQuery = query.trim().toLowerCase()

    const rows = useMemo(() => coverageReport.entries.filter(row => {
        if (!rowMatchesFilter(row, filter)) return false
        if (!deferredQuery) return true
        return `${row.id} ${row.name} ${row.aliases.join(' ')} ${row.reverseReview?.solarCandidates.join(' ') ?? ''}`.toLowerCase().includes(deferredQuery)
    }), [deferredQuery, filter])
    const selected = rows.find(row => row.id === selectedId) ?? rows[0] ?? null
    const fallbackIds = new Set(selected?.fallbackSolarMatches.map(match => match.solarId) ?? [])
    const exactSolarCandidates = selected ? [
        ...(selected.preferredSolarMatch ? [selected.preferredSolarMatch.solarId] : []),
        ...selected.semanticSolarMatches.map(match => match.solarId),
        ...selected.reverseReviewSolarMatches.map(match => match.solarId),
    ].filter((id, index, all) => all.indexOf(id) === index && !fallbackIds.has(id)).map(id => SOLAR_BY_ID.get(id)).filter(Boolean).slice(0, 8) : []
    const fallbackSolarCandidates = selected ? selected.fallbackSolarMatches.map(match => SOLAR_BY_ID.get(match.solarId)).filter(Boolean) : []
    const evidenceSolarCandidates = selected ? [
        ...(selected.reverseReview?.solarCandidates ?? []),
        ...selected.evidence.nonEquivalent.map(item => item.solarId),
        ...selected.evidence.candidateOnly.map(item => item.solarId),
    ].filter((id, index, all) => all.indexOf(id) === index && !fallbackIds.has(id) && !selected.semanticSolarMatches.some(match => match.solarId === id)).map(id => SOLAR_BY_ID.get(id)).filter(Boolean).slice(0, 8) : []
    const selectedLabel = selected?.reverseTier === 'exact'
        ? 'EXACT / PRÉFÉRENCE'
        : selected?.reverseTier === 'fallback'
          ? 'FALLBACK CONTEXTUEL'
          : selected?.reverseReview?.decision === 'equivalent'
            ? 'ÉQUIVALENT REVERSE À INTÉGRER'
            : 'GAP SOLAR'

    return (
        <main className="min-h-screen bg-[#111110] text-[#e9e7df]">
            <div className="mx-auto max-w-[1680px] px-4 py-5 sm:px-7 lg:px-10 lg:py-8">
                <header className="flex flex-col gap-5 border-b border-neutral-800 pb-6 lg:flex-row lg:items-end lg:justify-between">
                    <div>
                        <Link href="/" className="text-xs font-semibold tracking-[0.18em] text-amber-300 uppercase hover:text-white">← React lab</Link>
                        <div className="mt-5 flex flex-wrap items-end gap-3">
                            <h1 className="text-4xl font-semibold tracking-[-0.04em] text-white sm:text-6xl">Lucide gaps</h1>
                            <span className="mb-2 rounded-full border border-rose-300/30 px-2 py-1 text-[10px] font-semibold tracking-[0.14em] text-rose-300 uppercase">Lucide → Solar</span>
                        </div>
                        <p className="mt-3 max-w-3xl text-sm/6 text-neutral-400">Inventaire inverse : séparer les remplacements exacts, les fallbacks contextuels et les vrais gaps Lucide → Solar. Un fallback est utile dans certains contextes, mais ne remplace pas une équivalence précise.</p>
                    </div>
                    <div className="flex flex-wrap items-center gap-3 text-xs text-neutral-400">
                        <span><strong className="text-rose-300">{formatNumber(coverageReport.entries.filter(row => row.reverseTier === 'gap').length)}</strong> GAPS</span>
                        <span><strong className="text-orange-300">{formatNumber(coverageReport.entries.filter(row => row.reverseTier === 'fallback').length)}</strong> FALLBACKS</span>
                        <span><strong className="text-emerald-300">{formatNumber(coverageReport.entries.filter(row => row.reverseTier === 'exact').length)}</strong> EXACTS</span>
                        <span><strong className="text-amber-300">{formatNumber(coverageReport.entries.filter(row => row.semanticDecision === 'no-match' && row.reverseReview?.decision === 'equivalent').length)}</strong> REVERSE</span>
                        <Link href="/lucide-map" className="rounded-lg border border-neutral-700 px-3 py-2 text-neutral-300 hover:border-amber-300 hover:text-white">Solar → Lucide ↗</Link>
                    </div>
                </header>

                <div className="mt-6 grid gap-5 lg:grid-cols-[360px_minmax(0,1fr)]">
                    <aside className="min-w-0 rounded-2xl border border-neutral-800 bg-neutral-950/45 p-3 lg:sticky lg:top-5 lg:h-[calc(100vh-40px)]">
                        <div className="px-2 py-1"><div className="text-[10px] font-semibold tracking-[0.16em] text-neutral-400 uppercase">Inventaire Lucide</div><div className="mt-1 text-xs text-neutral-400">{formatNumber(rows.length)} visibles sur {formatNumber(coverageReport.entries.length)}</div></div>
                        <div className="mt-4 space-y-2">
                            <label className="sr-only" htmlFor="lucide-gap-search">Rechercher</label>
                            <input id="lucide-gap-search" type="search" value={query} onChange={event => setQuery(event.currentTarget.value)} placeholder="Lucide, alias ou ID" className="min-h-11 w-full rounded-xl border border-neutral-800 bg-[#151514] px-3 text-sm text-white outline-none placeholder:text-neutral-700 focus:border-amber-300/70" />
                            <label className="sr-only" htmlFor="lucide-gap-filter">Filtre inverse</label>
                            <select id="lucide-gap-filter" value={filter} onChange={event => setFilter(event.currentTarget.value as Filter)} className="min-h-10 w-full rounded-xl border border-neutral-800 bg-[#151514] px-3 text-xs text-neutral-400 outline-none focus:border-amber-300/70">
                                <option value="gap">GAPS À COMBLER</option><option value="fallback">FALLBACKS CONTEXTUELS</option><option value="reverse-match">TROUVÉS EN REVERSE</option><option value="covered">DÉJÀ COUVERTS</option><option value="all">TOUS LES ICONES</option>
                            </select>
                        </div>
                        <div className="mt-4 h-[calc(100%-142px)] space-y-0.5 overflow-y-auto pr-1">
                            {rows.map(row => <button key={row.id} type="button" onClick={() => setSelectedId(row.id)} className={`flex min-h-12 w-full items-center gap-3 rounded-xl px-2.5 text-left hover:bg-neutral-900 ${selected?.id === row.id ? 'bg-amber-300 text-neutral-950' : 'text-neutral-300'}`}>
                                <span className={`flex size-8 shrink-0 items-center justify-center rounded-lg ${selected?.id === row.id ? 'bg-neutral-950 text-amber-300' : 'bg-neutral-900 text-neutral-300'}`}><LucideGlyph name={row.name} size={23} /></span>
                                <span className="min-w-0 flex-1"><span className="block truncate text-xs font-medium">{row.name}</span><span className={`block truncate text-[10px] ${selected?.id === row.id ? 'text-neutral-700' : 'text-neutral-500'}`}>{row.id} · {row.coverage}</span></span>
                                <span className={`text-[9px] font-bold ${row.reverseTier === 'exact' ? 'text-emerald-300' : row.reverseTier === 'fallback' ? 'text-orange-300' : row.reverseReview?.decision === 'equivalent' ? 'text-amber-300' : 'text-rose-300'}`}>{row.reverseTier === 'exact' ? 'EXACT' : row.reverseTier === 'fallback' ? 'FALLBACK' : row.reverseReview?.decision === 'equivalent' ? 'REVERSE' : 'GAP'}</span>
                            </button>)}
                            {rows.length === 0 && <div className="px-2 py-8 text-center text-xs text-neutral-400">Aucun résultat.</div>}
                        </div>
                    </aside>

                    <section className="min-w-0">
                        {selected ? <>
                            <div className="flex flex-col gap-4 border-b border-neutral-800 pb-5 sm:flex-row sm:items-end sm:justify-between"><div><div className="text-[10px] font-semibold tracking-[0.16em] text-rose-300 uppercase">{filterLabel(filter)}</div><h2 className="mt-2 text-3xl font-semibold text-white">{selected.name}</h2><code className="text-xs text-neutral-400">{selected.id}</code></div><label className="flex items-center gap-2 text-xs text-neutral-400"><span>Style Solar</span><select value={style} onChange={event => setStyle(event.currentTarget.value as SolarStyle)} className="min-h-10 rounded-xl border border-neutral-800 bg-neutral-950 px-3 text-xs text-neutral-300 outline-none">{SOLAR_STYLES.map(value => <option key={value} value={value}>{value}</option>)}</select></label></div>
                            <div className={`mt-5 rounded-2xl border p-5 ${selected.reverseTier === 'exact' ? 'border-emerald-900/70 bg-emerald-950/20' : selected.reverseTier === 'fallback' ? 'border-orange-900/70 bg-orange-950/15' : selected.reverseReview?.decision === 'equivalent' ? 'border-amber-900/70 bg-amber-950/15' : 'border-rose-900/60 bg-rose-950/15'}`}>
                                <div className="flex flex-wrap items-center justify-between gap-2"><span className="text-[10px] font-semibold tracking-[0.16em] text-neutral-400 uppercase">Lucide → Solar</span><span className={`rounded-full px-3 py-1 text-xs font-bold ${selected.reverseTier === 'exact' ? 'bg-emerald-400/20 text-emerald-300' : selected.reverseTier === 'fallback' ? 'bg-orange-400/20 text-orange-300' : selected.reverseReview?.decision === 'equivalent' ? 'bg-amber-400/20 text-amber-300' : 'bg-rose-400/20 text-rose-300'}`}>{selectedLabel}</span></div>
                                <div className="mt-5 rounded-xl border border-neutral-800 bg-[#f2f0e8] p-5 text-neutral-950"><div className="text-[10px] font-semibold tracking-[0.16em] text-neutral-500 uppercase">Lucide · {selected.id}</div><div className="flex min-h-56 items-center justify-center"><LucideGlyph name={selected.name} size={210} /></div><div className="text-center text-sm font-semibold">{selected.name}</div></div>
                                <div className="mt-5">
                                    {exactSolarCandidates.length > 0 && <><div className="mb-3 text-[10px] font-semibold tracking-[0.16em] text-emerald-300 uppercase">Remplacement exact / préféré</div><div className="grid gap-3 sm:grid-cols-2 xl:grid-cols-4">{exactSolarCandidates.map(icon => <div key={icon?.name} className="rounded-xl border border-emerald-900/50 bg-[#f2f0e8] p-3 text-neutral-950"><div className="flex min-h-32 items-center justify-center"><SolarGlyph icon={icon} style={style} size={110} color="#171714" /></div><div className="text-center text-xs font-semibold">{icon?.name}</div><div className="mt-1 text-center text-[10px] text-neutral-500">{icon ? SOLAR_ICONS.find(item => item.name === icon.name)?.displayName : ''}</div></div>)}</div></>}
                                    {fallbackSolarCandidates.length > 0 && <><div className="mt-5 mb-3 text-[10px] font-semibold tracking-[0.16em] text-orange-300 uppercase">Fallback — perte de précision acceptée selon le contexte</div><div className="grid gap-3 sm:grid-cols-2 xl:grid-cols-4">{fallbackSolarCandidates.map(icon => <div key={icon?.name} className="rounded-xl border border-orange-900/50 bg-[#f2f0e8] p-3 text-neutral-950"><div className="flex min-h-32 items-center justify-center"><SolarGlyph icon={icon} style={style} size={110} color="#171714" /></div><div className="text-center text-xs font-semibold">{icon?.name}</div><div className="mt-1 text-center text-[10px] text-neutral-500">{icon ? SOLAR_ICONS.find(item => item.name === icon.name)?.displayName : ''}</div></div>)}</div></>}
                                    {evidenceSolarCandidates.length > 0 && <><div className="mt-5 mb-3 text-[10px] font-semibold tracking-[0.16em] text-neutral-400 uppercase">Preuves / candidats non intégrés</div><div className="grid gap-3 sm:grid-cols-2 xl:grid-cols-4">{evidenceSolarCandidates.map(icon => <div key={icon?.name} className="rounded-xl border border-neutral-800 bg-[#f2f0e8] p-3 text-neutral-950"><div className="flex min-h-32 items-center justify-center"><SolarGlyph icon={icon} style={style} size={110} color="#171714" /></div><div className="text-center text-xs font-semibold">{icon?.name}</div></div>)}</div></>}
                                    {exactSolarCandidates.length + fallbackSolarCandidates.length + evidenceSolarCandidates.length === 0 && <div className="rounded-xl border border-dashed border-neutral-800 p-6 text-center text-sm text-neutral-500">Aucun candidat Solar enregistré.</div>}
                                </div>
                                {selected.reverseCoverageNote && <p className="mt-4 text-xs leading-5 text-orange-200">Politique de couverture : {selected.reverseCoverageNote}</p>}
                                {selected.reverseReview && <p className="mt-2 text-xs leading-5 text-neutral-400">Revue inverse : {selected.reverseReview.note}</p>}
                            </div>
                        </> : <div className="flex min-h-[520px] items-center justify-center rounded-2xl border border-dashed border-neutral-800 text-sm text-neutral-400">Sélectionne une icône Lucide.</div>}
                    </section>
                </div>
            </div>
        </main>
    )
}
