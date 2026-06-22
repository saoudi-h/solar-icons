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
    duotoneColor: Ref<string | undefined>
    setDuotoneColor: (val: string) => void
    duotoneOpacity: Ref<number | undefined>
    setDuotoneOpacity: (val: number) => void
}

const props = withDefaults(
    defineProps<{
        color?: string
        size?: string | number
        strokeWidth?: number
        duotoneColor?: string
        duotoneOpacity?: number
        mirrored?: boolean
    }>(),
    {},
)

const wrapperEl = ref<HTMLDivElement>()

const color = ref(props.color)
const size = ref(props.size)
const strokeWidth = ref(props.strokeWidth)
const duotoneColor = ref(props.duotoneColor)
const duotoneOpacity = ref(props.duotoneOpacity)
const mirrored = ref(props.mirrored)

const setColor = (val: string) => { color.value = val }
const setSize = (val: string | number) => { size.value = val }
const setStrokeWidth = (val: number) => { strokeWidth.value = val }
const setDuotoneColor = (val: string) => { duotoneColor.value = val }
const setDuotoneOpacity = (val: number) => { duotoneOpacity.value = val }
const setMirrored = (val: boolean) => { mirrored.value = val }

const state: SolarState = {
    color, setColor,
    size, setSize,
    strokeWidth, setStrokeWidth,
    duotoneColor, setDuotoneColor,
    duotoneOpacity, setDuotoneOpacity,
    mirrored, setMirrored,
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

watch(duotoneColor, (dc) => {
    if (dc) wrapperEl.value?.style.setProperty('--solar-duotone-color', dc)
}, { immediate: true })

watch(duotoneOpacity, (d) => {
    if (d != null)
        wrapperEl.value?.style.setProperty('--solar-duotone-opacity', String(d))
}, { immediate: true })

watch(mirrored, (m) => {
    if (m !== undefined)
        wrapperEl.value?.style.setProperty(
            '--solar-icon-mirrored',
            m ? 'scale(-1, 1)' : 'none',
        )
}, { immediate: true })
</script>

<template>
    <div ref="wrapperEl">
        <slot />
    </div>
</template>
