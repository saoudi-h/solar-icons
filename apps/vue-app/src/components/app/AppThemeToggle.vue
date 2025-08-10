<template>
    <Button @click="toggleTheme" variant="outline">
        <Sun v-if="mode === 'light'" />
        <Moon v-else />
    </Button>
</template>

<script setup lang="ts">
import { useColorMode } from '@vueuse/core'
import { Sun, Moon } from '@solar-icons/vue'
import { Button } from '@/components/ui/button'

const mode = useColorMode()

const toggleTheme = () => {
    mode.value = mode.value === 'light' ? 'dark' : 'light'
}
</script>