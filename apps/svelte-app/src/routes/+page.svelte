<script lang="ts">
    import { ALL_ICONS, STYLES, type IconStyle } from '$lib/icon-list';

    // Import all styles statically - Svelte will tree-shake unused ones
    import * as Bold from '@solar-icons/svelte/Bold';
    import * as Linear from '@solar-icons/svelte/Linear';
    import * as BoldDuotone from '@solar-icons/svelte/BoldDuotone';
    import * as LineDuotone from '@solar-icons/svelte/LineDuotone';
    import * as Broken from '@solar-icons/svelte/Broken';
    import * as Outline from '@solar-icons/svelte/Outline';

    // State
    let selectedStyle: IconStyle = $state('Bold');
    let iconSize = $state(32);
    let iconColor = $state('#f59e0b'); // amber-500
    let searchQuery = $state('');

    // Style modules map
    const styleModules = {
        Bold,
        Linear,
        BoldDuotone,
        LineDuotone,
        Broken,
        Outline,
    };

    // Filtered icons based on search
    const filteredIcons = $derived(
        searchQuery
            ? ALL_ICONS.filter((name) => name.toLowerCase().includes(searchQuery.toLowerCase()))
            : ALL_ICONS
    );

    // Get icon component by name
    function getIcon(name: string) {
        const module = styleModules[selectedStyle];
        return (module as Record<string, unknown>)[name];
    }
</script>

<svelte:head>
    <title>Icon Gallery | Solar Icons Svelte</title>
</svelte:head>

<div class="space-y-8">
    <!-- Header -->
    <div class="text-center space-y-2">
        <h1 class="text-4xl font-bold text-white">Icon Gallery</h1>
        <p class="text-slate-400">
            Displaying {filteredIcons.length} icons in
            <span class="text-amber-400">{selectedStyle}</span> style
        </p>
    </div>

    <!-- Controls -->
    <div class="bg-slate-800/50 rounded-2xl p-6 border border-slate-700/50 backdrop-blur-sm">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-6">
            <!-- Style Selector -->
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-300">Style</label>
                <div class="flex flex-wrap gap-2">
                    {#each STYLES as style}
                        <button
                            class="px-3 py-1.5 rounded-lg text-sm font-medium transition-all
                                   {selectedStyle === style
                                ? 'bg-amber-500 text-slate-900'
                                : 'bg-slate-700 text-slate-300 hover:bg-slate-600'}"
                            onclick={() => (selectedStyle = style)}
                        >
                            {style}
                        </button>
                    {/each}
                </div>
            </div>

            <!-- Color Picker -->
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-300">Color</label>
                <div class="flex items-center gap-3">
                    <input
                        type="color"
                        bind:value={iconColor}
                        class="w-10 h-10 rounded-lg cursor-pointer border-0"
                    />
                    <input
                        type="text"
                        bind:value={iconColor}
                        class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2
                               text-slate-200 text-sm font-mono"
                    />
                </div>
            </div>

            <!-- Size Slider -->
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-300">
                    Size: <span class="text-amber-400">{iconSize}px</span>
                </label>
                <input
                    type="range"
                    min="16"
                    max="64"
                    bind:value={iconSize}
                    class="w-full accent-amber-500"
                />
            </div>

            <!-- Search -->
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-300">Search</label>
                <input
                    type="text"
                    placeholder="Filter icons..."
                    bind:value={searchQuery}
                    class="w-full bg-slate-700 border border-slate-600 rounded-lg px-3 py-2
                           text-slate-200 placeholder-slate-500"
                />
            </div>
        </div>
    </div>

    <!-- Icon Grid -->
    <div
        class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-4"
    >
        {#each filteredIcons as iconName (iconName)}
            {@const IconComponent = getIcon(iconName)}
            {#if IconComponent}
                <div
                    class="group flex flex-col items-center justify-center gap-2 p-4
                           bg-slate-800/30 rounded-xl border border-slate-700/30
                           hover:bg-slate-700/50 hover:border-amber-500/30 transition-all cursor-pointer"
                    title={iconName}
                >
                    <div class="flex items-center justify-center" style="min-height: 64px;">
                        <IconComponent size={iconSize} color={iconColor} />
                    </div>
                    <span
                        class="text-xs text-slate-500 group-hover:text-slate-300
                                 truncate w-full text-center transition-colors"
                    >
                        {iconName}
                    </span>
                </div>
            {/if}
        {/each}
    </div>

    {#if filteredIcons.length === 0}
        <div class="text-center py-16 text-slate-400">
            No icons found matching "{searchQuery}"
        </div>
    {/if}
</div>
