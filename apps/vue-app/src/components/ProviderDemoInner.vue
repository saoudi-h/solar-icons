<script setup lang="ts">
import { useSolar } from '@solar-icons/vue'
import * as solarIcons from '@solar-icons/vue'

const solar = useSolar()
</script>

<template>
    <div class="space-y-2">
        <div class="flex gap-1 flex-wrap items-center">
            <button class="px-2 py-1 bg-red-500 text-white rounded text-xs" @click="solar.setColor('#ef4444')">Red</button>
            <button class="px-2 py-1 bg-blue-500 text-white rounded text-xs" @click="solar.setColor('#3b82f6')">Blue</button>
            <button class="px-2 py-1 bg-green-500 text-white rounded text-xs" @click="solar.setColor('#22c55e')">Green</button>
            <button class="px-2 py-1 bg-muted rounded text-xs" @click="solar.setSize(48)">48px</button>
            <button class="px-2 py-1 bg-muted rounded text-xs" @click="solar.setSize(24)">24px</button>
            </button>
            <span class="text-xs text-muted-foreground">
            </span>
        </div>
        <div class="flex gap-3">
            <solarIcons.HomeBold />
            <solarIcons.StarBold color="#ef4444" />
            <solarIcons.HeartBold />
        </div>
    </div>
</template>
