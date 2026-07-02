<template>
  <Button @click="toggleTheme" variant="outline">
    <SunBoldIcon v-if="mode === 'light'" />
    <MoonBoldIcon v-else />
  </Button>
</template>

<script setup lang="ts">
import { useColorMode } from '@vueuse/core'
import { SunBoldIcon, MoonBoldIcon } from '@solar-icons/vue'
import { Button } from '@/components/ui/button'

const mode = useColorMode()

const toggleTheme = () => {
  mode.value = mode.value === 'light' ? 'dark' : 'light'
}
</script>
