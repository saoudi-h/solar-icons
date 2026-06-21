<script lang="ts">
    import { ALL_ICONS, STYLES, type IconStyle } from '$lib/icon-list';
    import * as Bold from '@solar-icons/svelte/bold';
    import * as Linear from '@solar-icons/svelte/linear';
    import * as BoldDuotone from '@solar-icons/svelte/bold-duotone';
    import * as LineDuotone from '@solar-icons/svelte/line-duotone';
    import * as Broken from '@solar-icons/svelte/broken';
    import * as Outline from '@solar-icons/svelte/outline';
    import SolarProvider from '@solar-icons/svelte/lib/SolarProvider.svelte';
    import ProviderControls from '$lib/ProviderControls.svelte';

    let selectedStyle: IconStyle = $state('Bold');
    let iconSize = $state(32);
    let iconColor = $state('#f59e0b');
    let searchQuery = $state('');
    let duotoneColor = $state('#60a5fa');
    let duotoneOpacity = $state(0.5);
    let strokeWidth = $state(1.5);

    let cssColor = $state('#f59e0b');
    let cssSize = $state(40);

    let providerColor = $state('#f59e0b');
    let providerSize = $state(36);
    let providerStroke = $state(1.5);

    const isDuotone = $derived(selectedStyle === 'BoldDuotone' || selectedStyle === 'LineDuotone');
    const isLinearLike = $derived(
        selectedStyle === 'Linear' || selectedStyle === 'LineDuotone' || selectedStyle === 'Broken'
    );

    const styleModules = {
        Bold,
        Linear,
        BoldDuotone,
        LineDuotone,
        Broken,
        Outline,
    };

    const filteredIcons = $derived(
        searchQuery
            ? ALL_ICONS.filter((name) => name.toLowerCase().includes(searchQuery.toLowerCase()))
            : ALL_ICONS
    );

    function getIcon(name: string) {
        const module = styleModules[selectedStyle];
        return (module as Record<string, unknown>)[name];
    }
</script>

<svelte:head>
    <title>Icon Gallery | Solar Icons Svelte</title>
</svelte:head>

<div class="space-y-12">
    <!-- Header -->
    <div class="text-center space-y-2">
        <h1 class="text-4xl font-bold text-white">Solar Icons - Svelte</h1>
        <p class="text-slate-400">
            {ALL_ICONS.length} icons x 6 styles = {ALL_ICONS.length * 6} variants
        </p>
    </div>

    <!-- ===== 1. Icon Gallery ===== -->
    <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
        <h2 class="text-xl font-bold text-white mb-1">1. Icon Gallery</h2>
        <p class="text-slate-400 text-sm mb-6">
            Select a style, tweak color/size/stroke, and browse all icons.
        </p>
        <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-4">
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-300">Style</label>
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
                        class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono"
                    />
                </div>
            </div>
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-300"
                    >Size: <span class="text-amber-400">{iconSize}px</span></label
                >
                <input
                    type="range"
                    min="16"
                    max="64"
                    bind:value={iconSize}
                    class="w-full accent-amber-500"
                />
            </div>
            <div
                class="space-y-2"
                class:opacity-30={!isLinearLike}
                class:pointer-events-none={!isLinearLike}
            >
                <label class="text-sm font-medium text-slate-300"
                    >Stroke: <span class="text-amber-400">{strokeWidth}</span></label
                >
                <input
                    type="range"
                    min="0.5"
                    max="4"
                    step="0.1"
                    bind:value={strokeWidth}
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
                        <label class="text-sm font-medium text-slate-300"
                            >Accent Color: <span class="text-blue-400 font-mono text-xs"
                                >{duotoneColor}</span
                            ></label
                        >
                        <div class="flex items-center gap-3">
                            <input
                                type="color"
                                bind:value={duotoneColor}
                                class="w-10 h-10 rounded-lg cursor-pointer border-0"
                            />
                            <input
                                type="text"
                                bind:value={duotoneColor}
                                class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono"
                            />
                        </div>
                    </div>
                    <div class="space-y-2">
                        <label class="text-sm font-medium text-slate-300"
                            >Accent Opacity: <span class="text-blue-400">{duotoneOpacity}</span
                            ></label
                        >
                        <input
                            type="range"
                            min="0"
                            max="1"
                            step="0.05"
                            bind:value={duotoneOpacity}
                            class="w-full accent-blue-400"
                        />
                    </div>
                </div>
            </div>
        {/if}
        <div
            class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-4"
            style="--solar-duotone-color: {duotoneColor}; --solar-duotone-opacity: {duotoneOpacity};"
        >
            {#each filteredIcons as iconName (iconName)}
                {@const IconComponent = getIcon(iconName)}
                {#if IconComponent}
                    <div
                        class="group flex flex-col items-center justify-center gap-2 p-4 bg-slate-800/30 rounded-xl border border-slate-700/30 hover:bg-slate-700/50 hover:border-amber-500/30 transition-all cursor-pointer"
                        title={iconName}
                    >
                        <div class="flex items-center justify-center" style="min-height: 64px;">
                            <IconComponent
                                size={iconSize}
                                color={iconColor}
                                stroke-width={isLinearLike ? strokeWidth : undefined}
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

    <!-- ===== 2. CSS Custom Properties ===== -->
    <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
        <h2 class="text-xl font-bold text-white mb-1">2. CSS Custom Properties</h2>
        <p class="text-slate-400 text-sm mb-4">
            Control icons via CSS custom properties on parent elements.
        </p>
        <div class="flex items-center gap-4 mb-4">
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Color</span>
                <input
                    type="color"
                    bind:value={cssColor}
                    class="w-10 h-10 rounded cursor-pointer border-0"
                />
            </div>
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Size ({cssSize}px)</span>
                <input
                    type="range"
                    min="16"
                    max="64"
                    bind:value={cssSize}
                    class="w-32 accent-amber-500"
                />
            </div>
        </div>
        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
            <div class="space-y-2">
                <code class="text-xs text-slate-500 block">style="--solar-icon-color: ..."</code>
                <div
                    class="bg-slate-900 rounded-lg p-4 flex gap-4"
                    style="--solar-icon-color: {cssColor}; --solar-icon-size: {cssSize}px;"
                >
                    {@const HomeIcon = getIcon('Home')}
                    {#if HomeIcon}<HomeIcon />{/if}
                    {@const SettingsIcon = getIcon('Settings')}
                    {#if SettingsIcon}<SettingsIcon />{/if}
                    {@const UserIcon = getIcon('User')}
                    {#if UserIcon}<UserIcon />{/if}
                </div>
            </div>
            <div class="space-y-2">
                <code class="text-xs text-slate-500 block">Tailwind [--solar-icon-color:...]</code>
                <div
                    class="bg-slate-900 rounded-lg p-4 flex gap-4 [--solar-icon-color:var(--d-color)] [--solar-icon-size:var(--d-size)]"
                    style="--d-color: {cssColor}; --d-size: {cssSize}px;"
                >
                    {@const HeartIcon = getIcon('Heart')}
                    {#if HeartIcon}<HeartIcon />{/if}
                    {@const StarIcon = getIcon('Star')}
                    {#if StarIcon}<StarIcon />{/if}
                    {@const BellIcon = getIcon('Bell')}
                    {#if BellIcon}<BellIcon />{/if}
                </div>
            </div>
        </div>
    </div>

    <!-- ===== 3. SolarProvider + useSolar ===== -->
    <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
        <h2 class="text-xl font-bold text-white mb-1">3. SolarProvider + useSolar</h2>
        <p class="text-slate-400 text-sm mb-4">
            Wrap icons in a provider. The hook mutates CSS custom properties on the wrapper div.
        </p>
        <div class="flex items-center gap-4 mb-4">
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Color</span>
                <input
                    type="color"
                    bind:value={providerColor}
                    class="w-10 h-10 rounded cursor-pointer border-0"
                />
            </div>
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Size ({providerSize}px)</span>
                <input
                    type="range"
                    min="16"
                    max="64"
                    bind:value={providerSize}
                    class="w-32 accent-amber-500"
                />
            </div>
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Stroke ({providerStroke})</span>
                <input
                    type="range"
                    min="0.5"
                    max="3"
                    step="0.1"
                    bind:value={providerStroke}
                    class="w-32 accent-amber-500"
                />
            </div>
        </div>
        <SolarProvider color={providerColor} size={providerSize} strokeWidth={providerStroke}>
            <div class="bg-slate-900 rounded-lg p-4">
                <ProviderControls />
            </div>
        </SolarProvider>
    </div>

    <!-- ===== 4. CSS Class Styling ===== -->
    <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
        <h2 class="text-xl font-bold text-white mb-1">4. CSS Class Styling</h2>
        <p class="text-slate-400 text-sm mb-4">
            Every icon has class 'solar' and 'solar-&#123;name&#125;'.
        </p>
        <code class="text-xs text-slate-500 block mb-2"
            >.solar {'{'} color: var(--solar-icon-color, currentColor); {'}'}</code
        >
        <code class="text-xs text-slate-500 block mb-4"
            >.solar-home {'{'} /* specific icon */ {'}'}</code
        >
        <div
            class="bg-slate-900 rounded-lg p-4 flex gap-4 [&_.solar]:text-amber-500 [&_.solar-star]:text-blue-400"
        >
            {@const HomeIcon = getIcon('Home')}
            {#if HomeIcon}<HomeIcon />{/if}
            {@const StarIcon = getIcon('Star')}
            {#if StarIcon}<StarIcon />{/if}
            {@const HeartIcon = getIcon('Heart')}
            {#if HeartIcon}<HeartIcon />{/if}
        </div>
    </div>

    <!-- ===== 5. Accessibility ===== -->
    <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
        <h2 class="text-xl font-bold text-white mb-1">5. Accessibility</h2>
        <p class="text-slate-400 text-sm mb-4">
            Icons have aria-hidden="true" by default. Pass alt, aria-label, or title to make them
            accessible.
        </p>
        <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
            <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                <code class="text-xs text-green-400 block">Default (aria-hidden)</code>
                {@const InfoIcon = getIcon('InfoCircle')}
                {#if InfoIcon}<InfoIcon size={32} />{/if}
            </div>
            <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                <code class="text-xs text-green-400 block">alt="Information"</code>
                {#if InfoIcon}<InfoIcon size={32} alt="Information" />{/if}
            </div>
            <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                <code class="text-xs text-green-400 block">aria-label</code>
                {#if InfoIcon}<InfoIcon size={32} aria-label="Information about this icon" />{/if}
            </div>
        </div>
    </div>
</div>
