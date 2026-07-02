<template>
  <div class="space-y-6">
    <div>
      <h1 class="text-3xl font-bold">
        Icon Gallery
      </h1>
      <p class="text-slate-400 mt-1">
        1246 icons × 6 styles = 7476 variants. Uses explicit style imports (<code class="text-amber-400">@solar-icons/vue/bold</code> etc.) for dynamic browsing — auto-imports can't resolve <code class="text-amber-400">&lt;component :is="string"&gt;</code> at runtime.
      </p>
    </div>

    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
      <div class="space-y-1.5">
        <label class="text-sm font-medium text-slate-300">Style</label>
        <div class="flex flex-wrap gap-1.5">
          <button
            v-for="s in STYLES"
            :key="s"
            class="px-2.5 py-1 rounded-lg text-xs font-medium transition-all cursor-pointer"
            :class="selectedStyle === s ? 'bg-amber-500 text-slate-900' : 'bg-slate-800 text-slate-400 hover:bg-slate-700'"
            @click="selectedStyle = s"
          >
            {{ s }}
          </button>
        </div>
      </div>

      <div class="space-y-1.5">
        <label class="text-sm font-medium text-slate-300">Color</label>
        <div class="flex items-center gap-2">
          <input
            type="color"
            :value="color ?? '#f59e0b'"
            class="w-9 h-9 rounded-lg cursor-pointer border-0 shrink-0"
            @input="setColor(($event.target as HTMLInputElement).value)"
          >
          <input
            type="text"
            :value="color ?? '#f59e0b'"
            class="flex-1 bg-slate-800 border border-slate-700 rounded-lg px-3 py-1.5 text-slate-200 text-sm font-mono"
            @input="setColor(($event.target as HTMLInputElement).value)"
          >
        </div>
      </div>

      <div class="space-y-1.5">
        <label class="text-sm font-medium text-slate-300">Size: <span class="text-amber-400">{{ size ?? 32 }}px</span></label>
        <input
          type="range"
          min="16"
          max="64"
          :value="Number(size) || 32"
          class="w-full accent-amber-500"
          @input="setSize(parseInt(($event.target as HTMLInputElement).value))"
        >
      </div>

      <div class="space-y-1.5" :class="{ 'opacity-30 pointer-events-none': !isLinearLike }">
        <label class="text-sm font-medium text-slate-300">Stroke: <span class="text-amber-400">{{ strokeWidth ?? 1.5 }}</span></label>
        <input
          type="range"
          min="0.5"
          max="4"
          step="0.1"
          :value="strokeWidth ?? 1.5"
          :disabled="!isLinearLike"
          class="w-full accent-amber-500"
          @input="setStrokeWidth(parseFloat(($event.target as HTMLInputElement).value))"
        >
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

    <div v-if="isDuotone" class="flex items-center gap-6 pt-4 border-t border-slate-800">
      <div class="space-y-1.5">
        <label class="text-sm font-medium text-blue-400">Accent Color</label>
        <div class="flex items-center gap-2">
          <input
            type="color"
            :value="secondaryColor ?? '#60a5fa'"
            class="w-8 h-8 rounded-lg cursor-pointer border-0"
            @input="setSecondaryColor(($event.target as HTMLInputElement).value)"
          >
        </div>
      </div>
      <div class="space-y-1.5">
        <label class="text-sm font-medium text-blue-400">Opacity: {{ secondaryOpacity ?? 0.5 }}</label>
        <input
          type="range"
          min="0"
          max="1"
          step="0.05"
          :value="secondaryOpacity ?? 0.5"
          class="w-32 accent-blue-400"
          @input="setSecondaryOpacity(parseFloat(($event.target as HTMLInputElement).value))"
        >
      </div>
    </div>

    <div class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-3">
      <div
        v-for="name in filteredIcons"
        :key="name"
        class="group flex flex-col items-center justify-center gap-1.5 p-3 bg-slate-900/50 rounded-xl border border-slate-800/50 hover:bg-slate-800/50 hover:border-amber-500/30 transition-all cursor-pointer"
        :title="name"
      >
        <div class="flex items-center justify-center" style="min-height: 48px">
          <component
            :is="getIcon(name)"
            :stroke-width="isLinearLike ? Number(strokeWidth) : undefined"
          />
        </div>
        <span class="text-[10px] text-slate-600 group-hover:text-slate-400 truncate w-full text-center">{{ name }}</span>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import * as Bold from '@solar-icons/vue/bold'
import * as BoldDuotone from '@solar-icons/vue/bold-duotone'
import * as Broken from '@solar-icons/vue/broken'
import * as Linear from '@solar-icons/vue/linear'
import * as LineDuotone from '@solar-icons/vue/line-duotone'
import * as Outline from '@solar-icons/vue/outline'
import ICON_NAMES, { STYLES, type IconStyle } from '~/lib/icon-names'

const { color, setColor, size, setSize, strokeWidth, setStrokeWidth, secondaryColor, setSecondaryColor, secondaryOpacity, setSecondaryOpacity } = useSolar()

const selectedStyle = ref<IconStyle>('Bold')
const searchQuery = ref('')

const isLinearLike = computed(() => ['Linear', 'LineDuotone', 'Broken'].includes(selectedStyle.value))
const isDuotone = computed(() => ['BoldDuotone', 'LineDuotone'].includes(selectedStyle.value))

const styleModules: Record<IconStyle, Record<string, any>> = {
  Bold, BoldDuotone, Broken, Linear, LineDuotone, Outline,
}

function getIcon(name: string) {
  return styleModules[selectedStyle.value][name + 'Icon'] ?? null
}

const filteredIcons = computed(() => {
  const q = searchQuery.value.toLowerCase()
  const names = ICON_NAMES as readonly string[]
  if (!q) return names
  return names.filter(n => n.toLowerCase().includes(q))
})
</script>
