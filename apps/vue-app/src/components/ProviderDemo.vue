<script setup lang="ts">
import { ref } from 'vue'
import { SolarProvider } from '@solar-icons/vue'
import ProviderDemoInner from './ProviderDemoInner.vue'

const providerColor = ref('#f59e0b')
const providerSize = ref(36)
const providerStroke = ref(1.5)
</script>

<template>
    <SolarProvider :color="providerColor" :size="providerSize" :stroke-width="providerStroke">
        <div class="space-y-4">
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
            </div>
            <div class="bg-muted/30 rounded-lg p-4">
                <ProviderDemoInner />
            </div>
        </div>
    </SolarProvider>
</template>
