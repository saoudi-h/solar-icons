<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
    name: 'SolarProvider',
    inheritAttrs: false,
})
</script>

<script setup lang="ts">
import { watch } from 'vue'
import { createSolarIcons, provideSolarIconsContext } from './context'
import { SolarIconsConfig } from './types';

const props = withDefaults(
    defineProps<Partial<SolarIconsConfig>>(),
    {
        color: 'currentColor',
        size: '1em',
        weight: 'Linear',
        mirrored: false,
    }
)

const context = createSolarIcons({
    color: props.color,
    size: props.size,
    weight: props.weight,
    mirrored: props.mirrored,
})

provideSolarIconsContext(context)

watch(
  () => [props.color, props.size, props.weight, props.mirrored],
  () => {
    context.setConfig({
      color: props.color,
      size: props.size,
      weight: props.weight,
      mirrored: props.mirrored,
    })
  },
  { flush: 'post' }
)
</script>

<template>
    <slot />
</template>
