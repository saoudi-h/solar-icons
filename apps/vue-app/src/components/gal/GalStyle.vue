<template>
  <Select @update:model-value="onWeightChange">
    <SelectTrigger>
      <SelectValue :placeholder="modelValue || 'Select style'" />
    </SelectTrigger>
    <SelectContent>
      <SelectItem v-for="weight in weights" :key="weight" :value="weight">
        {{ weight }}
      </SelectItem>
    </SelectContent>
  </Select>
</template>

<script setup lang="ts">
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select'
import type { IconWeight } from '@solar-icons/vue/lib'

const weights: IconWeight[] = ['Linear', 'Outline', 'BoldDuotone', 'Bold', 'LineDuotone', 'Broken']

defineProps<{
  weight?: IconWeight
}>()

const emit = defineEmits<{
  (e: 'update:weight', weight: IconWeight): void
}>()

const onWeightChange = (newWeight: string) => {
  emit('update:weight', newWeight as IconWeight)
}
</script>
