<template>
  <div>basic</div>
  <div id="solar-size">
    size: {{ solar.config.size }}
  </div>
  <div id="solar-weight">
    weight: {{ solar.config.weight }}
  </div>
  <div id="solar-color">
    color: {{ solar.config.color }}
  </div>
  <div id="solar-mirrored">
    mirrored: {{ String(solar.config.mirrored) }}
  </div>
</template>

<script setup lang="ts">
import { useSolar } from '#solar-icons/lib'

const solar = useSolar()
</script>
