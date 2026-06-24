<script lang="ts">
    import { useSolar, DynamicIcon } from '@solar-icons/svelte';
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
            ? ALL_ICONS.filter((n) => n.toLowerCase().includes(searchQuery.toLowerCase()))
            : ALL_ICONS
    );

    function getStyles(name: string) {
        return {
            bold: (Bold as any)[name + 'Icon'],
            'bold-duotone': (BoldDuotone as any)[name + 'Icon'],
            broken: (Broken as any)[name + 'Icon'],
            linear: (Linear as any)[name + 'Icon'],
            'line-duotone': (LineDuotone as any)[name + 'Icon'],
            outline: (Outline as any)[name + 'Icon'],
        };
    }
</script>

<div class="space-y-4">
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-6">
        <div class="space-y-2">
            <label class="text-sm font-medium text-slate-300">Style</label>
            <div class="flex flex-wrap gap-2">
                {#each STYLES as s}
                    <button
                        class={`px-3 py-1.5 rounded-lg text-sm font-medium transition-all ${
                            selectedStyle === s
                                ? 'bg-amber-500 text-slate-900'
                                : 'bg-slate-700 text-slate-300 hover:bg-slate-600'
                        }`}
                        onclick={() => (selectedStyle = s)}
                    >
                        {s}
                    </button>
                {/each}
            </div>
        </div>
        <div class="space-y-2">
            <label class="text-sm font-medium text-slate-300">Color</label>
            <div class="flex items-center gap-3">
                <input type="color" value={solar.color ?? '#f59e0b'} oninput={(e) => solar.setColor(e.currentTarget.value)} class="w-10 h-10 rounded-lg cursor-pointer border-0" />
                <input type="text" value={solar.color ?? '#f59e0b'} oninput={(e) => solar.setColor(e.currentTarget.value)} class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono" />
            </div>
        </div>
        <div class="space-y-2">
            <label class="text-sm font-medium text-slate-300">
                Size: <span class="text-amber-400">{solar.size ?? 32}px</span>
            </label>
            <input type="range" min="16" max="64" value={Number(solar.size) || 32} oninput={(e) => solar.setSize(parseInt(e.currentTarget.value))} class="w-full accent-amber-500" />
        </div>
        <div class={`space-y-2 ${!isLinearLike ? 'opacity-30 pointer-events-none' : ''}`}>
            <label class="text-sm font-medium text-slate-300">
                Stroke: <span class="text-amber-400">{solar.strokeWidth ?? 1.5}</span>
            </label>
            <input type="range" min="0.5" max="4" step="0.1" value={solar.strokeWidth ?? 1.5} oninput={(e) => solar.setStrokeWidth(parseFloat(e.currentTarget.value))} disabled={!isLinearLike} class="w-full accent-amber-500" />
        </div>
        <div class="space-y-2">
            <label class="text-sm font-medium text-slate-300">Search</label>
            <input type="text" placeholder="Filter icons..." bind:value={searchQuery} class="w-full bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 placeholder-slate-500" />
        </div>
    </div>

    {#if isDuotone}
        <div class="pt-6 border-t border-slate-700/50">
            <div class="flex items-center gap-2 mb-4">
                <span class="text-sm font-semibold text-blue-400 uppercase tracking-wide">Duotone</span>
                <span class="text-xs text-slate-500 bg-slate-700/50 px-2 py-0.5 rounded">--solar-duotone-color / --solar-duotone-opacity</span>
            </div>
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                <div class="space-y-2">
                    <label class="text-sm font-medium text-slate-300">
                        Accent Color: <span class="text-blue-400 font-mono text-xs">{solar.secondaryColor ?? '#60a5fa'}</span>
                    </label>
                    <div class="flex items-center gap-3">
                        <input type="color" value={solar.secondaryColor ?? '#60a5fa'} oninput={(e) => solar.setSecondaryColor(e.currentTarget.value)} class="w-10 h-10 rounded-lg cursor-pointer border-0" />
                        <input type="text" value={solar.secondaryColor ?? '#60a5fa'} oninput={(e) => solar.setSecondaryColor(e.currentTarget.value)} class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono" />
                    </div>
                </div>
                <div class="space-y-2">
                    <label class="text-sm font-medium text-slate-300">
                        Accent Opacity: <span class="text-blue-400">{solar.secondaryOpacity ?? 0.5}</span>
                    </label>
                    <input type="range" min="0" max="1" step="0.05" value={solar.secondaryOpacity ?? 0.5} oninput={(e) => solar.setSecondaryOpacity(parseFloat(e.currentTarget.value))} class="w-full accent-blue-400" />
                </div>
            </div>
        </div>
    {/if}

    <p class="text-xs text-slate-500">
        Rendering {filteredIcons.length} icons with <code class="text-amber-400 bg-slate-700 px-1 rounded">{'<DynamicIcon weight={...}>'}</code>
    </p>

    <div class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-4">
        {#each filteredIcons as iconName (iconName)}
            {@const styles = getStyles(iconName)}
            {#if styles.bold}
                <div
                    class="group flex flex-col items-center justify-center gap-2 p-4 bg-slate-800/30 rounded-xl border border-slate-700/30 hover:bg-slate-700/50 hover:border-amber-500/30 transition-all cursor-pointer"
                    title={iconName}
                >
                    <div class="flex items-center justify-center" style="min-height: 64px;">
                        <DynamicIcon weight={selectedStyle} styles={getStyles(iconName)} stroke-width={isLinearLike ? (Number(solar.strokeWidth)) : undefined} />
                    </div>
                    <span class="text-xs text-slate-500 truncate w-full text-center">{iconName}</span>
                </div>
            {/if}
        {/each}
    </div>
</div>
