<template>
  <div>
    <h1>Test</h1>
    <SolarAltArrowDown />
    <UButton @click="toggleWeight">
      Toggle Weight
    </UButton>
    <SubIcons />
    <AppSubProvidedIcons>
      <AppSubIcons />
    </AppSubProvidedIcons>
  </div>
</template>

<script setup lang="ts">
const { config, setWeight } = useSolar()
const toggleWeight = () => {
  const weights = ['Broken', 'LineDuotone', 'Linear', 'Outline', 'Bold', 'BoldDuotone']
  const weightIndex = weights.indexOf(config.weight)
  const newWeight = weights[(weightIndex + 1) % weights.length]
  setWeight(newWeight)
}
</script>
