<script lang="ts">
    import {
        HomeIcon,
        SettingsIcon,
        UserIcon,
        HeartIcon,
        StarIcon,
        BellIcon,
    } from '@solar-icons/svelte/bold';

    let cssColor = $state('#f59e0b');
    let cssSize = $state(40);
</script>

<div>
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
                <HomeIcon />
                <SettingsIcon />
                <UserIcon />
            </div>
        </div>
        <div class="space-y-2">
            <code class="text-xs text-slate-500 block">Tailwind [--solar-icon-color:...]</code>
            <div
                class="bg-slate-900 rounded-lg p-4 flex gap-4 [--solar-icon-color:var(--d-color)] [--solar-icon-size:var(--d-size)]"
                style="--d-color: {cssColor}; --d-size: {cssSize}px;"
            >
                <HeartIcon />
                <StarIcon />
                <BellIcon />
            </div>
        </div>
    </div>
</div>
