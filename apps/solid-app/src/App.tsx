import { createSignal, createMemo, For, Show } from 'solid-js';
import { Dynamic } from 'solid-js/web';
import type { Component } from 'solid-js';

import * as Bold from '@solar-icons/solid/bold';
import * as Linear from '@solar-icons/solid/linear';
import * as BoldDuotone from '@solar-icons/solid/bold-duotone';
import * as LineDuotone from '@solar-icons/solid/line-duotone';
import * as Broken from '@solar-icons/solid/broken';
import * as Outline from '@solar-icons/solid/outline';
import { SolarProvider, useSolar } from '@solar-icons/solid';

import { ALL_ICONS, STYLES, type IconStyle } from './lib/icon-list';

const styleModules: Record<IconStyle, Record<string, Component>> = {
    Bold,
    Linear,
    BoldDuotone,
    LineDuotone,
    Broken,
    Outline,
};

function isLinearLike(s: IconStyle): boolean {
    return s === 'Linear' || s === 'LineDuotone' || s === 'Broken';
}
function isDuotone(s: IconStyle): boolean {
    return s === 'BoldDuotone' || s === 'LineDuotone';
}

function getIcon(style: IconStyle, name: string): Component | undefined {
    return styleModules[style][name];
}

function SectionTitle(props: { title: string; desc: string }) {
    return (
        <div class="mb-4">
            <h2 class="text-xl font-bold text-white">{props.title}</h2>
            <p class="text-slate-400 text-sm">{props.desc}</p>
        </div>
    );
}

const App: Component = () => {
    const [selectedStyle, setSelectedStyle] = createSignal<IconStyle>('Bold');
    const [iconSize, setIconSize] = createSignal(32);
    const [iconColor, setIconColor] = createSignal('#f59e0b');
    const [strokeWidth, setStrokeWidth] = createSignal(1.5);
    const [searchQuery, setSearchQuery] = createSignal('');
    const [duotoneColor, setDuotoneColor] = createSignal('#60a5fa');
    const [duotoneOpacity, setDuotoneOpacity] = createSignal(0.5);

    // --- CSS vars demo state ---
    const [cssColor, setCssColor] = createSignal('#f59e0b');
    const [cssSize, setCssSize] = createSignal(40);

    // --- Provider demo state ---
    const [providerSize, setProviderSize] = createSignal(36);
    const [providerColor, setProviderColor] = createSignal('#f59e0b');

    const filteredIcons = createMemo(() => {
        const q = searchQuery().toLowerCase();
        if (!q) return ALL_ICONS;
        return ALL_ICONS.filter((n) => n.toLowerCase().includes(q));
    });

    return (
        <div class="min-h-screen bg-slate-900 text-slate-200">
            <div class="max-w-7xl mx-auto px-4 sm:px-8 py-8 space-y-12">
                {/* Header */}
                <div class="text-center space-y-2">
                    <h1 class="text-4xl font-bold text-white">Solar Icons - SolidJS</h1>
                    <p class="text-slate-400">
                        {ALL_ICONS.length} icons × 6 styles = {ALL_ICONS.length * 6} variants
                    </p>
                </div>

                {/* ===== 1. Icon Gallery ===== */}
                <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
                    <SectionTitle
                        title="1. Icon Gallery"
                        desc="Select a style, tweak color/size/stroke, and browse all icons."
                    />
                    <div class="space-y-6">
                        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-6">
                            <div class="space-y-2">
                                <label class="text-sm font-medium text-slate-300">Style</label>
                                <div class="flex flex-wrap gap-2">
                                    <For each={STYLES}>
                                        {(s) => (
                                            <button
                                                class="px-3 py-1.5 rounded-lg text-sm font-medium transition-all"
                                                classList={{
                                                    'bg-amber-500 text-slate-900':
                                                        selectedStyle() === s,
                                                    'bg-slate-700 text-slate-300 hover:bg-slate-600':
                                                        selectedStyle() !== s,
                                                }}
                                                onClick={() => setSelectedStyle(s)}
                                            >
                                                {s}
                                            </button>
                                        )}
                                    </For>
                                </div>
                            </div>
                            <div class="space-y-2">
                                <label class="text-sm font-medium text-slate-300">Color</label>
                                <div class="flex items-center gap-3">
                                    <input
                                        type="color"
                                        value={iconColor()}
                                        onInput={(e) => setIconColor(e.currentTarget.value)}
                                        class="w-10 h-10 rounded-lg cursor-pointer border-0"
                                    />
                                    <input
                                        type="text"
                                        value={iconColor()}
                                        onInput={(e) => setIconColor(e.currentTarget.value)}
                                        class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono"
                                    />
                                </div>
                            </div>
                            <div class="space-y-2">
                                <label class="text-sm font-medium text-slate-300">
                                    Size: <span class="text-amber-400">{iconSize()}px</span>
                                </label>
                                <input
                                    type="range"
                                    min="16"
                                    max="64"
                                    value={iconSize()}
                                    onInput={(e) => setIconSize(parseInt(e.currentTarget.value))}
                                    class="w-full accent-amber-500"
                                />
                            </div>
                            <div
                                class="space-y-2"
                                classList={{
                                    'opacity-30 pointer-events-none':
                                        !isLinearLike(selectedStyle()),
                                }}
                            >
                                <label class="text-sm font-medium text-slate-300">
                                    Stroke: <span class="text-amber-400">{strokeWidth()}</span>
                                </label>
                                <input
                                    type="range"
                                    min="0.5"
                                    max="4"
                                    step="0.1"
                                    value={strokeWidth()}
                                    onInput={(e) =>
                                        setStrokeWidth(parseFloat(e.currentTarget.value))
                                    }
                                    disabled={!isLinearLike(selectedStyle())}
                                    class="w-full accent-amber-500"
                                />
                            </div>
                            <div class="space-y-2">
                                <label class="text-sm font-medium text-slate-300">Search</label>
                                <input
                                    type="text"
                                    placeholder="Filter icons..."
                                    value={searchQuery()}
                                    onInput={(e) => setSearchQuery(e.currentTarget.value)}
                                    class="w-full bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 placeholder-slate-500"
                                />
                            </div>
                        </div>
                        <Show when={isDuotone(selectedStyle())}>
                            <div class="pt-6 border-t border-slate-700/50">
                                <div class="flex items-center gap-2 mb-4">
                                    <span class="text-sm font-semibold text-blue-400 uppercase tracking-wide">
                                        Duotone
                                    </span>
                                    <span class="text-xs text-slate-500 bg-slate-700/50 px-2 py-0.5 rounded">
                                        --solar-duotone-color / --solar-duotone-opacity
                                    </span>
                                </div>
                                <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                                    <div class="space-y-2">
                                        <label class="text-sm font-medium text-slate-300">
                                            Accent Color:{' '}
                                            <span class="text-blue-400 font-mono text-xs">
                                                {duotoneColor()}
                                            </span>
                                        </label>
                                        <div class="flex items-center gap-3">
                                            <input
                                                type="color"
                                                value={duotoneColor()}
                                                onInput={(e) =>
                                                    setDuotoneColor(e.currentTarget.value)
                                                }
                                                class="w-10 h-10 rounded-lg cursor-pointer border-0"
                                            />
                                            <input
                                                type="text"
                                                value={duotoneColor()}
                                                onInput={(e) =>
                                                    setDuotoneColor(e.currentTarget.value)
                                                }
                                                class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono"
                                            />
                                        </div>
                                    </div>
                                    <div class="space-y-2">
                                        <label class="text-sm font-medium text-slate-300">
                                            Accent Opacity:{' '}
                                            <span class="text-blue-400">{duotoneOpacity()}</span>
                                        </label>
                                        <input
                                            type="range"
                                            min="0"
                                            max="1"
                                            step="0.05"
                                            value={duotoneOpacity()}
                                            onInput={(e) =>
                                                setDuotoneOpacity(parseFloat(e.currentTarget.value))
                                            }
                                            class="w-full accent-blue-400"
                                        />
                                    </div>
                                </div>
                            </div>
                        </Show>
                    </div>
                    <div
                        class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-4 mt-6"
                        style={{
                            '--solar-duotone-color': duotoneColor(),
                            '--solar-duotone-opacity': duotoneOpacity().toString(),
                        }}
                    >
                        <For each={filteredIcons()}>
                            {(name) => {
                                const comp = createMemo(() => getIcon(selectedStyle(), name));
                                return (
                                    <Show when={comp()}>
                                        <div
                                            class="group flex flex-col items-center justify-center gap-2 p-4 bg-slate-800/30 rounded-xl border border-slate-700/30 hover:bg-slate-700/50 hover:border-amber-500/30 transition-all cursor-pointer"
                                            title={name}
                                        >
                                            <div
                                                class="flex items-center justify-center"
                                                style={{ 'min-height': '64px' }}
                                            >
                                                <Dynamic
                                                    component={comp()!}
                                                    {...{
                                                        size: iconSize(),
                                                        color: iconColor(),
                                                        'stroke-width': isLinearLike(
                                                            selectedStyle()
                                                        )
                                                            ? strokeWidth()
                                                            : undefined,
                                                    }}
                                                />
                                            </div>
                                            <span class="text-xs text-slate-500 truncate w-full text-center">
                                                {name}
                                            </span>
                                        </div>
                                    </Show>
                                );
                            }}
                        </For>
                    </div>
                </div>

                {/* ===== 2. CSS Custom Properties ===== */}
                <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
                    <SectionTitle
                        title="2. CSS Custom Properties"
                        desc="Control icon color and size via CSS custom properties on a parent element. No provider needed."
                    />
                    <div class="flex items-center gap-6 mb-4">
                        <div class="space-y-1">
                            <label class="text-xs text-slate-400">Color</label>
                            <input
                                type="color"
                                value={cssColor()}
                                onInput={(e) => setCssColor(e.currentTarget.value)}
                                class="w-10 h-10 rounded cursor-pointer border-0"
                            />
                        </div>
                        <div class="space-y-1">
                            <label class="text-xs text-slate-400">Size ({cssSize()}px)</label>
                            <input
                                type="range"
                                min="16"
                                max="64"
                                value={cssSize()}
                                onInput={(e) => setCssSize(parseInt(e.currentTarget.value))}
                                class="w-32 accent-amber-500"
                            />
                        </div>
                    </div>
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div class="space-y-2">
                            <code class="text-xs text-slate-500 block">
                                {'style={{"--solar-icon-color": ...}}'}
                            </code>
                            <div
                                class="bg-slate-900 rounded-lg p-4 flex gap-4"
                                style={{
                                    '--solar-icon-color': cssColor(),
                                    '--solar-icon-size': `${cssSize()}px`,
                                }}
                            >
                                <Dynamic component={getIcon(selectedStyle(), 'Home')!} />
                                <Dynamic component={getIcon(selectedStyle(), 'Settings')!} />
                                <Dynamic component={getIcon(selectedStyle(), 'User')!} />
                            </div>
                        </div>
                        <div class="space-y-2">
                            <code class="text-xs text-slate-500 block">
                                Tailwind [--solar-icon-color:...]
                            </code>
                            <div
                                class="bg-slate-900 rounded-lg p-4 flex gap-4 [--solar-icon-color:var(--demo-color)] [--solar-icon-size:var(--demo-size)]"
                                style={{
                                    '--demo-color': cssColor(),
                                    '--demo-size': `${cssSize()}px`,
                                }}
                            >
                                <Dynamic component={getIcon(selectedStyle(), 'Heart')!} />
                                <Dynamic component={getIcon(selectedStyle(), 'Star')!} />
                                <Dynamic component={getIcon(selectedStyle(), 'Bell')!} />
                            </div>
                        </div>
                    </div>
                </div>

                {/* ===== 3. SolarProvider + useSolar ===== */}
                <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
                    <SectionTitle
                        title="3. SolarProvider + useSolar"
                        desc="Wrap icons in a provider. The hook mutates CSS custom properties on the provider's wrapper div."
                    />
                    <div class="flex items-center gap-6 mb-4">
                        <div class="space-y-1">
                            <label class="text-xs text-slate-400">Color</label>
                            <input
                                type="color"
                                value={providerColor()}
                                onInput={(e) => setProviderColor(e.currentTarget.value)}
                                class="w-10 h-10 rounded cursor-pointer border-0"
                            />
                        </div>
                        <div class="space-y-1">
                            <label class="text-xs text-slate-400">Size ({providerSize()}px)</label>
                            <input
                                type="range"
                                min="16"
                                max="64"
                                value={providerSize()}
                                onInput={(e) => setProviderSize(parseInt(e.currentTarget.value))}
                                class="w-32 accent-amber-500"
                            />
                        </div>
                        <div class="space-y-1">
                            <label class="text-xs text-slate-400">Stroke ({strokeWidth()})</label>
                            <input
                                type="range"
                                min="0.5"
                                max="3"
                                step="0.1"
                                value={strokeWidth()}
                                onInput={(e) => setStrokeWidth(parseFloat(e.currentTarget.value))}
                                class="w-32 accent-amber-500"
                            />
                        </div>
                    </div>
                    <SolarProvider
                        color={providerColor()}
                        size={providerSize()}
                        strokeWidth={strokeWidth()}
                    >
                        <ProviderDemoInner />
                    </SolarProvider>
                </div>

                {/* ===== 4. CSS Class Styling ===== */}
                <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
                    <SectionTitle
                        title="4. CSS Class Styling"
                        desc="Every icon has class 'solar' and 'solar-{'{name}'}'. Target them with CSS selectors."
                    />
                    <div class="space-y-2">
                        <code class="text-xs text-slate-500 block">
                            {'.solar { color: var(--solar-icon-color, currentColor); }'}
                        </code>
                        <code class="text-xs text-slate-500 block">
                            {'.solar-home { /* specific icon */ }'}
                        </code>
                        <div class="bg-slate-900 rounded-lg p-4 flex gap-4 [&_.solar]:text-amber-500 [&_.solar-star]:text-blue-400">
                            <Dynamic component={getIcon(selectedStyle(), 'Home')!} />
                            <Dynamic component={getIcon(selectedStyle(), 'Star')!} />
                            <Dynamic component={getIcon(selectedStyle(), 'Heart')!} />
                        </div>
                    </div>
                </div>

                {/* ===== 5. Accessibility ===== */}
                <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
                    <SectionTitle
                        title="5. Accessibility"
                        desc="Icons have aria-hidden='true' by default. Pass alt, aria-label, or title to make them accessible."
                    />
                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code class="text-xs text-green-400 block">Default (aria-hidden)</code>
                            <Dynamic
                                component={getIcon(selectedStyle(), 'InfoCircle')!}
                                size={32}
                            />
                        </div>
                        <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code class="text-xs text-green-400 block">{'alt="Information"'}</code>
                            <Dynamic
                                component={getIcon(selectedStyle(), 'InfoCircle')!}
                                size={32}
                                alt="Information"
                            />
                        </div>
                        <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code class="text-xs text-green-400 block">aria-label</code>
                            <Dynamic
                                component={getIcon(selectedStyle(), 'InfoCircle')!}
                                size={32}
                                aria-label="Information about this icon"
                            />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

function ProviderDemoInner() {
    const solar = useSolar();
    return (
        <div class="bg-slate-900 rounded-lg p-4 flex flex-wrap gap-4 items-center">
            <div class="flex gap-2">
                <button
                    class="px-3 py-1.5 bg-amber-500 text-slate-900 rounded-lg text-sm font-medium"
                    onClick={() => solar.setColor('#ef4444')}
                >
                    Red
                </button>
                <button
                    class="px-3 py-1.5 bg-blue-500 text-white rounded-lg text-sm"
                    onClick={() => solar.setColor('#3b82f6')}
                >
                    Blue
                </button>
                <button
                    class="px-3 py-1.5 bg-green-500 text-white rounded-lg text-sm"
                    onClick={() => solar.setColor('#22c55e')}
                >
                    Green
                </button>
                <button
                    class="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm"
                    onClick={() => solar.setSize(48)}
                >
                    48px
                </button>
                <button
                    class="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm"
                    onClick={() => solar.setSize(24)}
                >
                    24px
                </button>
            </div>
            <div class="flex gap-4 ml-auto">
                <Dynamic component={getIcon('Bold', 'Home')!} />
                <Dynamic component={getIcon('Bold', 'Star')!} color="#ef4444" />
                <Dynamic component={getIcon('Bold', 'Heart')!} />
            </div>
        </div>
    );
}

export default App;
