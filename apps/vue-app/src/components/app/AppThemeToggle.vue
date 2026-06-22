<template>
  <Button @click="toggleTheme" variant="outline">
    <SunBold v-if="mode === 'light'" />
    <MoonBold v-else />
  </Button>
</template>

<script setup lang="ts">
import { useColorMode } from '@vueuse/core'
import { SunBold, MoonBold } from '@solar-icons/vue'
import { Button } from '@/components/ui/button'

const mode = useColorMode()

const toggleTheme = () => {
  mode.value = mode.value === 'light' ? 'dark' : 'light'
}
</script>
