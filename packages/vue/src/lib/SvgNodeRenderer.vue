<script setup lang="ts">
import type { PropType } from 'vue'
import type { IconNode } from './types'

defineOptions({
  name: 'SvgNodeRenderer'
})

defineProps({
  node: {
    type: Array as unknown as PropType<IconNode>,
    required: true
  }
})
</script>

<template>
  <component :is="node[0]" v-bind="node[1]">
    <SvgNodeRenderer
      v-for="(childNode, index) in node[2]"
      :key="index"
      :node="childNode"
    />
  </component>
</template>