<script setup lang="ts">
import { computed } from 'vue'
import { DEFAULT_SOLAR, useSolar } from './context'
import type { IconNode, SolarIcons } from './types'
import SvgNodeRenderer from './SvgNodeRenderer.vue'

interface Props extends SolarIcons {
    iconNodes?: IconNode[]
}

const props = withDefaults(defineProps<Props>(), {
    iconNodes: () => [],
})

const { config } = useSolar()

const finalColor = computed(() => props.color ?? config.color ?? DEFAULT_SOLAR.color)
const finalSize = computed(() => props.size ?? config.size ?? DEFAULT_SOLAR.size)
const finalMirrored = computed(() =>
    props.mirrored || config.mirrored || DEFAULT_SOLAR.mirrored
)

</script>

<template>
    <svg
        xmlns="http://www.w3.org/2000/svg"
        :width="finalSize"
        :height="finalSize"
        :color="finalColor"
        fill="none"
        viewBox="0 0 24 24"
        :transform="finalMirrored ? 'scale(-1, 1)' : 'none'"
        v-bind="$attrs"
    >
        <title v-if="alt">{{ alt }}</title>

        <SvgNodeRenderer
           v-for="(node, index) in iconNodes"
           :key="index"
           :node="node"
       />

        <slot />
    </svg>
</template>
