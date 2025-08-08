<template>
      <div class="flex flex-col gap-8 w-full">
        
        <div class="flex flex-row items-center justify-between gap-2 w-full py-12"> 
          <div class="flex flex-col gap-2">
            <h1 class="text-4xl font-bold">Solar Icons Gallery</h1>
            <p class="text-muted-foreground">Explore a collection of Solar Icons in different styles and sizes.</p>
          </div>
        </div>

        <div class="w-full flex flex-row items-center justify-between gap-2">
            <UButton
                label="Reset"
                variant="outline"
                @click="resetSettings"
            />
            <USlider 
                class="max-w-24"
                :default-value="config.size"
                :min="16"
                :max="64"
                :step="1"
                :label="`Size: ${config.size}`"
                @update:model-value="handleSizeChange"
            />
            <USelect
                :default-value="config.weight"
                :items="WEIGHTS"
                :label="`Weight: ${config.weight}`"
                @update:model-value="handleWeightChange"
            />
        </div>
        <!-- Divider -->
        <div class="border-b border-border border-dashed w-full py-4"></div>
        
      
          <div
            class="flex flex-row flex-wrap gap-4 w-full"
          >
              <div
                v-for="icon in list"
                :key="icon[0]"
              >
              <div class="flex flex-col gap-2 size-32">

                  <component :is="icon[1]" />
                  {{ icon[0] }}
                </div>
            </div>
          </div>
    </div>
</template>
  
  <script setup lang="ts">

  
  import * as solar from '@solar-icons/vue'
  import { useSolar } from '@solar-icons/vue/lib'
  import type { IconWeight } from '@solar-icons/vue/lib'
  
  const { config, setConfig, setWeight, setSize } = useSolar()
  
  const list = Object.entries(solar).filter(([key]) => key !== 'default')

  

  const WEIGHTS:IconWeight[] = [
    'Broken',
    'LineDuotone',
    'Linear',
    'Outline',
    'Bold',
    'BoldDuotone',
  ]
  
  // Existing functions
  const resetSettings = () => {
    setConfig({
      color: '#000000',
      size: 24,
      weight: 'Linear',
      mirrored: false
    })
  }
  
  const handleSizeChange = (value: number[] | undefined) => {
    setSize(value?.[0] ?? 24)
  }
  
  const handleWeightChange = (value: IconWeight) => {
    console.log("new weight : ", value)
    setWeight(value)
  }
  
  const handleMirroredChange = (value: boolean) => {
    setConfig({ mirrored: value })
  }
  
  const toKebab = (input: string): string => {
    return input
      .replace(/([a-z])([A-Z0-9])/g, '$1-$2')
      .replace(/([A-Z0-9])([A-Z][a-z])/g, '$1-$2')
      .toLowerCase()
  }
  
  </script>