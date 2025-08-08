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
  
  // Définir les poids disponibles
  const weights: IconWeight[] = ['Linear', 'Outline', 'BoldDuotone', 'Bold', 'LineDuotone', 'Broken']
  
  // Définir les props
  const props = defineProps<{
    weight?: IconWeight
  }>()
  
  // Définir l'événement personnalisé
  const emit = defineEmits<{
    (e: 'update:weight', weight: IconWeight): void
  }>()
  
  // Méthode appelée lors du changement de poids
  const onWeightChange = (newWeight: string) => {
    // Émettre l'événement avec la nouvelle valeur
    emit('update:weight', newWeight as IconWeight)
  }
  </script>