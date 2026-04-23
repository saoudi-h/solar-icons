import { createSignal, createMemo, For, Show } from 'solid-js';
import type { Component } from 'solid-js';

// Import all styles statically
import * as Bold from '@solar-icons/solid/Bold';
import * as Linear from '@solar-icons/solid/Linear';
import * as BoldDuotone from '@solar-icons/solid/BoldDuotone';
import * as LineDuotone from '@solar-icons/solid/LineDuotone';
import * as Broken from '@solar-icons/solid/Broken';
import * as Outline from '@solar-icons/solid/Outline';

const STYLES = ['Bold', 'Linear', 'BoldDuotone', 'LineDuotone', 'Broken', 'Outline'] as const;
type IconStyle = (typeof STYLES)[number];

const styleModules: Record<IconStyle, Record<string, Component>> = {
    Bold,
    Linear,
    BoldDuotone,
    LineDuotone,
    Broken,
    Outline,
};

// Get all icon names from Bold style (they should all have the same names)
const ALL_ICONS = Object.keys(Bold).sort();

const App: Component = () => {
    const [selectedStyle, setSelectedStyle] = createSignal<IconStyle>('Bold');
    const [iconSize, setIconSize] = createSignal(32);
    const [iconColor, setIconColor] = createSignal('#f59e0b'); // amber-500
    const [searchQuery, setSearchQuery] = createSignal('');

    const filteredIcons = createMemo(() => {
        const query = searchQuery().toLowerCase();
        if (!query) return ALL_ICONS;
        return ALL_ICONS.filter((name) => name.toLowerCase().includes(query));
    });

    const currentModule = createMemo(() => styleModules[selectedStyle()]);

    const getIcon = (name: string) => {
        return currentModule()[name];
    };

    return (
        <div class="min-h-screen bg-slate-900 text-slate-200 p-8">
            <div class="max-w-7xl mx-auto space-y-8">
                {/* Header */}
                <div class="text-center space-y-2">
                    <h1 class="text-4xl font-bold text-white">Solar Icons — SolidJS</h1>
                    <p class="text-slate-400">
                        Displaying {filteredIcons().length} icons in{' '}
                        <span class="text-amber-400">{selectedStyle()}</span> style
                    </p>
                </div>

                {/* Controls */}
                <div class="bg-slate-800/50 rounded-2xl p-6 border border-slate-700/50 backdrop-blur-sm">
                    <div class="grid grid-cols-1 md:grid-cols-4 gap-6">
                        {/* Style Selector */}
                        <div class="space-y-2">
                            <label class="text-sm font-medium text-slate-300">Style</label>
                            <div class="flex flex-wrap gap-2">
                                <For each={STYLES}>
                                    {(style) => (
                                        <button
                                            class="px-3 py-1.5 rounded-lg text-sm font-medium transition-all"
                                            classList={{
                                                'bg-amber-500 text-slate-900':
                                                    selectedStyle() === style,
                                                'bg-slate-700 text-slate-300 hover:bg-slate-600':
                                                    selectedStyle() !== style,
                                            }}
                                            onClick={() => setSelectedStyle(style)}
                                        >
                                            {style}
                                        </button>
                                    )}
                                </For>
                            </div>
                        </div>

                        {/* Color Picker */}
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

                        {/* Size Slider */}
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

                        {/* Search */}
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
                </div>

                {/* Icon Grid */}
                <div class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-4">
                    <For each={filteredIcons()}>
                        {(iconName) => {
                            const IconComponent = getIcon(iconName);
                            return (
                                <Show when={IconComponent}>
                                    <div
                                        class="group flex flex-col items-center justify-center gap-2 p-4 bg-slate-800/30 rounded-xl border border-slate-700/30 hover:bg-slate-700/50 hover:border-amber-500/30 transition-all cursor-pointer"
                                        title={iconName}
                                    >
                                        <div
                                            class="flex items-center justify-center"
                                            style={{ 'min-height': '64px' }}
                                        >
                                            <IconComponent
                                                size={iconSize()}
                                                color={iconColor()}
                                            />
                                        </div>
                                        <span class="text-xs text-slate-500 group-hover:text-slate-300 truncate w-full text-center transition-colors">
                                            {iconName}
                                        </span>
                                    </div>
                                </Show>
                            );
                        }}
                    </For>
                </div>

                <Show when={filteredIcons().length === 0}>
                    <div class="text-center py-16 text-slate-400">
                        No icons found matching "{searchQuery()}"
                    </div>
                </Show>
            </div>
        </div>
    );
};

export default App;
