'use client'

import { Icon as IconifyIcon } from '@iconify/react'
import * as Solar from '@solar-icons/react'
import Link from 'next/link'
import { createElement, useMemo, useState } from 'react'
import type { ComponentType } from 'react'

import { SOLAR_ICONS, SOLAR_STYLES, type SolarIconRecord, type SolarStyle } from '../compare/data'
import { FORWARD_COUNTS, FORWARD_MAP } from '../compare/forward-map'

type Filter = 'all' | 'match' | 'no-match'
type SolarIconProps = { size?: number; color?: string }

const SolarComponents = Solar as unknown as Record<
    string,
    ComponentType<SolarIconProps> | undefined
>
const SOLAR_BY_NAME = new Map(SOLAR_ICONS.map(icon => [icon.name, icon]))
const ticketStar = SOLAR_BY_NAME.get('ticket-star')
if (ticketStar) SOLAR_BY_NAME.set('ticker-star', ticketStar)

function formatNumber(value: number): string {
    return new Intl.NumberFormat('fr-FR').format(value)
}

function SolarGlyph({
    icon,
    style,
    size = 32,
    color = 'currentColor',
}: {
    icon?: SolarIconRecord
    style: SolarStyle
    size?: number
    color?: string
}) {
    if (!icon) return <span className="text-xs text-neutral-500">?</span>
    const componentName = icon.name
        .split('-')
        .map(part => part.charAt(0).toUpperCase() + part.slice(1))
        .join('')
    const Component = SolarComponents[`${componentName}${style}Icon`]
    return Component ? (
        createElement(Component, { size, color })
    ) : (
        <span className="text-xs text-neutral-500">?</span>
    )
}

function LucideGlyph({ name, size = 120 }: { name: string; size?: number }) {
    return <IconifyIcon icon={`lucide:${name}`} width={size} height={size} aria-hidden="true" />
}

function statusLabel(filter: Filter): string {
    if (filter === 'match') return 'MATCH'
    if (filter === 'no-match') return 'NO MATCH'
    return 'TOUTES'
}

export default function LucideMapPage() {
    const [query, setQuery] = useState('')
    const [filter, setFilter] = useState<Filter>('all')
    const [style, setStyle] = useState<SolarStyle>('Linear')
    const [selectedId, setSelectedId] = useState(FORWARD_MAP[0]?.solarId ?? '')
    const deferredQuery = query.trim().toLowerCase()

    const rows = useMemo(
        () =>
            FORWARD_MAP.filter(row => {
                if (filter !== 'all' && row.decision !== filter) return false
                if (!deferredQuery) return true
                return `${row.solar} ${row.solarId} ${row.reference ?? ''} ${row.referenceId ?? ''}`
                    .toLowerCase()
                    .includes(deferredQuery)
            }),
        [deferredQuery, filter]
    )

    const selected = rows.find(row => row.solarId === selectedId) ?? rows[0] ?? null
    const selectedSolar = selected ? SOLAR_BY_NAME.get(selected.solar) : undefined

    return (
        <main className="min-h-screen bg-[#111110] text-[#e9e7df]">
            <div className="mx-auto max-w-[1680px] px-4 py-5 sm:px-7 lg:px-10 lg:py-8">
                <header className="flex flex-col gap-5 border-b border-neutral-800 pb-6 lg:flex-row lg:items-end lg:justify-between">
                    <div>
                        <Link
                            href="/"
                            className="text-xs font-semibold tracking-[0.18em] text-amber-300 uppercase hover:text-white">
                            ← React lab
                        </Link>
                        <div className="mt-5 flex flex-wrap items-end gap-3">
                            <h1 className="text-4xl font-semibold tracking-[-0.04em] text-white sm:text-6xl">
                                Lucide map
                            </h1>
                            <span className="mb-2 rounded-full border border-emerald-300/30 px-2 py-1 text-[10px] font-semibold tracking-[0.14em] text-emerald-300 uppercase">
                                Solar → Lucide
                            </span>
                        </div>
                        <p className="mt-3 max-w-2xl text-sm/6 text-neutral-400">
                            Espace indépendant pour vérifier le mapping Solar → Lucide par le sens
                            du symbole. Les différences de dessin ne suffisent plus à refuser une
                            correspondance. Cette page ne modifie pas l’outil historique
                            multi-packs.
                        </p>
                    </div>
                    <div className="flex flex-wrap items-center gap-3 text-xs text-neutral-400">
                        <span>
                            <strong className="text-emerald-300">
                                {formatNumber(FORWARD_COUNTS.match)}
                            </strong>{' '}
                            MATCH
                        </span>
                        <span>
                            <strong className="text-rose-300">
                                {formatNumber(FORWARD_COUNTS['no-match'])}
                            </strong>{' '}
                            NO MATCH
                        </span>
                        <Link
                            href="/compare"
                            className="rounded-lg border border-neutral-700 px-3 py-2 text-neutral-300 hover:border-amber-300 hover:text-white">
                            Outil multi-packs ↗
                        </Link>
                    </div>
                </header>

                <div className="mt-6 grid gap-5 lg:grid-cols-[330px_minmax(0,1fr)]">
                    <aside className="min-w-0 rounded-2xl border border-neutral-800 bg-neutral-950/45 p-3 lg:sticky lg:top-5 lg:h-[calc(100vh-40px)]">
                        <div className="px-2 py-1">
                            <div className="text-[10px] font-semibold tracking-[0.16em] text-neutral-400 uppercase">
                                Inventaire Solar
                            </div>
                            <div className="mt-1 text-xs text-neutral-400">
                                {formatNumber(rows.length)} visibles sur{' '}
                                {formatNumber(FORWARD_MAP.length)}
                            </div>
                        </div>
                        <div className="mt-4 space-y-2">
                            <label className="sr-only" htmlFor="lucide-map-search">
                                Rechercher
                            </label>
                            <input
                                id="lucide-map-search"
                                type="search"
                                value={query}
                                onChange={event => setQuery(event.currentTarget.value)}
                                placeholder="Solar, Lucide ou identifiant"
                                className="min-h-11 w-full rounded-xl border border-neutral-800 bg-[#151514] px-3 text-sm text-white outline-none placeholder:text-neutral-700 focus:border-amber-300/70"
                            />
                            <label className="sr-only" htmlFor="lucide-map-filter">
                                Filtre binaire
                            </label>
                            <select
                                id="lucide-map-filter"
                                value={filter}
                                onChange={event => setFilter(event.currentTarget.value as Filter)}
                                className="min-h-10 w-full rounded-xl border border-neutral-800 bg-[#151514] px-3 text-xs text-neutral-400 outline-none focus:border-amber-300/70">
                                <option value="all">Toutes les décisions</option>
                                <option value="match">MATCH · correspondance trouvée</option>
                                <option value="no-match">NO MATCH · chercher un équivalent</option>
                            </select>
                        </div>
                        <div className="mt-4 h-[calc(100%-142px)] space-y-0.5 overflow-y-auto pr-1">
                            {rows.map(row => (
                                <button
                                    key={row.solarId}
                                    type="button"
                                    onClick={() => setSelectedId(row.solarId)}
                                    className={`flex min-h-12 w-full items-center gap-3 rounded-xl px-2.5 text-left hover:bg-neutral-900 ${selected?.solarId === row.solarId ? 'bg-amber-300 text-neutral-950' : 'text-neutral-300'}`}>
                                    <span
                                        className={`flex size-8 shrink-0 items-center justify-center rounded-lg ${selected?.solarId === row.solarId ? 'bg-neutral-950 text-amber-300' : 'bg-neutral-900 text-neutral-300'}`}>
                                        <SolarGlyph
                                            icon={SOLAR_BY_NAME.get(row.solar)}
                                            style={style}
                                            size={22}
                                        />
                                    </span>
                                    <span className="min-w-0 flex-1">
                                        <span className="block truncate text-xs font-medium">
                                            {row.solar}
                                        </span>
                                        <span
                                            className={`block truncate text-[10px] ${selected?.solarId === row.solarId ? 'text-neutral-700' : 'text-neutral-500'}`}>
                                            {row.solarId}
                                            {row.reference ? ` · ${row.reference}` : ''}
                                        </span>
                                    </span>
                                    <span
                                        className={`text-[9px] font-bold ${row.decision === 'match' ? 'text-emerald-300' : 'text-rose-300'}`}>
                                        {statusLabel(row.decision)}
                                    </span>
                                </button>
                            ))}
                            {rows.length === 0 && (
                                <div className="px-2 py-8 text-center text-xs text-neutral-400">
                                    Aucun résultat.
                                </div>
                            )}
                        </div>
                    </aside>

                    <section className="min-w-0">
                        {selected && selectedSolar ? (
                            <>
                                <div className="flex flex-col gap-4 border-b border-neutral-800 pb-5 sm:flex-row sm:items-end sm:justify-between">
                                    <div>
                                        <div className="text-[10px] font-semibold tracking-[0.16em] text-amber-300 uppercase">
                                            Décision binaire
                                        </div>
                                        <h2 className="mt-2 text-3xl font-semibold text-white">
                                            {selected.solar}
                                        </h2>
                                        <code className="text-xs text-neutral-400">
                                            {selected.solarId}
                                        </code>
                                    </div>
                                    <label className="flex items-center gap-2 text-xs text-neutral-400">
                                        <span>Style Solar</span>
                                        <select
                                            value={style}
                                            onChange={event =>
                                                setStyle(event.currentTarget.value as SolarStyle)
                                            }
                                            className="min-h-10 rounded-xl border border-neutral-800 bg-neutral-950 px-3 text-xs text-neutral-300 outline-none">
                                            {SOLAR_STYLES.map(value => (
                                                <option key={value} value={value}>
                                                    {value}
                                                </option>
                                            ))}
                                        </select>
                                    </label>
                                </div>
                                <div
                                    className={`mt-5 rounded-2xl border p-5 ${selected.decision === 'match' ? 'border-emerald-900/70 bg-emerald-950/20' : 'border-rose-900/60 bg-rose-950/15'}`}>
                                    <div className="flex flex-wrap items-center justify-between gap-2">
                                        <span className="text-[10px] font-semibold tracking-[0.16em] text-neutral-400 uppercase">
                                            Solar → Lucide
                                        </span>
                                        <div className="flex items-center gap-2">
                                            <span className="text-[10px] text-neutral-500">
                                                audit: {selected.auditDecision}
                                            </span>
                                            <span
                                                className={`rounded-full px-3 py-1 text-xs font-bold ${selected.decision === 'match' ? 'bg-emerald-400/20 text-emerald-300' : 'bg-rose-400/20 text-rose-300'}`}>
                                                {statusLabel(selected.decision)}
                                            </span>
                                        </div>
                                    </div>
                                    <div className="mt-5 grid gap-4 md:grid-cols-2">
                                        <div className="rounded-xl border border-neutral-800 bg-[#f2f0e8] p-5 text-neutral-950">
                                            <div className="text-[10px] font-semibold tracking-[0.16em] text-neutral-500 uppercase">
                                                Solar · {selected.solarId}
                                            </div>
                                            <div className="flex min-h-52 items-center justify-center">
                                                <SolarGlyph
                                                    icon={selectedSolar}
                                                    style={style}
                                                    size={180}
                                                    color="#171714"
                                                />
                                            </div>
                                            <div className="text-center text-sm font-semibold">
                                                {selected.solar}
                                            </div>
                                        </div>
                                        <div className="rounded-xl border border-neutral-800 bg-[#f2f0e8] p-5 text-neutral-950">
                                            <div className="text-[10px] font-semibold tracking-[0.16em] text-neutral-500 uppercase">
                                                Lucide · {selected.referenceId ?? '—'}
                                            </div>
                                            <div className="flex min-h-52 items-center justify-center">
                                                {selected.reference ? (
                                                    <LucideGlyph
                                                        name={selected.reference}
                                                        size={180}
                                                    />
                                                ) : (
                                                    <div className="text-center text-sm font-semibold text-neutral-500">
                                                        Aucune correspondance enregistrée
                                                    </div>
                                                )}
                                            </div>
                                            <div className="text-center text-sm font-semibold">
                                                {selected.reference ?? 'NO MATCH'}
                                            </div>
                                        </div>
                                    </div>
                                    {selected.note && (
                                        <p className="mt-4 text-xs/5 text-neutral-400">
                                            {selected.note}
                                        </p>
                                    )}
                                </div>
                            </>
                        ) : (
                            <div className="flex min-h-[520px] items-center justify-center rounded-2xl border border-dashed border-neutral-800 text-sm text-neutral-400">
                                Sélectionne une icône.
                            </div>
                        )}
                    </section>
                </div>
            </div>
        </main>
    )
}
