<script setup lang="ts">
import { ref, provide, watch } from 'vue'
import type { Ref } from 'vue'
import { SOLAR_CONTEXT_KEY } from './context-key'

interface SolarState {
    color: Ref<string | undefined>
    setColor: (val: string) => void
    size: Ref<string | number | undefined>
    setSize: (val: string | number) => void
    strokeWidth: Ref<number | undefined>
    setStrokeWidth: (val: number) => void
    secondaryColor: Ref<string | undefined>
    setSecondaryColor: (val: string) => void
    secondaryOpacity: Ref<number | undefined>
    setSecondaryOpacity: (val: number) => void
}

const props = withDefaults(
    defineProps<{
        color?: string
        size?: string | number
        strokeWidth?: number
        secondaryColor?: string
        secondaryOpacity?: number
    }>(),
    {},
)

const wrapperEl = ref<HTMLDivElement>()

const color = ref(props.color)
const size = ref(props.size)
const strokeWidth = ref(props.strokeWidth)
const secondaryColor = ref(props.secondaryColor)
const secondaryOpacity = ref(props.secondaryOpacity)

const setColor = (val: string) => { color.value = val }
const setSize = (val: string | number) => { size.value = val }
const setStrokeWidth = (val: number) => { strokeWidth.value = val }
const setSecondaryColor = (val: string) => { secondaryColor.value = val }
const setSecondaryOpacity = (val: number) => { secondaryOpacity.value = val }

const state: SolarState = {
    color, setColor,
    size, setSize,
    strokeWidth, setStrokeWidth,
    secondaryColor, setSecondaryColor,
    secondaryOpacity, setSecondaryOpacity,
}

provide(SOLAR_CONTEXT_KEY, state)

watch(color, (c) => {
    if (c != null) wrapperEl.value?.style.setProperty('--solar-icon-color', c)
}, { immediate: true })

watch(size, (s) => {
    if (s != null)
        wrapperEl.value?.style.setProperty(
            '--solar-icon-size',
            typeof s === 'number' ? `${s}px` : s,
        )
}, { immediate: true })

watch(strokeWidth, (sw) => {
    if (sw != null)
        wrapperEl.value?.style.setProperty('--solar-stroke-width', String(sw))
}, { immediate: true })

watch(secondaryColor, (sc) => {
    if (sc) wrapperEl.value?.style.setProperty('--solar-duotone-color', sc)
}, { immediate: true })

watch(secondaryOpacity, (so) => {
    if (so != null)
        wrapperEl.value?.style.setProperty('--solar-duotone-opacity', String(so))
}, { immediate: true })

</script>

<template>
    <div ref="wrapperEl">
        <slot />
    </div>
</template>
