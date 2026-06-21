<script setup lang="ts">
import { ref, provide, watch } from 'vue'
import { SOLAR_CONTEXT_KEY } from './context-key'

interface SolarRef {
    setProperty: (prop: string, value: string) => void
    element: HTMLDivElement | null
}

const props = withDefaults(
    defineProps<{
        color?: string
        size?: string | number
        strokeWidth?: number
        duotoneColor?: string
        duotoneOpacity?: number
    }>(),
    {},
)

const wrapperEl = ref<HTMLDivElement>()

const solarRef: SolarRef = {
    setProperty: (prop, value) => {
        wrapperEl.value?.style.setProperty(prop, value)
    },
    get element() {
        return wrapperEl.value ?? null
    },
}

provide(SOLAR_CONTEXT_KEY, solarRef)

watch(
    () => props.color,
    (c) => {
        if (c != null) wrapperEl.value?.style.setProperty('--solar-icon-color', c)
    },
    { immediate: true },
)

watch(
    () => props.size,
    (s) => {
        if (s != null)
            wrapperEl.value?.style.setProperty(
                '--solar-icon-size',
                typeof s === 'number' ? `${s}px` : s,
            )
    },
    { immediate: true },
)

watch(
    () => props.strokeWidth,
    (sw) => {
        if (sw != null)
            wrapperEl.value?.style.setProperty('--solar-stroke-width', String(sw))
    },
    { immediate: true },
)

watch(
    () => props.duotoneColor,
    (dc) => {
        if (dc) wrapperEl.value?.style.setProperty('--solar-duotone-color', dc)
    },
    { immediate: true },
)

watch(
    () => props.duotoneOpacity,
    (d) => {
        if (d != null)
            wrapperEl.value?.style.setProperty('--solar-duotone-opacity', String(d))
    },
    { immediate: true },
)
</script>

<template>
    <div ref="wrapperEl">
        <slot />
    </div>
</template>
