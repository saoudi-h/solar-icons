<script setup lang="ts">
import { computed, ref, provide } from 'vue'
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

const styleVars = computed(() => {
    const s: Record<string, string> = {}
    if (props.color) s['--solar-icon-color'] = props.color
    if (props.size != null)
        s['--solar-icon-size'] =
            typeof props.size === 'number' ? `${props.size}px` : props.size
    if (props.strokeWidth != null)
        s['--solar-stroke-width'] = String(props.strokeWidth)
    if (props.duotoneColor) s['--solar-duotone-color'] = props.duotoneColor
    if (props.duotoneOpacity != null)
        s['--solar-duotone-opacity'] = String(props.duotoneOpacity)
    return s
})
</script>

<template>
    <div ref="wrapperEl" :style="styleVars">
        <slot />
    </div>
</template>
