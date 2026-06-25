<script setup lang="ts">
import { computed, type Component } from 'vue'
import { WEIGHT_MAP, type Weight, type StyleComponentsMap } from '@solar-icons/core'
import type { IconProps } from './types'

type StyleComponents = StyleComponentsMap<Component>

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
