<script setup lang="ts">
const { config, setWeight } = useSolar()
const toggleWeight = () => {
  const weights = ['Broken', 'LineDuotone', 'Linear', 'Outline', 'Bold', 'BoldDuotone']
  const weightIndex = weights.indexOf(config.weight)
  const newWeight = weights[(weightIndex + 1) % weights.length]
  setWeight(newWeight)
}
</script>

<template>
  <div>
    <div class="flex flex-row flex-wrap gap-4 w-full">
      <SolarAltArrowDown />
      <SolarAltArrowLeft />
      <SolarAltArrowRight />
    </div>
    <UButton @click="toggleWeight">
      Toggle Weight
    </UButton>
  </div>
</template>
