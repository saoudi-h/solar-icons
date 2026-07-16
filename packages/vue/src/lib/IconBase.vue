<script setup lang="ts">
import { computed, useAttrs } from 'vue'

interface Props {
    alt?: string
    color?: string
    size?: string | number
    strokeWidth?: string | number
    secondaryColor?: string
    secondaryOpacity?: number
    iconName?: string
    isolated?: boolean
}

const props = withDefaults(defineProps<Props>(), {})

const attrs = useAttrs()

const SOLAR_CLASS = 'solar'

const iconClass = computed(() =>
    props.iconName ? `${SOLAR_CLASS} solar-${props.iconName}` : SOLAR_CLASS
)

const isAccessible = computed(() => !!props.alt || attrs['aria-label'] !== undefined || attrs['title'] !== undefined)

const baseStyle = computed(() => {
    const s: Record<string, string> = {}
    if (props.isolated) {
        s['--solar-secondary-color'] = 'initial'
        s['--solar-secondary-opacity'] = 'initial'
    }
    if (props.color !== undefined) s.color = props.color
    if (props.size !== undefined) {
        const sz = typeof props.size === 'number' ? `${props.size}px` : props.size
        s.width = sz
        s.height = sz
    }
    if (props.strokeWidth !== undefined) s['stroke-width'] = String(props.strokeWidth)
    if (props.secondaryColor) s['--solar-secondary-color'] = props.secondaryColor
    if (props.secondaryOpacity != null)
        s['--solar-secondary-opacity'] = String(props.secondaryOpacity)
    if (props.size === undefined && !props.isolated) {
        if (!s.fontSize && !s['font-size']) {
            s.fontSize = 'var(--solar-size, 24px)'
        }
    }
    return s
})

const svgWidth = computed(() => {
    if (props.size !== undefined) return undefined
    return props.isolated ? '24px' : '1em'
})
const svgHeight = computed(() => {
    if (props.size !== undefined) return undefined
    return props.isolated ? '24px' : '1em'
})
const svgColor = computed(() => {
    if (props.color !== undefined) return undefined
    return props.isolated ? 'currentColor' : 'var(--solar-color, currentColor)'
})
const svgStrokeWidth = computed(() => {
    if (props.strokeWidth !== undefined) return undefined
    return props.isolated ? '1.5' : 'var(--solar-stroke-width, 1.5)'
})
</script>

<template>
    <svg
        xmlns="http://www.w3.org/2000/svg"
        v-bind="$attrs"
        :class="iconClass"
        :style="Object.keys(baseStyle).length > 0 ? baseStyle : undefined"
        fill="none"
        viewBox="0 0 24 24"
        :width="svgWidth"
        :height="svgHeight"
        :color="svgColor"
        :stroke-width="svgStrokeWidth"
        :aria-hidden="isAccessible ? undefined : 'true'">
        <title v-if="alt">{{ alt }}</title>
        <slot />
    </svg>
</template>
