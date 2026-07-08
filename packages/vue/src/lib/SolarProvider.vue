<script setup lang="ts">
import { ref, provide, watch, computed } from 'vue'
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
        /** Default icon color. Sets `--solar-color` on the wrapper. */
        color?: string
        /** Default icon size. Sets `--solar-size`. */
        size?: string | number
        /** Default stroke width. Sets `--solar-stroke-width`. */
        strokeWidth?: number
        /** Default secondary color for duotone styles. Sets `--solar-secondary-color`. */
        secondaryColor?: string
        /** Default secondary opacity for duotone styles (0–1). Sets `--solar-secondary-opacity`. */
        secondaryOpacity?: number
    }>(),
    {},
)

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

const wrapperStyle = computed(() => {
    const s: Record<string, string> = { display: 'contents' }
    if (color.value !== undefined) s['--solar-color'] = color.value
    if (size.value != null)
        s['--solar-size'] = typeof size.value === 'number' ? `${size.value}px` : size.value
    if (strokeWidth.value != null) s['--solar-stroke-width'] = String(strokeWidth.value)
    if (secondaryColor.value) s['--solar-secondary-color'] = secondaryColor.value
    if (secondaryOpacity.value != null)
        s['--solar-secondary-opacity'] = String(secondaryOpacity.value)
    return s
})
</script>

<template>
    <div :style="wrapperStyle">
        <slot />
    </div>
</template>
