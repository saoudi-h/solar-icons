<script lang="ts">
    import { useSolar } from '@solar-icons/svelte';
    import * as Bold from '@solar-icons/svelte/bold';

    const solar = useSolar();
</script>

<div class="space-y-2">
    <div class="flex gap-2 items-center flex-wrap">
        <button
            class="px-3 py-1.5 bg-red-500 text-white rounded-lg text-sm font-medium"
            onclick={() => solar.setColor('#ef4444')}>Red</button
        >
        <button
            class="px-3 py-1.5 bg-blue-500 text-white rounded-lg text-sm"
            onclick={() => solar.setColor('#3b82f6')}>Blue</button
        >
        <button
            class="px-3 py-1.5 bg-green-500 text-white rounded-lg text-sm"
            onclick={() => solar.setColor('#22c55e')}>Green</button
        >
        <button
            class="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm"
            onclick={() => solar.setSize(48)}>48px</button
        >
        <button
            class="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm"
            onclick={() => solar.setSize(24)}>24px</button
        >
        <button class="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm"> </button>
        <span class="text-xs text-slate-500"> </span>
    </div>
    <div class="flex gap-4">
        <Bold.Home />
        <Bold.Star color="#ef4444" />
        <Bold.Heart />
    </div>
</div>
