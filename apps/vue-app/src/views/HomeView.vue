<template>
  <SectionWrapper>
    <div class="flex flex-col gap-8 w-full">
      <div class="flex flex-row items-center justify-between gap-2 w-full py-12">
        <div class="flex flex-col gap-2">
          <h1 class="text-4xl font-bold">Solar Icons Gallery</h1>
          <p class="text-muted-foreground">
            Explore a collection of Solar Icons in different styles and sizes.
          </p>
        </div>
      </div>
      <!-- Divider -->
      <div class="border-b border-border border-dashed w-full py-4"></div>

      <Card class="w-full h-fit bg-muted/30 backdrop-blur-lg shadow-xs border-border/30">
        <CardContent class="space-y-6">
          <div class="flex flex-row gap-2 justify-between flex-wrap">
            <!-- Color Setting -->
            <GalColorPicker :color="config.color" @update:color="setColor" />

            <!-- Size Setting -->
            <div class="flex flex-col min-w-32 space-y-3">
              <Label class="text-sm font-medium"
                >Size: {{ typeof config.size === 'number' ? config.size : 24 }}px</Label
              >
              <Slider
                :model-value="[typeof config.size === 'number' ? config.size : 24]"
                :min="16"
                :max="64"
                :step="1"
                @update:model-value="handleSizeChange"
                class="w-full"
              />
            </div>

            <!-- Stroke Width Setting -->
            <div class="flex flex-col min-w-32 space-y-3" :class="{ 'opacity-30 pointer-events-none': !isLinearLike }">
              <Label class="text-sm font-medium">Stroke Width: {{ strokeWidth }}</Label>
              <Slider
                :model-value="[strokeWidth]"
                :min="0.5"
                :max="4"
                :step="0.1"
                :disabled="!isLinearLike"
                @update:model-value="strokeWidth = ($event[0] ?? 1.5)"
                class="w-full"
              />
            </div>

            <!-- Style Setting -->
            <GalStyle :weight="config.weight" @update:weight="handleWeightChange" />

            <!-- Mirrored Setting -->
            <div class="flex items-center space-x-2">
              <Checkbox
                id="mirrored"
                :checked="config.mirrored"
                @update:model-value="handleMirroredChange"
              />
              <Label for="mirrored" class="text-sm font-medium">Mirrored</Label>
            </div>

             <!-- Reset Button -->
            <Button @click="resetSettings" variant="outline">
              <Restart class="mr-2 h-4 w-4" />
              Reset Settings
            </Button>
          </div>

          <!-- Duotone Controls -->
          <div v-if="isDuotone" class="mt-6 pt-6 border-t border-border/30">
            <div class="flex items-center gap-2 mb-4">
              <span class="text-sm font-semibold text-blue-400 uppercase tracking-wide">
                Duotone CSS-vars
              </span>
              <span class="text-xs text-muted-foreground bg-muted/50 px-2 py-0.5 rounded">
                --solar-duotone-color / --solar-duotone-opacity
              </span>
            </div>
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
              <div class="flex flex-col space-y-2">
                <Label class="text-sm font-medium">
                  Accent Color: <span class="text-blue-400 font-mono text-xs">{{ duotoneColor }}</span>
                </Label>
                <div class="flex items-center gap-3">
                  <input
                    v-model="duotoneColor"
                    type="color"
                    class="w-10 h-10 rounded-lg cursor-pointer border-0 bg-transparent"
                  />
                  <input
                    v-model="duotoneColor"
                    type="text"
                    class="flex-1 bg-background/50 border border-border/50 rounded-lg px-3 py-2 text-foreground text-sm font-mono"
                  />
                  <Button
                    variant="ghost"
                    size="sm"
                    class="text-xs"
                    @click="duotoneColor = typeof config.color === 'string' ? config.color : '#000000'"
                  >
                    reset
                  </Button>
                </div>
              </div>
              <div class="flex flex-col space-y-2">
                <Label class="text-sm font-medium">
                  Accent Opacity: <span class="text-blue-400">{{ duotoneOpacity }}</span>
                </Label>
                <Slider
                  :model-value="[duotoneOpacity]"
                  :min="0"
                  :max="1"
                  :step="0.05"
                  @update:model-value="duotoneOpacity = ($event[0] ?? 0.5)"
                />
                <div class="flex justify-between text-xs text-muted-foreground">
                  <span>0</span>
                  <span>0.5 (default)</span>
                  <span>1</span>
                </div>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>

      <!-- Main Content - Virtualized Grid -->
      <div ref="mainContainerRef" class="flex-1 flex flex-col">
        <div class="text-sm text-muted-foreground mb-4">
          Showing {{ list.length }} icons ({{ columnsCount }} columns)
        </div>

        <!-- Virtualized Container -->
        <div
          ref="parentRef"
          class="w-full overflow-auto border border-border/30 rounded-lg"
          :style="{
            height: `${gridHeight}px`,
            '--solar-duotone-color': duotoneColor,
            '--solar-duotone-opacity': duotoneOpacity,
          }"
        >
          <div
            :style="{
              height: `${totalSize}px`,
              width: '100%',
              position: 'relative',
            }"
          >
            <!-- Virtualized Rows -->
            <div
              v-for="virtualRow in virtualItems"
              :key="virtualRow.index"
              :style="{
                position: 'absolute',
                top: 0,
                left: 0,
                width: '100%',
                height: `${virtualRow.size}px`,
                transform: `translateY(${virtualRow.start}px)`,
                display: 'flex',
                gap: '8px',
                padding: '8px',
              }"
            >
              <!-- Icons in this row -->
              <div v-for="colIndex in columnsCount" :key="colIndex" class="flex-1">
                <div
                  v-if="getIconAtPosition(virtualRow.index, colIndex - 1)"
                  class="hover:shadow-md transition-all cursor-pointer group size-28 rounded-md hover:border-fuchsia-800 bg-muted/30 backdrop-blur-lg border border-border/30 mx-auto"
                  @click="copyIconName(getIconAtPosition(virtualRow.index, colIndex - 1)![0])"
                >
                  <div class="flex flex-col items-center justify-between size-full">
                    <div class="w-full flex-1 flex items-center justify-center">
                      <div>
                        <component :is="getIconAtPosition(virtualRow.index, colIndex - 1)![1]" :stroke-width="isLinearLike ? strokeWidth : undefined" />
                      </div>
                    </div>
                    <p
                      class="text-xs text-center group-hover:text-foreground transition-colors font-extralight text-muted-foreground truncate p-1 w-full"
                    >
                      {{ toKebab(getIconAtPosition(virtualRow.index, colIndex - 1)![0]) }}
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </SectionWrapper>
</template>

<script setup lang="ts">
import { Restart } from '@solar-icons/vue'

import * as solar from '@solar-icons/vue'
import { useSolar } from '@solar-icons/vue/lib'
import type { IconWeight } from '@solar-icons/vue/lib'

import { Button } from '@/components/ui/button'
import { Card, CardContent } from '@/components/ui/card'
import { Label } from '@/components/ui/label'
import { Slider } from '@/components/ui/slider'
import { Checkbox } from '@/components/ui/checkbox'
import GalColorPicker from '@/components/gal/GalColorPicker.vue'
import GalStyle from '@/components/gal/GalStyle.vue'
import SectionWrapper from '@/components/app/SectionWrapper.vue'

import { useVirtualizer } from '@tanstack/vue-virtual'
import { computed, ref, onMounted, onUnmounted } from 'vue'
import { toast } from 'vue-sonner'

const { config, setConfig, setWeight, setSize, setColor } = useSolar()

const duotoneColor = ref('#60a5fa')
const duotoneOpacity = ref(0.5)
const strokeWidth = ref(1.5)

const isDuotone = computed(
    () => config.value.weight === 'BoldDuotone' || config.value.weight === 'LineDuotone',
)
const isLinearLike = computed(
    () => config.value.weight === 'Linear' || config.value.weight === 'LineDuotone' || config.value.weight === 'Broken',
)

const list = Object.entries(solar).filter(([key]) => key !== 'default')

// Container refs
const parentRef = ref<HTMLElement | null>(null)
const mainContainerRef = ref<HTMLElement | null>(null)

// Dynamic height calculation
const gridHeight = ref(500)

// Calculate columns based on container width
const containerWidth = ref(800) // Default width
const columnsCount = computed(() => {
  const iconWidth = 112 + 8 // 28 * 4 (size-28 = 112px) + gap
  return Math.floor(containerWidth.value / iconWidth) || 1
})

// Calculate total rows needed
const totalRows = computed(() => Math.ceil(list.length / columnsCount.value))

// Resize observers
let resizeObserver: ResizeObserver | null = null
let resizeObserverMain: ResizeObserver | null = null

// Handle window resize
const handleWindowResize = () => {
  calculateGridHeight()
}

const calculateGridHeight = () => {
  const container = mainContainerRef.value
  if (!container) return

  const rect = container.getBoundingClientRect()
  const availableHeight = window.innerHeight - rect.top - 32 // 32px margin
  gridHeight.value = Math.max(300, availableHeight) // minimum 300px
}

onMounted(() => {
  // Setup container width observer
  if (parentRef.value) {
    containerWidth.value = parentRef.value.clientWidth

    resizeObserver = new ResizeObserver((entries) => {
      for (const entry of entries) {
        containerWidth.value = entry.contentRect.width
      }
    })
    resizeObserver.observe(parentRef.value)
  }

  // Setup dynamic height calculation
  if (mainContainerRef.value) {
    calculateGridHeight()

    resizeObserverMain = new ResizeObserver(calculateGridHeight)
    resizeObserverMain.observe(mainContainerRef.value)
  }

  // Add window resize listener
  window.addEventListener('resize', handleWindowResize)
})

onUnmounted(() => {
  if (resizeObserver) {
    resizeObserver.disconnect()
  }
  if (resizeObserverMain) {
    resizeObserverMain.disconnect()
  }
  window.removeEventListener('resize', handleWindowResize)
})

// Virtualizer setup
const rowVirtualizer = computed(() =>
  useVirtualizer({
    count: totalRows.value,
    getScrollElement: () => parentRef.value,
    estimateSize: () => 136, // 28 * 4 (size-28) + padding
    overscan: 5,
  }),
)

const virtualItems = computed(() => rowVirtualizer.value.value.getVirtualItems())
const totalSize = computed(() => rowVirtualizer.value.value.getTotalSize())

// Helper function to get icon at specific grid position
const getIconAtPosition = (rowIndex: number, colIndex: number) => {
  const flatIndex = rowIndex * columnsCount.value + colIndex
  return flatIndex < list.length ? list[flatIndex] : null
}

// Existing functions
const resetSettings = () => {
  setConfig({
    color: '#000000',
    size: 24,
    weight: 'Linear',
    mirrored: false,
  })
}

const handleSizeChange = (value: number[] | undefined) => {
  setSize(value?.[0] ?? 24)
}

const handleWeightChange = (value: IconWeight) => {
  setWeight(value)
}

const handleMirroredChange = (value: boolean | 'indeterminate') => {
  setConfig({ mirrored: value === 'indeterminate' ? false : value })
}

const toKebab = (input: string): string => {
  return input
    .replace(/([a-z])([A-Z0-9])/g, '$1-$2')
    .replace(/([A-Z0-9])([A-Z][a-z])/g, '$1-$2')
    .toLowerCase()
}

const copyIconName = (iconName: string) => {
  navigator.clipboard
    .writeText(toKebab(iconName))
    .then(() => {
      toast('Icon name copied', {
        description: 'Name: ' + toKebab(iconName),
      })
    })
    .catch((err) => {
      console.error('Failed to copy:', err)
    })
}
</script>
