import { createSignal, createMemo, For, Show } from 'solid-js';
import { Dynamic } from 'solid-js/web';
import type { Component } from 'solid-js';
import { useSolar } from '@solar-icons/solid';

import * as Bold from '@solar-icons/solid/bold';
import * as Linear from '@solar-icons/solid/linear';
import * as BoldDuotone from '@solar-icons/solid/bold-duotone';
import * as LineDuotone from '@solar-icons/solid/line-duotone';
import * as Broken from '@solar-icons/solid/broken';
import * as Outline from '@solar-icons/solid/outline';

import { ALL_ICONS, STYLES, type IconStyle } from './icon-list';

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

export default function Gallery() {
    const solar = useSolar();

    const [selectedStyle, setSelectedStyle] = createSignal<IconStyle>('Bold');
    const [searchQuery, setSearchQuery] = createSignal('');

    const filteredIcons = createMemo(() => {
        const q = searchQuery().toLowerCase();
        if (!q) return ALL_ICONS;
        return ALL_ICONS.filter((n) => n.toLowerCase().includes(q));
    });

    return (
        <div class="space-y-4">
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-6">
                <div class="space-y-2">
                    <label class="text-sm font-medium text-slate-300">Style</label>
                    <div class="flex flex-wrap gap-2">
                        <For each={STYLES}>
                            {(s) => (
                                <button
                                    class="px-3 py-1.5 rounded-lg text-sm font-medium transition-all"
                                    classList={{
                                        'bg-amber-500 text-slate-900': selectedStyle() === s,
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
                            value={solar.color() ?? '#f59e0b'}
                            onInput={(e) => solar.setColor(e.currentTarget.value)}
                            class="w-10 h-10 rounded-lg cursor-pointer border-0"
                        />
                        <input
                            type="text"
                            value={solar.color() ?? '#f59e0b'}
                            onInput={(e) => solar.setColor(e.currentTarget.value)}
                            class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono"
                        />
                    </div>
                </div>
                <div class="space-y-2">
                    <label class="text-sm font-medium text-slate-300">
                        Size: <span class="text-amber-400">{solar.size() ?? 32}px</span>
                    </label>
                    <input
                        type="range"
                        min="16"
                        max="64"
                        value={Number(solar.size()) || 32}
                        onInput={(e) => solar.setSize(parseInt(e.currentTarget.value))}
                        class="w-full accent-amber-500"
                    />
                </div>
                <div
                    class="space-y-2"
                    classList={{ 'opacity-30 pointer-events-none': !isLinearLike(selectedStyle()) }}
                >
                    <label class="text-sm font-medium text-slate-300">
                        Stroke: <span class="text-amber-400">{solar.strokeWidth() ?? 1.5}</span>
                    </label>
                    <input
                        type="range"
                        min="0.5"
                        max="4"
                        step="0.1"
                        value={solar.strokeWidth() ?? 1.5}
                        onInput={(e) => solar.setStrokeWidth(parseFloat(e.currentTarget.value))}
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
                                    {solar.duotoneColor() ?? '#60a5fa'}
                                </span>
                            </label>
                            <div class="flex items-center gap-3">
                                <input
                                    type="color"
                                    value={solar.duotoneColor() ?? '#60a5fa'}
                                    onInput={(e) => solar.setDuotoneColor(e.currentTarget.value)}
                                    class="w-10 h-10 rounded-lg cursor-pointer border-0"
                                />
                                <input
                                    type="text"
                                    value={solar.duotoneColor() ?? '#60a5fa'}
                                    onInput={(e) => solar.setDuotoneColor(e.currentTarget.value)}
                                    class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono"
                                />
                            </div>
                        </div>
                        <div class="space-y-2">
                            <label class="text-sm font-medium text-slate-300">
                                Accent Opacity:{' '}
                                <span class="text-blue-400">{solar.duotoneOpacity() ?? 0.5}</span>
                            </label>
                            <input
                                type="range"
                                min="0"
                                max="1"
                                step="0.05"
                                value={solar.duotoneOpacity() ?? 0.5}
                                onInput={(e) =>
                                    solar.setDuotoneOpacity(parseFloat(e.currentTarget.value))
                                }
                                class="w-full accent-blue-400"
                            />
                        </div>
                    </div>
                </div>
            </Show>

            <div class="flex items-center gap-2">
                <label class="text-xs text-slate-400 flex items-center gap-2 cursor-pointer">
                    <input type="checkbox" class="accent-amber-500" />
                </label>
            </div>

            <div class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-4">
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
                                                'stroke-width': isLinearLike(selectedStyle())
                                                    ? solar.strokeWidth()
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
    );
}
