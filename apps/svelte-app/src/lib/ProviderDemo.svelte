<script lang="ts">
    import SolarProvider from '@solar-icons/svelte/lib/SolarProvider.svelte';
    import ProviderDemoInner from './ProviderDemoInner.svelte';

    let providerColor = $state('#f59e0b');
    let providerSize = $state(36);
    let providerStroke = $state(1.5);
    let providerMirrored = $state(false);
</script>

<div>
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
        <div class="space-y-1">
            <span class="text-xs text-slate-400">Mirror</span>
            <label class="flex items-center gap-2 cursor-pointer">
                <input type="checkbox" bind:checked={providerMirrored} class="accent-amber-500" />
                <span class="text-sm text-slate-300">{providerMirrored ? 'On' : 'Off'}</span>
            </label>
        </div>
    </div>

    <SolarProvider
        color={providerColor}
        size={providerSize}
        strokeWidth={providerStroke}
        mirrored={providerMirrored}
    >
        <div class="bg-slate-900 rounded-lg p-4">
            <ProviderDemoInner />
        </div>
    </SolarProvider>
</div>
