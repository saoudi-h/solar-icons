<script lang="ts">
    import { useSolar } from '@solar-icons/svelte';
    import { ALL_ICONS, STYLES, type IconStyle } from './icon-list';

    import * as Bold from '@solar-icons/svelte/bold';
    import * as Linear from '@solar-icons/svelte/linear';
    import * as BoldDuotone from '@solar-icons/svelte/bold-duotone';
    import * as LineDuotone from '@solar-icons/svelte/line-duotone';
    import * as Broken from '@solar-icons/svelte/broken';
    import * as Outline from '@solar-icons/svelte/outline';

    const solar = useSolar();

    let selectedStyle: IconStyle = $state('Bold');
    let searchQuery = $state('');

    const isDuotone = $derived(selectedStyle === 'BoldDuotone' || selectedStyle === 'LineDuotone');
    const isLinearLike = $derived(
        selectedStyle === 'Linear' || selectedStyle === 'LineDuotone' || selectedStyle === 'Broken'
    );

    const styleModules = { Bold, Linear, BoldDuotone, LineDuotone, Broken, Outline };

    const filteredIcons = $derived(
        searchQuery
            ? ALL_ICONS.filter((name) => name.toLowerCase().includes(searchQuery.toLowerCase()))
            : ALL_ICONS
    );

    function getIcon(name: string) {
        const mod = styleModules[selectedStyle];
        return (mod as Record<string, unknown>)[name];
    }
</script>

<div class="space-y-4">
    <div class="grid grid-cols-1 md:grid-cols-4 gap-6">
        <div class="space-y-2">
            <span class="text-sm font-medium text-slate-300">Style</span>
            <div class="flex flex-wrap gap-2">
                {#each STYLES as style}
                    <button
                        class="px-3 py-1.5 rounded-lg text-sm font-medium transition-all {selectedStyle ===
                        style
                            ? 'bg-amber-500 text-slate-900'
                            : 'bg-slate-700 text-slate-300 hover:bg-slate-600'}"
                        onclick={() => (selectedStyle = style)}
                    >
                        {style}
                    </button>
                {/each}
            </div>
        </div>
        <div class="space-y-2">
            <span class="text-sm font-medium text-slate-300">Color</span>
            <div class="flex items-center gap-3">
                <input
                    type="color"
                    value={solar.color ?? '#f59e0b'}
                    oninput={(e) => solar.setColor(e.currentTarget.value)}
                    class="w-10 h-10 rounded-lg cursor-pointer border-0"
                />
                <input
                    type="text"
                    value={solar.color ?? '#f59e0b'}
                    oninput={(e) => solar.setColor(e.currentTarget.value)}
                    class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono"
                />
            </div>
        </div>
        <div class="space-y-2">
            <span class="text-sm font-medium text-slate-300">
                Size: <span class="text-amber-400">{solar.size ?? 32}px</span>
            </span>
            <input
                type="range"
                min="16"
                max="64"
                value={Number(solar.size) || 32}
                oninput={(e) => solar.setSize(Number(e.currentTarget.value))}
                class="w-full accent-amber-500"
            />
        </div>
        <div
            class="space-y-2"
            class:opacity-30={!isLinearLike}
            class:pointer-events-none={!isLinearLike}
        >
            <span class="text-sm font-medium text-slate-300">
                Stroke: <span class="text-amber-400">{solar.strokeWidth ?? 1.5}</span>
            </span>
            <input
                type="range"
                min="0.5"
                max="4"
                step="0.1"
                value={solar.strokeWidth ?? 1.5}
                oninput={(e) => solar.setStrokeWidth(parseFloat(e.currentTarget.value))}
                disabled={!isLinearLike}
                class="w-full accent-amber-500"
            />
        </div>
    </div>

    <div class="mb-4">
        <input
            type="text"
            placeholder="Filter icons..."
            bind:value={searchQuery}
            class="w-full bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 placeholder-slate-500"
        />
    </div>

    {#if isDuotone}
        <div class="pt-4 border-t border-slate-700/50 mb-4">
            <div class="flex items-center gap-2 mb-3">
                <span class="text-sm font-semibold text-blue-400 uppercase">Duotone</span>
                <span class="text-xs text-slate-500 bg-slate-700/50 px-2 py-0.5 rounded"
                    >--solar-duotone-color / --solar-duotone-opacity</span
                >
            </div>
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div class="space-y-2">
                    <span class="text-sm font-medium text-slate-300">
                        Accent Color: <span class="text-blue-400 font-mono text-xs"
                            >{solar.duotoneColor ?? '#60a5fa'}</span
                        >
                    </span>
                    <div class="flex items-center gap-3">
                        <input
                            type="color"
                            value={solar.duotoneColor ?? '#60a5fa'}
                            oninput={(e) => solar.setDuotoneColor(e.currentTarget.value)}
                            class="w-10 h-10 rounded-lg cursor-pointer border-0"
                        />
                        <input
                            type="text"
                            value={solar.duotoneColor ?? '#60a5fa'}
                            oninput={(e) => solar.setDuotoneColor(e.currentTarget.value)}
                            class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono"
                        />
                    </div>
                </div>
                <div class="space-y-2">
                    <span class="text-sm font-medium text-slate-300">
                        Accent Opacity: <span class="text-blue-400"
                            >{solar.duotoneOpacity ?? 0.5}</span
                        >
                    </span>
                    <input
                        type="range"
                        min="0"
                        max="1"
                        step="0.05"
                        value={solar.duotoneOpacity ?? 0.5}
                        oninput={(e) => solar.setDuotoneOpacity(parseFloat(e.currentTarget.value))}
                        class="w-full accent-blue-400"
                    />
                </div>
            </div>
        </div>
    {/if}

    <div class="flex items-center gap-2">
        <label class="text-xs text-slate-400 flex items-center gap-2 cursor-pointer">
            <input
                type="checkbox"
                checked={solar.mirrored ?? false}
                onchange={(e) => solar.setMirrored(e.currentTarget.checked)}
                class="accent-amber-500"
            />
            Mirror all icons
        </label>
    </div>

    <div
        class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-4"
    >
        {#each filteredIcons as iconName (iconName)}
            {#if getIcon(iconName)}
                {@const IconComponent = getIcon(iconName)}
                <div
                    class="group flex flex-col items-center justify-center gap-2 p-4 bg-slate-800/30 rounded-xl border border-slate-700/30 hover:bg-slate-700/50 hover:border-amber-500/30 transition-all cursor-pointer"
                    title={iconName}
                >
                    <div class="flex items-center justify-center" style="min-height: 64px;">
                        <IconComponent
                            stroke-width={isLinearLike
                                ? (solar.strokeWidth ?? undefined)
                                : undefined}
                        />
                    </div>
                    <span class="text-xs text-slate-500 truncate w-full text-center"
                        >{iconName}</span
                    >
                </div>
            {/if}
        {/each}
    </div>
</div>
