<template>
  <div class="space-y-6">
    <div>
      <h1 class="text-3xl font-bold">
        Dynamic Icons
      </h1>
      <p class="text-slate-400 mt-1">
        Dynamic icons from <code class="text-amber-400">@solar-icons/nuxt/dynamic</code>. Each icon wraps all 6 styles and switches at runtime via the <code class="text-amber-400">weight</code> prop.
      </p>
    </div>

    <div class="flex items-center gap-4">
      <label class="text-sm font-medium text-slate-300">Weight:</label>
      <div class="flex flex-wrap gap-1.5">
        <button
          v-for="w in WEIGHTS"
          :key="w"
          class="px-2.5 py-1 rounded-lg text-xs font-medium transition-all cursor-pointer"
          :class="selectedWeight === w ? 'bg-amber-500 text-slate-900' : 'bg-slate-800 text-slate-400 hover:bg-slate-700'"
          @click="selectedWeight = w"
        >
          {{ w }}
        </button>
      </div>
    </div>

    <div class="flex items-center gap-3">
      <input
        v-model="searchQuery"
        type="text"
        placeholder="Filter icons..."
        class="flex-1 bg-slate-800 border border-slate-700 rounded-lg px-3 py-2 text-slate-200 placeholder-slate-500 text-sm"
      >
      <span class="text-xs text-slate-500">{{ filteredIcons.length }} icons</span>
    </div>

    <div class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-3">
      <div
        v-for="name in filteredIcons"
        :key="name"
        class="group flex flex-col items-center justify-center gap-1.5 p-3 bg-slate-900/50 rounded-xl border border-slate-800/50 hover:bg-slate-800/50 hover:border-amber-500/30 transition-all cursor-pointer"
        :title="name"
      >
        <div class="flex items-center justify-center" style="min-height: 48px">
          <component :is="dynamic[name + 'Icon']" :weight="selectedWeight" />
        </div>
        <span class="text-[10px] text-slate-600 group-hover:text-slate-400 truncate w-full text-center">{{ name }}</span>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import * as dynamic from '@solar-icons/nuxt/dynamic'

const WEIGHTS = ['Bold', 'BoldDuotone', 'Broken', 'Linear', 'LineDuotone', 'Outline'] as const

const selectedWeight = ref<(typeof WEIGHTS)[number]>('Linear')
const searchQuery = ref('')

const DYNAMIC_NAMES = Object.keys(dynamic)
  .filter(k => k.endsWith('Icon'))
  .map(k => k.replace('Icon', ''))
  .sort()

const filteredIcons = computed(() => {
  const q = searchQuery.value.toLowerCase()
  if (!q) return DYNAMIC_NAMES
  return DYNAMIC_NAMES.filter(n => n.toLowerCase().includes(q))
})
</script>
