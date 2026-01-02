<script lang="ts">
    import '../app.css';

    let { children } = $props();
</script>

<div class="min-h-screen bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900">
    <nav class="border-b border-slate-700/50 bg-slate-900/80 backdrop-blur-sm sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-4 py-4 flex items-center justify-between">
            <a href="/" class="flex items-center gap-3">
                <span class="font-bold text-2xl text-white">Solar Icons</span>
                <span class="text-slate-400 text-sm">Svelte</span>
            </a>

            <div class="flex gap-6">
                <a href="/" class="text-slate-300 hover:text-amber-400 transition-colors">
                    Gallery
                </a>
                <a href="/exports" class="text-slate-300 hover:text-amber-400 transition-colors">
                    Exports Test
                </a>
            </div>
        </div>
    </nav>

    <main class="max-w-7xl mx-auto px-4 py-8">
        {@render children?.()}
    </main>
</div>
