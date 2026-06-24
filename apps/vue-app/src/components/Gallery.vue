<script setup lang="ts">
import { ref, computed } from 'vue'
import { useSolar, DynamicIcon } from '@solar-icons/vue'
import { ALL_ICONS, STYLES, type IconStyle } from '@/lib/icon-list'
import * as Bold from '@solar-icons/vue/bold'
import * as Linear from '@solar-icons/vue/linear'
import * as BoldDuotone from '@solar-icons/vue/bold-duotone'
import * as LineDuotone from '@solar-icons/vue/line-duotone'
import * as Broken from '@solar-icons/vue/broken'
import * as Outline from '@solar-icons/vue/outline'

const solar = useSolar()

const selectedStyle = ref<IconStyle>('Bold')
const searchQuery = ref('')

const isLinearLike = computed(() =>
    ['Linear', 'LineDuotone', 'Broken'].includes(selectedStyle.value),
)
const isDuotone = computed(() =>
    ['BoldDuotone', 'LineDuotone'].includes(selectedStyle.value),
)

const filteredIcons = computed(() => {
    const q = searchQuery.value.toLowerCase()
    if (!q) return ALL_ICONS
    return ALL_ICONS.filter((n) => n.toLowerCase().includes(q))
})

function getStyles(name: string) {
    return {
        bold: (Bold as any)[name + 'Icon'],
        'bold-duotone': (BoldDuotone as any)[name + 'Icon'],
        broken: (Broken as any)[name + 'Icon'],
        linear: (Linear as any)[name + 'Icon'],
        'line-duotone': (LineDuotone as any)[name + 'Icon'],
        outline: (Outline as any)[name + 'Icon'],
    }
}
</script>

<template>
    <div class="space-y-4">
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-6">
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-300">Style</label>
                <div class="flex flex-wrap gap-2">
                    <button
                        v-for="s in STYLES"
                        :key="s"
                        class="px-3 py-1.5 rounded-lg text-sm font-medium transition-all"
                        :class="selectedStyle === s ? 'bg-amber-500 text-slate-900' : 'bg-slate-700 text-slate-300 hover:bg-slate-600'"
                        @click="selectedStyle = s"
                    >{{ s }}</button>
                </div>
            </div>
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-300">Color</label>
                <div class="flex items-center gap-3">
                    <input type="color" :value="solar.color ?? '#f59e0b'" @input="solar.setColor(($event.target as HTMLInputElement).value)" class="w-10 h-10 rounded-lg cursor-pointer border-0" />
                    <input type="text" :value="solar.color ?? '#f59e0b'" @input="solar.setColor(($event.target as HTMLInputElement).value)" class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono" />
                </div>
            </div>
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-300">
                    Size: <span class="text-amber-400">{{ solar.size ?? 32 }}px</span>
                </label>
                <input type="range" min="16" max="64" :value="Number(solar.size) || 32" @input="solar.setSize(parseInt(($event.target as HTMLInputElement).value))" class="w-full accent-amber-500" />
            </div>
            <div class="space-y-2" :class="{ 'opacity-30 pointer-events-none': !isLinearLike }">
                <label class="text-sm font-medium text-slate-300">
                    Stroke: <span class="text-amber-400">{{ solar.strokeWidth ?? 1.5 }}</span>
                </label>
                <input type="range" min="0.5" max="4" step="0.1" :value="solar.strokeWidth ?? 1.5" :disabled="!isLinearLike" @input="solar.setStrokeWidth(parseFloat(($event.target as HTMLInputElement).value))" class="w-full accent-amber-500" />
            </div>
            <div class="space-y-2">
                <label class="text-sm font-medium text-slate-300">Search</label>
                <input type="text" placeholder="Filter icons..." v-model="searchQuery" class="w-full bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 placeholder-slate-500" />
            </div>
        </div>

        <div v-if="isDuotone" class="pt-6 border-t border-slate-700/50">
            <label class="text-sm font-semibold text-blue-400 uppercase tracking-wide">Duotone</label>
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-6 mt-2">
                <div class="space-y-2">
                    <label class="text-sm font-medium text-slate-300">
                        Accent Color: <span class="text-blue-400 font-mono text-xs">{{ solar.secondaryColor ?? '#60a5fa' }}</span>
                    </label>
                    <div class="flex items-center gap-3">
                        <input type="color" :value="solar.secondaryColor ?? '#60a5fa'" @input="solar.setSecondaryColor(($event.target as HTMLInputElement).value)" class="w-10 h-10 rounded-lg cursor-pointer border-0" />
                        <input type="text" :value="solar.secondaryColor ?? '#60a5fa'" @input="solar.setSecondaryColor(($event.target as HTMLInputElement).value)" class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono" />
                    </div>
                </div>
                <div class="space-y-2">
                    <label class="text-sm font-medium text-slate-300">
                        Accent Opacity: <span class="text-blue-400">{{ solar.secondaryOpacity ?? 0.5 }}</span>
                    </label>
                    <input type="range" min="0" max="1" step="0.05" :value="solar.secondaryOpacity ?? 0.5" @input="solar.setSecondaryOpacity(parseFloat(($event.target as HTMLInputElement).value))" class="w-full accent-blue-400" />
                </div>
            </div>
        </div>

        <p class="text-xs text-slate-500">
            Rendering {{ filteredIcons.length }} icons with <code class="text-amber-400 bg-slate-700 px-1 rounded">&lt;DynamicIcon :weight="..."&gt;</code>
        </p>

        <div class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-4">
            <div
                v-for="name in filteredIcons"
                :key="name"
                class="group flex flex-col items-center justify-center gap-2 p-4 bg-slate-800/30 rounded-xl border border-slate-700/30 hover:bg-slate-700/50 hover:border-amber-500/30 transition-all cursor-pointer"
                :title="name"
            >
                <div class="flex items-center justify-center" style="min-height: 64px">
                    <DynamicIcon
                        :weight="selectedStyle"
                        :styles="getStyles(name)"
                        :stroke-width="isLinearLike ? Number(solar.strokeWidth) : undefined"
                    />
                </div>
                <span class="text-xs text-slate-500 group-hover:text-slate-300 truncate w-full text-center">{{ name }}</span>
            </div>
        </div>
    </div>
</template>
