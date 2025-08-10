<template>
  <Popover>
    <PopoverTrigger as-child>
      <div class="flex items-center w-24">
        <Button variant="outline" class="rounded-r-none h-10">
          <Palette class="h-4 w-4" />
        </Button>
        <div 
          :style="{ backgroundColor: props.color }" 
          class="w-full border border-border rounded-r-md h-10"
        ></div>
      </div>
    </PopoverTrigger>
    <PopoverContent class="p-0 m-0 w-fit">
      <ChromePicker :model-value="modelValue" @update:model-value="onColorChange" />
    </PopoverContent>
  </Popover>
</template>

<script setup lang="ts">
import { Button } from "@/components/ui/button"
import { Palette } from "@solar-icons/vue"
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover"
import { ChromePicker } from 'vue-color'

const props = defineProps<{
  color?: string
}>()
const emit = defineEmits<{
  (e: 'update:color', color: string): void
}>()

const onColorChange = (newColor: { hex: string } | string) => {
  const hexColor = typeof newColor === 'string' ? newColor : newColor.hex
  emit('update:color', hexColor)
}
const modelValue = props.color == "currentColor" ? "#ffffff" : props.color
</script>