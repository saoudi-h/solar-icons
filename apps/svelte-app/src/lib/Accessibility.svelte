<script lang="ts">
    import * as Bold from '@solar-icons/svelte/bold';
</script>

<div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
    <div class="bg-slate-900 rounded-lg p-4 space-y-2">
        <code class="text-xs text-green-400 block">Default (aria-hidden)</code>
        <Bold.InfoCircle size={32} />
    </div>
    <div class="bg-slate-900 rounded-lg p-4 space-y-2">
        <code class="text-xs text-green-400 block">alt="Information"</code>
        <Bold.InfoCircle size={32} alt="Information" />
    </div>
    <div class="bg-slate-900 rounded-lg p-4 space-y-2">
        <code class="text-xs text-green-400 block">aria-label</code>
        <Bold.InfoCircle size={32} aria-label="Information about this icon" />
    </div>
</div>
