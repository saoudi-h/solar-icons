<script setup lang="ts">
import { ref } from 'vue'
import { SolarProvider } from '@solar-icons/vue'
import ProviderDemoInner from './ProviderDemoInner.vue'

const providerColor = ref('#f59e0b')
const providerSize = ref(36)
const providerStroke = ref(1.5)
const providerMirrored = ref(false)
</script>

<template>
    <div>
        <div class="flex items-center gap-4 mb-4">
            <div class="space-y-1">
                <span class="text-xs">Color</span>
                <input type="color" v-model="providerColor" class="w-8 h-8 rounded border-0" />
            </div>
            <div class="space-y-1">
                <span class="text-xs">Size ({{ providerSize }}px)</span>
                <input type="range" min="16" max="64" v-model.number="providerSize" class="w-24" />
            </div>
            <div class="space-y-1">
                <span class="text-xs">Stroke ({{ providerStroke }})</span>
                <input type="range" min="0.5" max="3" step="0.1" v-model.number="providerStroke" class="w-24" />
            </div>
            <div class="space-y-1">
                <span class="text-xs">Mirror</span>
                <label class="flex items-center gap-1 cursor-pointer text-xs">
                    <input type="checkbox" v-model="providerMirrored" />
                    {{ providerMirrored ? 'On' : 'Off' }}
                </label>
            </div>
        </div>
        <SolarProvider :color="providerColor" :size="providerSize" :stroke-width="providerStroke" :mirrored="providerMirrored">
            <div class="bg-muted/30 rounded-lg p-4">
                <ProviderDemoInner />
            </div>
        </SolarProvider>
    </div>
</template>
