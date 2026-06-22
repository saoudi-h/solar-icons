<script lang="ts">
    import * as Bold from '@solar-icons/svelte/bold';
</script>

<div class="space-y-2">
    <code class="text-xs text-slate-500 block"
        >.solar {'{'} color: var(--solar-icon-color, currentColor); {'}'}</code
    >
    <code class="text-xs text-slate-500 block">.solar-home {'{'} /* specific icon */ {'}'}</code>
    <div
        class="bg-slate-900 rounded-lg p-4 flex gap-4 [&_.solar]:text-amber-500 [&_.solar-star]:text-blue-400"
    >
        <Bold.Home />
        <Bold.Star />
        <Bold.Heart />
    </div>
</div>
