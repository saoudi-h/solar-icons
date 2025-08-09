<template>
  <div class="flex flex-col gap-4 border border-border/20 p-4 mx-auto max-w-2xl">
    <h2>SubProvidedIcons</h2>

    <SolarProvider
      color="red"
      size="96"
      weight="Broken"
    >
      <slot />
    </SolarProvider>
  </div>
</template>

<script setup lang="ts">
</script>
