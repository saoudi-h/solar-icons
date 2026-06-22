<script setup lang="ts">
import { computed } from 'vue'

interface Props {
    alt?: string
    color?: string
    size?: string | number
    strokeWidth?: string | number
    secondaryColor?: string
    secondaryOpacity?: number
    iconName?: string
}

const props = withDefaults(defineProps<Props>(), {})

const SOLAR_CLASS = 'solar'

const iconClass = computed(() =>
    props.iconName ? `${SOLAR_CLASS} solar-${props.iconName}` : SOLAR_CLASS,
)

const isAccessible = computed(() => !!props.alt)

const baseStyle = computed(() => {
    const s: Record<string, string> = {
        color: props.color ?? 'var(--solar-icon-color, currentColor)',
    }
    const sz =
        typeof props.size === 'number'
            ? `${props.size}px`
            : props.size ?? 'var(--solar-icon-size, 24px)'
    s.width = sz
    s.height = sz
    if (props.secondaryColor) s['--solar-duotone-color'] = props.secondaryColor
    if (props.secondaryOpacity != null)
        s['--solar-duotone-opacity'] = String(props.secondaryOpacity)
    return s
})

const svgStrokeWidth = computed(
    () => props.strokeWidth ?? 'var(--solar-stroke-width, 1.5)',
)
</script>

<template>
    <svg
        xmlns="http://www.w3.org/2000/svg"
        :class="iconClass"
        :style="baseStyle"
        fill="none"
        viewBox="0 0 24 24"
        :stroke-width="svgStrokeWidth"
        :aria-hidden="isAccessible ? undefined : 'true'"
        v-bind="$attrs"
    >
        <title v-if="alt">{{ alt }}</title>
        <slot />
    </svg>
</template>
