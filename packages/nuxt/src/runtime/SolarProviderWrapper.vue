<script setup lang="ts">
import { SolarProvider } from '@solar-icons/vue/lib'
import { useRuntimeConfig } from '#imports'

const config = useRuntimeConfig()
const defaults = config.public?.solarIcons || {
    color: 'currentColor',
    size: 24,
    strokeWidth: 1.5,
    secondaryColor: 'currentColor',
    secondaryOpacity: 0.5,
}
</script>

<template>
    <SolarProvider v-bind="defaults">
        <slot />
    </SolarProvider>
</template>
