<script setup lang="ts">
import { computed } from 'vue'

interface StyleComponents {
    bold: any
    'bold-duotone': any
    broken: any
    linear: any
    'line-duotone': any
    outline: any
}

type Weight = 'Bold' | 'BoldDuotone' | 'Broken' | 'Linear' | 'LineDuotone' | 'Outline'

const WEIGHT_MAP: Record<Weight, keyof StyleComponents> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

const props = defineProps<{
    weight?: Weight
    styles: StyleComponents
}>()

const component = computed(() => {
    const key = props.weight ? WEIGHT_MAP[props.weight] : 'bold'
    return props.styles[key] ?? null
})
</script>

<template>
    <component
        :is="component"
        v-bind="$attrs"
    />
</template>
