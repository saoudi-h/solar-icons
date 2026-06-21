'use client'

import { useState, useMemo } from 'react'
import * as Solar from '@solar-icons/react'
import { SolarProvider, useSolar } from '@solar-icons/react'
import { ALL_ICONS, STYLES, type IconStyle } from './icon-list'

// --- Helpers ---

const STYLE_SUFFIX: Record<IconStyle, string> = {
    Bold: 'Bold',
    Linear: 'Linear',
    BoldDuotone: 'BoldDuotone',
    LineDuotone: 'LineDuotone',
    Broken: 'Broken',
    Outline: 'Outline',
}

const isLinearLike = (s: IconStyle) => s === 'Linear' || s === 'LineDuotone' || s === 'Broken'
const isDuotone = (s: IconStyle) => s === 'BoldDuotone' || s === 'LineDuotone'

function getIcon(name: string, style: IconStyle): React.ComponentType<any> | null {
    return (Solar as Record<string, React.ComponentType<any>>)[name + STYLE_SUFFIX[style]] ?? null
}

// --- 1. Icon Gallery ---

function IconGallery() {
    const [style, setStyle] = useState<IconStyle>('Bold')
    const [size, setSize] = useState(32)
    const [color, setColor] = useState('#f59e0b')
    const [strokeW, setStrokeW] = useState(1.5)
    const [search, setSearch] = useState('')
    const [duoColor, setDuoColor] = useState('#60a5fa')
    const [duoOpacity, setDuoOpacity] = useState(0.5)

    const filtered = useMemo(() => {
        const q = search.toLowerCase()
        if (!q) return ALL_ICONS
        return ALL_ICONS.filter((n) => n.toLowerCase().includes(q))
    }, [search])

    return (
        <section>
            <h2 className="mb-6 text-2xl font-bold text-white">Icon Gallery</h2>

            {/* Controls */}
            <div className="mb-8 rounded-2xl border border-slate-700/50 bg-slate-800/50 p-6 backdrop-blur-sm">
                <div className="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-4">
                    {/* Style */}
                    <div className="space-y-2">
                        <label className="text-sm font-medium text-slate-300">Style</label>
                        <div className="flex flex-wrap gap-2">
                            {STYLES.map((s) => (
                                <button
                                    key={s}
                                    onClick={() => setStyle(s)}
                                    className={`rounded-lg px-3 py-1.5 text-sm font-medium transition-all ${
                                        style === s
                                            ? 'bg-amber-500 text-slate-900'
                                            : 'bg-slate-700 text-slate-300 hover:bg-slate-600'
                                    }`}
                                >
                                    {s}
                                </button>
                            ))}
                        </div>
                    </div>

                    {/* Color */}
                    <div className="space-y-2">
                        <label className="text-sm font-medium text-slate-300">Color</label>
                        <div className="flex items-center gap-3">
                            <input
                                type="color"
                                value={color}
                                onChange={(e) => setColor(e.target.value)}
                                className="h-10 w-10 cursor-pointer rounded-lg border-0"
                            />
                            <input
                                type="text"
                                value={color}
                                onChange={(e) => setColor(e.target.value)}
                                className="flex-1 rounded-lg border border-slate-600 bg-slate-700 px-3 py-2 font-mono text-sm text-slate-200"
                            />
                        </div>
                    </div>

                    {/* Size */}
                    <div className="space-y-2">
                        <label className="text-sm font-medium text-slate-300">
                            Size: <span className="text-amber-400">{size}px</span>
                        </label>
                        <input
                            type="range"
                            min={16}
                            max={64}
                            value={size}
                            onChange={(e) => setSize(Number(e.target.value))}
                            className="w-full accent-amber-500"
                        />
                    </div>

                    {/* Stroke width */}
                    <div
                        className={`space-y-2 ${!isLinearLike(style) ? 'pointer-events-none opacity-30' : ''}`}
                    >
                        <label className="text-sm font-medium text-slate-300">
                            Stroke: <span className="text-amber-400">{strokeW}</span>
                        </label>
                        <input
                            type="range"
                            min={0.5}
                            max={4}
                            step={0.1}
                            value={strokeW}
                            onChange={(e) => setStrokeW(Number(e.target.value))}
                            disabled={!isLinearLike(style)}
                            className="w-full accent-amber-500"
                        />
                    </div>
                </div>

                {/* Duotone controls */}
                {isDuotone(style) && (
                    <div className="mt-6 border-t border-slate-700/50 pt-6">
                        <div className="mb-4 flex items-center gap-2">
                            <span className="text-sm font-semibold uppercase tracking-wide text-blue-400">
                                Duotone CSS-vars
                            </span>
                        </div>
                        <div className="grid grid-cols-1 gap-6 sm:grid-cols-2">
                            <div className="space-y-2">
                                <label className="text-sm font-medium text-slate-300">
                                    Accent Color:{' '}
                                    <span className="font-mono text-xs text-blue-400">{duoColor}</span>
                                </label>
                                <div className="flex items-center gap-3">
                                    <input
                                        type="color"
                                        value={duoColor}
                                        onChange={(e) => setDuoColor(e.target.value)}
                                        className="h-10 w-10 cursor-pointer rounded-lg border-0"
                                    />
                                    <input
                                        type="text"
                                        value={duoColor}
                                        onChange={(e) => setDuoColor(e.target.value)}
                                        className="flex-1 rounded-lg border border-slate-600 bg-slate-700 px-3 py-2 font-mono text-sm text-slate-200"
                                    />
                                </div>
                            </div>
                            <div className="space-y-2">
                                <label className="text-sm font-medium text-slate-300">
                                    Accent Opacity:{' '}
                                    <span className="text-blue-400">{duoOpacity}</span>
                                </label>
                                <input
                                    type="range"
                                    min={0}
                                    max={1}
                                    step={0.05}
                                    value={duoOpacity}
                                    onChange={(e) => setDuoOpacity(Number(e.target.value))}
                                    className="w-full accent-blue-400"
                                />
                            </div>
                        </div>
                    </div>
                )}

                {/* Search */}
                <div className="mt-6">
                    <input
                        type="text"
                        placeholder="Filter icons..."
                        value={search}
                        onChange={(e) => setSearch(e.target.value)}
                        className="w-full rounded-lg border border-slate-600 bg-slate-700 px-3 py-2 text-slate-200 placeholder-slate-500"
                    />
                </div>
            </div>

            {/* Icon grid */}
            <div
                className="grid grid-cols-4 gap-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12"
                style={{
                    '--solar-duotone-color': duoColor,
                    '--solar-duotone-opacity': String(duoOpacity),
                } as React.CSSProperties}
            >
                {filtered.map((name) => {
                    const Icon = getIcon(name, style)
                    if (!Icon) return null
                    return (
                        <div
                            key={name}
                            className="group flex cursor-pointer flex-col items-center justify-center gap-2 rounded-xl border border-slate-700/30 bg-slate-800/30 p-4 transition-all hover:border-amber-500/30 hover:bg-slate-700/50"
                            title={name}
                        >
                            <div className="flex items-center justify-center" style={{ minHeight: 64 }}>
                                <Icon
                                    size={size}
                                    color={color}
                                    strokeWidth={isLinearLike(style) ? strokeW : undefined}
                                />
                            </div>
                            <span className="w-full truncate text-center text-xs text-slate-500 transition-colors group-hover:text-slate-300">
                                {name}
                            </span>
                        </div>
                    )
                })}
            </div>
        </section>
    )
}

// --- 2. CSS Custom Properties (inline) ---

function CSSVarsSection() {
    return (
        <section>
            <h2 className="mb-4 text-2xl font-bold text-white">CSS Custom Properties</h2>
            <p className="mb-4 text-sm text-slate-400">
                Each icon reads <code className="text-blue-400">--solar-icon-color</code> and{' '}
                <code className="text-blue-400">--solar-icon-size</code> from the CSS cascade.
                No provider needed — just set the variables on any parent element.
            </p>

            {/* Inline style */}
            <div
                className="mb-6 flex flex-wrap items-center gap-4 rounded-xl border border-green-700/30 bg-green-900/20 p-4"
                style={
                    {
                        '--solar-icon-color': '#34d399',
                        '--solar-icon-size': '40px',
                    } as React.CSSProperties
                }
            >
                <span className="text-xs text-green-400">style=&quot;--solar-icon-color: #34d399; --solar-icon-size: 40px&quot;</span>
                {(Solar as any).AccessibilityBold ? <Solar.AccessibilityBold /> : null}
                {(Solar as any).AddCircleBold ? <Solar.AddCircleBold /> : null}
                {(Solar as any).AccessibilityBold ? <Solar.AccessibilityBold alt="Accessible icon" /> : null}
            </div>

            {/* Tailwind arbitrary values */}
            <div
                className="mb-6 flex flex-wrap items-center gap-4 rounded-xl border border-blue-700/30 bg-blue-900/20 p-4 [--solar-icon-color:#60a5fa] [--solar-icon-size:48px]"
            >
                <span className="text-xs text-blue-400">Tailwind:[--solar-icon-color:#60a5fa] [--solar-icon-size:48px]</span>
                {(Solar as any).CheckReadBold ? <Solar.CheckReadBold /> : null}
                {(Solar as any).CheckSquareBold ? <Solar.CheckSquareBold /> : null}
                {(Solar as any).AltArrowUpBold ? <Solar.AltArrowUpBold /> : null}
            </div>
        </section>
    )
}

// --- 3. SolarProvider + useSolar ---

function ProviderDemo() {
    const [providerColor, setProviderColor] = useState('#a78bfa')
    const [providerSize, setProviderSize] = useState(36)

    return (
        <SolarProvider color={providerColor} size={providerSize}>
            <ProviderInner
                providerColor={providerColor}
                setProviderColor={setProviderColor}
                providerSize={providerSize}
                setProviderSize={setProviderSize}
            />
        </SolarProvider>
    )
}

function ProviderInner({
    providerColor,
    setProviderColor,
    providerSize,
    setProviderSize,
}: {
    providerColor: string
    setProviderColor: (c: string) => void
    providerSize: number
    setProviderSize: (s: number) => void
}) {
    const { setColor, setSize } = useSolar()

    return (
        <section>
            <h2 className="mb-4 text-2xl font-bold text-white">
                SolarProvider + useSolar()
            </h2>
            <p className="mb-4 text-sm text-slate-400">
                The provider sets CSS custom properties on a wrapper div.
                Icons inherit them automatically. No React re-render of icons.
            </p>

            <div className="mb-6 rounded-xl border border-purple-700/30 bg-purple-900/20 p-4">
                <div className="mb-4 flex flex-wrap items-center gap-4">
                    <span className="text-xs text-purple-400">
                        &lt;SolarProvider color=&quot;{providerColor}&quot; size={providerSize}&gt;
                    </span>
                </div>

                {/* Controls */}
                <div className="mb-4 flex flex-wrap items-center gap-3">
                    <button
                        onClick={() => {
                            setProviderColor('#ff6b6b')
                            setColor('#ff6b6b')
                        }}
                        className="rounded-lg bg-red-500/20 px-3 py-1.5 text-xs text-red-400 transition hover:bg-red-500/30"
                    >
                        Red (state)
                    </button>
                    <button
                        onClick={() => {
                            setProviderColor('#60a5fa')
                            setColor('#60a5fa')
                        }}
                        className="rounded-lg bg-blue-500/20 px-3 py-1.5 text-xs text-blue-400 transition hover:bg-blue-500/30"
                    >
                        Blue (state)
                    </button>
                    <button
                        onClick={() => setColor('#34d399')}
                        className="rounded-lg bg-green-500/20 px-3 py-1.5 text-xs text-green-400 transition hover:bg-green-500/30"
                    >
                        Green (hook only)
                    </button>
                    <button
                        onClick={() => {
                            setProviderSize(24)
                            setSize(24)
                        }}
                        className="rounded-lg bg-slate-500/20 px-3 py-1.5 text-xs text-slate-400 transition hover:bg-slate-500/30"
                    >
                        Size 24
                    </button>
                    <button
                        onClick={() => {
                            setProviderSize(56)
                            setSize(56)
                        }}
                        className="rounded-lg bg-slate-500/20 px-3 py-1.5 text-xs text-slate-400 transition hover:bg-slate-500/30"
                    >
                        Size 56
                    </button>
                </div>

                {/* Icons inside provider */}
                <div className="flex flex-wrap items-center gap-3">
                    {(Solar as any).HomeBold ? <Solar.HomeBold /> : null}
                    {(Solar as any).SettingsBold ? <Solar.SettingsBold /> : null}
                    {(Solar as any).StarBold ? <Solar.StarBold /> : null}
                    {/* This one has an explicit prop; should override the provider */}
                    {(Solar as any).HeartBold ? <Solar.HeartBold color="#f43f5e" /> : null}
                </div>
            </div>

            <p className="text-xs text-slate-500">
                The fourth icon (Heart) has an explicit <code className="text-blue-400">color=&quot;#f43f5e&quot;</code> prop
                that overrides the provider. The other three follow the provider dynamically.
            </p>
        </section>
    )
}

// --- 4. Accessibility ---

function AccessibilitySection() {
    return (
        <section>
            <h2 className="mb-4 text-2xl font-bold text-white">Accessibility</h2>
            <p className="mb-4 text-sm text-slate-400">
                Icons have <code className="text-blue-400">aria-hidden=&quot;true&quot;</code> by default.
                Pass <code className="text-blue-400">alt</code> to make them accessible.
            </p>

            <div className="flex flex-wrap items-start gap-6 rounded-xl border border-slate-700/30 bg-slate-800/30 p-4">
                <div className="flex flex-col items-center gap-2">
                    <span className="text-xs text-slate-500">Default (hidden)</span>
                    {(Solar as any).InfoCircleBold ? <Solar.InfoCircleBold size={32} /> : null}
                </div>
                <div className="flex flex-col items-center gap-2">
                    <span className="text-xs text-green-400">With alt (accessible)</span>
                    {(Solar as any).InfoCircleBold ? <Solar.InfoCircleBold size={32} alt="Information" /> : null}
                </div>
                <div className="flex flex-col items-center gap-2">
                    <span className="text-xs text-green-400">With aria-label</span>
                    {(Solar as any).DangerCircleBold ? (
                        <Solar.DangerCircleBold size={32} aria-label="Danger warning" />
                    ) : null}
                </div>
            </div>
        </section>
    )
}

// --- 5. CSS class styling ---

function CSSClassSection() {
    return (
        <section>
            <h2 className="mb-4 text-2xl font-bold text-white">CSS Class Styling</h2>
            <p className="mb-4 text-sm text-slate-400">
                Each icon has <code className="text-blue-400">class=&quot;solar solar-&#123;name&#125;&quot;</code>.
                Target <code className="text-blue-400">.solar</code> for all icons,
                or <code className="text-blue-400">.solar-&#123;name&#125;</code> for specific ones.
            </p>

            {/* Override via CSS vars using a parent class */}
            <div className="mb-4 flex flex-wrap items-center gap-3 rounded-xl border border-orange-700/30 bg-orange-900/20 p-4 [--solar-icon-color:#fb923c]">
                <span className="text-xs text-orange-400">.my-section [--solar-icon-color: #fb923c]</span>
                {(Solar as any).SunBold ? <Solar.SunBold /> : null}
                {(Solar as any).MoonBold ? <Solar.MoonBold /> : null}
                {(Solar as any).Star2Bold ? <Solar.Star2Bold /> : null}
            </div>
        </section>
    )
}

// --- Page ---

export default function Page() {
    return (
        <div className="min-h-screen bg-slate-900 text-slate-200">
            <div className="mx-auto max-w-7xl space-y-20 px-8 py-12">
                {/* Header */}
                <div className="text-center">
                    <h1 className="text-4xl font-bold text-white">Solar Icons — React Perf</h1>
                    <p className="mt-2 text-slate-400">
                        Testing CSS custom properties, classes, SolarProvider, useSolar, and accessibility.
                    </p>
                </div>

                <IconGallery />
                <CSSVarsSection />
                <ProviderDemo />
                <CSSClassSection />
                <AccessibilitySection />
            </div>
        </div>
    )
}
