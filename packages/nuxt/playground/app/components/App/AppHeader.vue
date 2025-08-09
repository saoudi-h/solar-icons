<script setup lang="ts">
import type { NavigationMenuItem } from '@nuxt/ui'

const route = useRoute()

const items = computed<NavigationMenuItem[]>(() => [
  {
    label: 'Solar Icons',
    to: 'https://solar-icons.vercel.app',
    target: '_blank',
  },
  {
    label: 'Sub Provider',
    to: '/sub-provider',
    active: route.path.startsWith('/sub-provider'),
  },
  {
    label: 'Github',
    to: 'https://github.com/saoudi-h/solar-icons',
    target: '_blank',
  },
])
</script>

<template>
  <AppContainer>
    <UHeader>
      <template #title>
        <Logo class="h-6 w-auto" />
      </template>

      <UNavigationMenu :items="items" />

      <template #right>
        <UColorModeButton />

        <UTooltip
          text="Open on GitHub"
          :kbds="['meta', 'G']"
        >
          <UButton
            color="neutral"
            variant="ghost"
            to="https://github.com/nuxt/ui"
            target="_blank"
            icon="i-simple-icons-github"
            aria-label="GitHub"
          />
        </UTooltip>
      </template>
    </UHeader>
  </AppContainer>
</template>
