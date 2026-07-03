<script setup lang="ts">
import { SolarProvider } from '@solar-icons/vue/lib'
import { useRuntimeConfig } from '#imports'

const config = useRuntimeConfig()
const defaults = config.public?.solarIcons || {}
</script>

<template>
    <SolarProvider v-bind="defaults">
        <slot />
    </SolarProvider>
</template>
