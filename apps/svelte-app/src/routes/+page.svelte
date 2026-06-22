<script lang="ts">
    import SolarProvider from '@solar-icons/svelte/lib/SolarProvider.svelte';
    import Gallery from '$lib/Gallery.svelte';
    import CssCustomProps from '$lib/CssCustomProps.svelte';
    import ProviderDemo from '$lib/ProviderDemo.svelte';
    import CssClassStyling from '$lib/CssClassStyling.svelte';
    import Accessibility from '$lib/Accessibility.svelte';
    import { ALL_ICONS } from '$lib/icon-list';
</script>

<svelte:head>
    <title>Icon Gallery | Solar Icons Svelte</title>
</svelte:head>

<div class="space-y-12">
    <div class="text-center space-y-2">
        <h1 class="text-4xl font-bold text-white">Solar Icons - Svelte</h1>
        <p class="text-slate-400">
            {ALL_ICONS.length} icons x 6 styles = {ALL_ICONS.length * 6} variants
        </p>
    </div>

    <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
        <h2 class="text-xl font-bold text-white mb-1">1. Icon Gallery</h2>
        <p class="text-slate-400 text-sm mb-4">
            Browse all icons. Controls use SolarProvider + useSolar().
        </p>
        <SolarProvider
            color="#f59e0b"
            size={32}
            strokeWidth={1.5}
            duotoneColor="#60a5fa"
            duotoneOpacity={0.5}
        >
            <Gallery />
        </SolarProvider>
    </div>

    <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
        <h2 class="text-xl font-bold text-white mb-1">2. CSS Custom Properties</h2>
        <p class="text-slate-400 text-sm mb-4">
            Control icons via CSS custom properties on parent elements. No provider needed.
        </p>
        <CssCustomProps />
    </div>

    <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
        <h2 class="text-xl font-bold text-white mb-1">3. SolarProvider + useSolar</h2>
        <p class="text-slate-400 text-sm mb-4">A separate provider with its own controls.</p>
        <ProviderDemo />
    </div>

    <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
        <h2 class="text-xl font-bold text-white mb-1">4. CSS Class Styling</h2>
        <p class="text-slate-400 text-sm mb-4">
            Every icon has class 'solar' and 'solar-&#123;name&#125;'.
        </p>
        <CssClassStyling />
    </div>

    <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
        <h2 class="text-xl font-bold text-white mb-1">5. Accessibility</h2>
        <p class="text-slate-400 text-sm mb-4">
            Icons have aria-hidden="true" by default. Pass alt, aria-label, or title.
        </p>
        <Accessibility />
    </div>
</div>
