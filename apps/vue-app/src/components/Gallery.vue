<script setup lang="ts">
import { ref, computed } from 'vue'
import { useSolar } from '@solar-icons/vue'
import { ALL_ICONS, STYLES, type IconStyle } from '@/lib/icon-list'
import * as solarIcons from '@solar-icons/vue'

const solar = useSolar()

const selectedStyle = ref<IconStyle>('Bold')
const searchQuery = ref('')

const isLinearLike = computed(() =>
    ['Linear', 'LineDuotone', 'Broken'].includes(selectedStyle.value),
)
const isDuotone = computed(() =>
    ['BoldDuotone', 'LineDuotone'].includes(selectedStyle.value),
)

const STYLE_SUFFIX: Record<IconStyle, string> = {
    Bold: 'Bold', BoldDuotone: 'BoldDuotone', Broken: 'Broken',
    Linear: 'Linear', LineDuotone: 'LineDuotone', Outline: 'Outline',
}

function getIcon(name: string, style: IconStyle) {
    const globalName = name + STYLE_SUFFIX[style]
    return (solarIcons as any)[globalName]
}

const filteredIcons = computed(() => {
    const q = searchQuery.value.toLowerCase()
    if (!q) return ALL_ICONS
    return ALL_ICONS.filter((n) => n.toLowerCase().includes(q))
})
</script>

<template>
    <div class="space-y-4">
        <div class="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-5 gap-4">
            <div class="space-y-1">
                <label class="text-xs font-medium">Style</label>
                <div class="flex flex-wrap gap-1">
                    <button
                        v-for="s in STYLES"
                        :key="s"
                        class="px-2.5 py-1 rounded-md text-xs font-medium transition-all"
                        :class="selectedStyle === s ? 'bg-primary text-primary-foreground' : 'bg-muted text-muted-foreground hover:bg-muted/80'"
                        @click="selectedStyle = s"
                    >
                        {{ s }}
                    </button>
                </div>
            </div>
            <div class="space-y-1">
                <label class="text-xs font-medium">Color</label>
                <div class="flex items-center gap-2">
                    <input type="color" :value="solar.color.value ?? '#f59e0b'" @input="solar.setColor(($event.target as HTMLInputElement).value)" class="w-8 h-8 rounded cursor-pointer border-0" />
                    <input type="text" :value="solar.color.value ?? '#f59e0b'" @input="solar.setColor(($event.target as HTMLInputElement).value)" class="flex-1 bg-muted border border-border rounded-md px-2 py-1 text-xs font-mono" />
                </div>
            </div>
            <div class="space-y-1">
                <label class="text-xs font-medium">Size: {{ solar.size.value ?? 32 }}px</label>
                <input type="range" min="16" max="64" :value="Number(solar.size.value) || 32" @input="solar.setSize(Number(($event.target as HTMLInputElement).value))" class="w-full" />
            </div>
            <div class="space-y-1" :class="{ 'opacity-30 pointer-events-none': !isLinearLike }">
                <label class="text-xs font-medium">Stroke: {{ solar.strokeWidth.value ?? 1.5 }}</label>
                <input type="range" min="0.5" max="4" step="0.1" :value="solar.strokeWidth.value ?? 1.5" :disabled="!isLinearLike" @input="solar.setStrokeWidth(parseFloat(($event.target as HTMLInputElement).value))" class="w-full" />
            </div>
            <div class="space-y-1">
                <label class="text-xs font-medium">Search</label>
                <input type="text" placeholder="Filter..." v-model="searchQuery" class="w-full bg-muted border border-border rounded-md px-2 py-1 text-xs" />
            </div>
        </div>

        <div v-if="isDuotone" class="pt-4 border-t border-border">
            <span class="text-xs font-semibold text-blue-500 uppercase">Duotone</span>
            <div class="grid grid-cols-2 gap-4 mt-2">
                <div class="space-y-1">
                    <label class="text-xs">Accent: {{ solar.duotoneColor.value ?? '#60a5fa' }}</label>
                    <input type="color" :value="solar.duotoneColor.value ?? '#60a5fa'" @input="solar.setDuotoneColor(($event.target as HTMLInputElement).value)" class="w-8 h-8 rounded border-0" />
                </div>
                <div class="space-y-1">
                    <label class="text-xs">Opacity: {{ solar.duotoneOpacity.value ?? 0.5 }}</label>
                    <input type="range" min="0" max="1" step="0.05" :value="solar.duotoneOpacity.value ?? 0.5" @input="solar.setDuotoneOpacity(parseFloat(($event.target as HTMLInputElement).value))" class="w-full" />
                </div>
            </div>
        </div>

        <label class="flex items-center gap-2 text-xs cursor-pointer">
        </label>

        <div class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-3">
            <div
                v-for="name in filteredIcons"
                :key="name"
                class="flex flex-col items-center justify-center gap-1 p-3 bg-muted/30 rounded-lg border border-border/30 hover:bg-muted/50 hover:border-primary/30 transition-all cursor-pointer"
                :title="name"
                v-show="getIcon(name, selectedStyle)"
            >
                <component
                    :is="getIcon(name, selectedStyle)"
                    :stroke-width="isLinearLike ? (solar.strokeWidth.value ?? undefined) : undefined"
                />
                <span class="text-[10px] text-muted-foreground truncate w-full text-center">{{ name }}</span>
            </div>
        </div>
    </div>
</template>
